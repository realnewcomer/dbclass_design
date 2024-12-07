const crypto = require('crypto');
const fs = require('fs');
const NodeRSA = require('node-jsencrypt');
const db = require("./db.js");
const rsa = new NodeRSA();
const AES = require("./AES.js")
const privateKey = loadPrivateKey();
const session_ws = new Map();
//以下四个const虽然写name，但其实是mid,uid
const token_username = new Map();//用来验证该用户是否已登录
const token_managername = new Map();//验证管理员是否登录,返回管理员name
const ws_username = new Map();
const ws_managername = new Map();
var ws = require("ws");
var server = new ws.Server({
    port: 1234
});

videoChunks = [];
musicChunks = [];
function loadPrivateKey()
{
    return fs.readFileSync('private.pem', 'utf8');
}
rsa.setPrivateKey(privateKey);
db.connectDb();
server.on("connection", function (wss)
{
    console.log(1);
    wss.on("message", function (data)
    {
        const msg = JSON.parse(data);
        console.log(msg);
        if (msg.type === "userLogin")
        {
            const sessionKey_first = keySessionKeyValueWss(wss, session_ws)
            let uid = AES.decryptAES(msg.uid, sessionKey_first)
            let cipher = AES.decryptAES(msg.cipher, sessionKey_first)
            db.selectData('Users',columns=['uid,cipher'],conditions='uid='+uid).then((row) =>
            {
                if (row[0].cipher === cipher)
                {
                    if (findusername(uid, token_username))
                    {
                        wss.send(JSON.stringify({
                            type: "userLogin",
                            success: false,
                            reason: 'exist'
                        }));
                    }
                    else
                    {
                        DeletekeySessionKeyValueWss(wss, session_ws)
                        const token = generateRandomString(15);
                        console.log(token)
                        console.log('登录成功');
                        token_username.set(token, uid)
                        wss.send(JSON.stringify({
                            type: "userLogin",
                            success: true,
                            token: AES.encryptAES(token, sessionKey_first)
                        }));
                    }
                }
                else
                {
                    wss.send(JSON.stringify({
                        type: "userLogin",
                        success: false,
                        reason: 'wrong'
                    }));
                }
            }).catch((err) =>
            {
                console.error(err);
                wss.send(JSON.stringify({
                    type: "userLogin",
                    success: false
                }));
            });
        }
        if (msg.type === "managerLogin")
        {
            const sessionKey_first = keySessionKeyValueWss(wss, session_ws)
            let mid = AES.decryptAES(msg.mid, sessionKey_first)
            let cipher = AES.decryptAES(msg.cipher, sessionKey_first)
            db.selectData('manager',columns=['mid,cipher'],conditions='mid='+mid).then((row) =>
            {
                if (row[0].cipher === cipher)
                {
                    if (findusername(mid, token_managername))
                    {
                        wss.send(JSON.stringify({
                            type: "managerLogin",
                            success: false,
                            reason: 'exist'
                        }));
                    }
                    else
                    {
                        DeletekeySessionKeyValueWss(wss, session_ws)
                        const token = generateRandomString(15);
                        console.log(token)
                        console.log('登录成功');
                        token_managername.set(token, mid)
                        wss.send(JSON.stringify({
                            type: "managerLogin",
                            success: true,
                            token: AES.encryptAES(token, sessionKey_first)
                        }));
                    }
                }
                else
                {
                    wss.send(JSON.stringify({
                        type: "managerLogin",
                        success: false,
                        reason: 'wrong'
                    }));
                }
            }).catch((err) =>
            {
                console.error(err);
                wss.send(JSON.stringify({
                    type: "managerLogin",
                    success: false
                }));
            });
        }
        if (msg.type === "userRegister")
        {
            const sessionKey_first = keySessionKeyValueWss(wss, session_ws);
            try
            {
                let uid = AES.decryptAES(msg.uid, sessionKey_first);
                let cipher = AES.decryptAES(msg.cipher, sessionKey_first);
                if (!isValidUsername(uid))
                {
                    throw new Error('Invalid username or password format.');
                }
                db.selectData('Users',columns=['uid'],conditions='uid='+uid).then((res) =>
                {
                    if (res.length != 0)
                    {
                        console.log("用户" + uid + "已存在");
                        wss.send(JSON.stringify({ type: "register", success: false }));
                    }
                    else
                    {
                        return db.insertData('Users',['uid','cipher'],[uid,cipher]);
                    }
                }).then(() =>
                {
                    console.log("用户" + uid + "注册成功");
                    wss.send(JSON.stringify({ type: "register", success: true }));
                }).catch((err) =>
                {
                    console.error("注册失败:", err.message);
                    wss.send(JSON.stringify({ type: "register", success: false }));
                });
            } catch (err)
            {
                console.error("解密或验证失败:", err.message);
                wss.send(JSON.stringify({ type: "register", success: false }));
            }
        }
        if (msg.type === "managerRegister")
        {
            const sessionKey_first = keySessionKeyValueWss(wss, session_ws);
            try
            {
                let mid = AES.decryptAES(msg.mid, sessionKey_first);
                let cipher = AES.decryptAES(msg.cipher, sessionKey_first);
                if (!isValidUsername(mid))
                {
                    throw new Error('Invalid username or password format.');
                }
                db.selectData('manager',columns=['mid'],conditions='mid='+mid).then((res) =>
                {
                    if (res.length != 0)
                    {
                        console.log("用户" + mid + "已存在");
                        wss.send(JSON.stringify({ type: "register", success: false }));
                    }
                    else
                    {
                        return db.insertData('manager',['mid','cipher'],[mid,cipher]);
                    }
                }).then(() =>
                {
                    console.log("管理员" + mid + "注册成功");
                    wss.send(JSON.stringify({ type: "register", success: true }));
                }).catch((err) =>
                {
                    console.error("管理员注册失败:", err.message);
                    wss.send(JSON.stringify({ type: "register", success: false }));
                });
            } catch (err)
            {
                console.error("管理员解密或验证失败:", err.message);
                wss.send(JSON.stringify({ type: "register", success: false }));
            }
        }
        if (msg.type === "getManagerName")
        {
            try
            {
                let token = msg.token;
                let mid = from_token_find_managername(token,token_managername);
                if(mid)
                {
                    const msg = 
                    {
                        type: 'managerName',
                        isNull: false,
                        managerName: mid,
                        success: true
                    }
                    console.log(msg);
                    wss.send(JSON.stringify(msg));
                }
                else
                {
                    const msg = 
                    {
                        type: 'managerName',
                        isNull: true,
                        success: true
                    }
                    wss.send(JSON.stringify(msg));
                }
            }catch(err){
                console.error("根据token获取mid失败", err.message);
                wss.send(JSON.stringify({ type: "managerName", success: false }));
            }
        }
        if (msg.type === "getUserInfo")
        {
            try{
                
            }catch(err){

            }
        }
        if (msg.type === "chatmsg")
        {
            try
            {
                let message = AES.decryptAES(msg.message, keySessionKeyValueWss(wss, session_ws));
                let tempname = ws_username.get(wss);
                for (const [key, value] of session_ws)
                {
                    let tempws = value;
                    let tempkey = key;
                    const msg =
                    {
                        type: 'chatmsg',
                        username: AES.encryptAES(tempname, tempkey),
                        message: AES.encryptAES(message, tempkey)
                    }
                    if (tempws.readyState === ws.OPEN)
                    {
                        try
                        {
                            tempws.send(JSON.stringify(msg));
                        }
                        catch (error)
                        {
                            console.error('Error while sending message:', error);
                        }
                    }
                }
            }
            catch (error)
            {
                console.error('error chatmsg', error);
            }
        }
        if (msg.type === 'image')
        {
            try
            {
                let message = AES.decryptAES(msg.imagedata, keySessionKeyValueWss(wss, session_ws));
                let tempname = ws_username.get(wss);
                for (const [key, value] of session_ws)
                {
                    let tempws = value;
                    let tempkey = key;
                    const msg =
                    {
                        type: 'image',
                        username: AES.encryptAES(tempname, tempkey),
                        message: AES.encryptAES(message, tempkey)
                    }
                    if (tempws.readyState === ws.OPEN)
                    {
                        try
                        {
                            tempws.send(JSON.stringify(msg));
                        }
                        catch (error)
                        {
                            console.error('Error while sending image:', error);
                        }
                    }
                }
            }
            catch (error)
            {
                console.error('error image', error);
            }
        }
        if (msg.type === 'firstmsg')
        {
            try
            {
                let tokenfirst = msg.token;
                if (token_username.has(tokenfirst))
                {
                    ws_username.set(wss, token_username.get(tokenfirst));
                    var onlineUsers = Array.from(ws_username.values());
                    const msg =
                    {
                        type: 'userlist',
                        onlineUsers: onlineUsers
                    }
                    for (const key of ws_username.keys())
                    {
                        key.send(JSON.stringify(msg));
                    }
                }
                else if (token_managername.has(tokenfirst))
                {
                    ws_managername.set(wss, token_managername.get(tokenfirst));
                    var onlineUsers = Array.from(ws_managername.values());
                    const msg =
                    {
                        type: 'userlist',
                        onlineUsers: onlineUsers
                    }
                    for (const key of ws_managername.keys())
                    {
                        key.send(JSON.stringify(msg));
                    }
                }
                else
                {
                    wss.send(JSON.stringify({
                        type: "unlogin",
                    }));
                    let tmpsession = null
                    for (let [key, value] of session_ws)
                    {
                        if (value === wss)
                        {
                            tmpsession = key;
                            break;
                        }
                    }
                    session_ws.delete(tmpsession);
                }
            }
            catch (error)
            {
                console.error('error firstmsg', error);
            }
        }
        if (msg.type === 'AES')
        {
            try
            {
                const base64Key = rsa.decrypt(msg.base64Key, 'utf8');;
                sessionKey = Buffer.from(base64Key, 'base64');
                console.log(sessionKey);
                session_ws.set(sessionKey, wss);
            }
            catch (error)
            {
                console.error('error aes', error);
            }
        }
        if (msg.type === 'video')
        {
            let message = AES.decryptAES(msg.message, keySessionKeyValueWss(wss, session_ws));
            let tempname = ws_username.get(wss);
            try
            {
                if (message === 'EOF')
                {
                    const videoData = Buffer.concat(videoChunks);
                    fs.writeFile('received_video.mp4', videoData, function (err)
                    {
                        if (err)
                        {
                            console.error('写入视频文件时出错：', err);
                        }
                        else
                        {
                            console.log('视频文件已接收并保存。');
                            fs.readFile('received_video.mp4', function (err, data)
                            {
                                if (err)
                                {
                                    console.error('读取视频文件时出错：', err);
                                }
                                else
                                {
                                    for (const [key, value] of session_ws)
                                    {
                                        let tempws = value;
                                        let tempkey = key;
                                        const msg =
                                        {
                                            type: 'video',
                                            username: AES.encryptAES(tempname, tempkey),
                                            message: AES.encryptAES(arrayBufferToBase64(data), tempkey)
                                        }
                                        extractVideoCover()
                                            .then(coverBase64 =>
                                                {
                                                if (tempws.readyState === ws.OPEN)
                                                {
                                                    try
                                                    {
                                                        msg.cover = AES.encryptAES(coverBase64, tempkey);
                                                        tempws.send(JSON.stringify(msg));
                                                    }
                                                    catch (error)
                                                    {
                                                        console.error('Error while sending image:', error);
                                                    }
                                                }
                                            })
                                            .catch(error =>
                                                {
                                                console.error('Error extracting video cover:', error);
                                            });
                                    }
                                }
                            });
                        }
                    });
                    videoChunks = [];
                } else
                {
                    videoChunks.push(new Uint8Array(base64ToArrayBuffer(message)));
                }
            }
            catch (error)
            {
                console.error('error video', error);
            }
        }
        if (msg.type === 'music')
        {
            let message = AES.decryptAES(msg.message, keySessionKeyValueWss(wss, session_ws));
            let tempname = ws_username.get(wss);
            try
            {
                if (message === 'EOF')
                {
                    const musicData = Buffer.concat(musicChunks);
                    fs.writeFile('received_music.mp3', musicData, async function (err)
                    {
                        if (err)
                        {
                            console.error('写入音乐文件时出错：', err);
                        } else
                        {
                            for (const [key, value] of session_ws)
                            {
                                let tempws = value;
                                let tempkey = key;
                                const msg =
                                {
                                    type: 'music',
                                    username: AES.encryptAES(tempname, tempkey),
                                    message: AES.encryptAES(arrayBufferToBase64(musicData), tempkey)
                                }
                                const base64 = await getMusicCoverBase64();
                                if (tempws.readyState === ws.OPEN)
                                {
                                    try
                                    {
                                        msg.cover = AES.encryptAES(base64, tempkey);
                                        tempws.send(JSON.stringify(msg));
                                    }
                                    catch (error)
                                    {
                                        console.error('Error while sending image:', error);
                                    }
                                }
                            }
                        }
                    });
                    musicChunks = [];
                } else
                {
                    musicChunks.push(new Uint8Array(base64ToArrayBuffer(message)));
                }
            }
            catch (error)
            {
                console.error('error music', error);
            }
        }
    });
    wss.on('close', function close()
    {
        console.log('Client disconnected');
        try
        {
            let tmpsession = null;
            let tmptoken = null;
            for (let [key, value] of session_ws)
            {
                if (value === wss)
                {
                    tmpsession = key;
                    break;
                }
            }
            if (tmpsession !== null)
            {
                session_ws.delete(tmpsession);
            }
            let tmpname = ws_username.get(wss);
            console.log(tmpname);
            if (typeof tmpname !== 'undefined'){
                ws_username.delete(wss);
                for (let [key, value] of token_username)
                {
                    if (value === tmpname)
                    {
                        tmptoken = key;
                        break;
                    }
                }
                if (tmptoken !== null)
                {
                    token_username.delete(tmptoken);
                }
            }
            else{
                tmpname = ws_managername.get(wss);
                console.log(tmpname);
                ws_managername.delete(wss);
                for (let [key, value] of token_managername)
                {
                    if (value === tmpname)
                    {
                        tmptoken = key;
                        break;
                    }
                }
                if (tmptoken !== null)
                {
                    token_managername.delete(tmptoken);
                    console.log('管理员已断开')
                }
            }
            //获取在线用户列表才需要，目前不需要
            // var onlineusers = array.from(ws_username.values());
            // const msg =
            // {
            //     type: 'userlist',
            //     onlineusers: onlineusers
            // }
            // for (const key of ws_username.keys())
            // {
            //     key.send(json.stringify(msg));
            // }
        } catch (error)
        {
            console.error("Error handling close event:", error);
        }
    });
});
function DeletekeySessionKeyValueWss(wss, map)
{
    for (let [key, value] of map)
    {
        if (value === wss)
        {
            map.delete(key);
        }
    }
}
function keySessionKeyValueWss(wss, map)
{
    for (let [key, value] of map)
    {
        if (value === wss)
        {
            return key;
        }
    }
    return null;
}
function findusername(username, map)
{
    for (let [key, value] of map)
    {
        if (username === value)
            return 1
    }
    return 0
}
function from_token_find_managername(token,map)
{
    for (let [key, value] of map)
    {
        if (token === key)
            return value;
        else
            return 0
    }
    return 0
}

function generateRandomString(length)
{
    return crypto.randomBytes(Math.ceil(length / 2)).toString('hex').slice(0, length);
}
function isValidUsername(username)
{
    const usernamePattern = /^[a-zA-Z0-9]+$/;
    return username.length <= 15 && usernamePattern.test(username);
}
function base64ToArrayBuffer(base64)
{
    const binaryString = atob(base64);
    const bytes = new Uint8Array(binaryString.length);
    for (let i = 0; i < binaryString.length; i++)
    {
        bytes[i] = binaryString.charCodeAt(i);
    }
    return bytes.buffer;
}
function arrayBufferToBase64(buffer)
{
    const bytes = new Uint8Array(buffer);
    const binary = Array.from(bytes).map(byte => String.fromCharCode(byte)).join('');
    return btoa(binary);
}
const ffmpeg = require('fluent-ffmpeg');
ffmpeg.setFfprobePath('./ffprobe.exe');
ffmpeg.setFfmpegPath('./ffmpeg.exe');
async function extractVideoCover(base64EncodedVideo)
{
    const videoPath = 'received_video.mp4';
    return new Promise((resolve, reject) =>
    {
        ffmpeg(videoPath)
            .on('end', () =>
            {
                const coverBuffer = fs.readFileSync('temp_video.jpg');
                const coverBase64 = coverBuffer.toString('base64');
                resolve(coverBase64);
            })
            .on('error', (err) =>
            {
                reject(err);
            })
            .screenshots({
                count: 1,
                folder: '.',
                filename: 'temp_video.jpg'
            });
    });
}
async function getMusicCoverBase64()
{
    const base64 = await extractCoverToBase64();
    return base64;
}
async function hasAudioCover()
{
    return new Promise((resolve, reject) =>
    {
        ffmpeg.ffprobe('./received_music.mp3', (err, metadata) =>
        {
            if (err)
            {
                reject(false);
                return;
            }
            for (const stream of metadata.streams)
            {
                if
                (
                    stream.disposition &&
                    stream.disposition.attached_pic
                ) {
                    resolve(true);
                    return;
                }
            }
            resolve(false);
        });
    });
}
async function extractCoverToBase64()
{
    return new Promise((resolve, reject) =>
    {
        hasAudioCover()
            .then(hasCover =>
                {
                if (hasCover)
                {
                    ffmpeg('./received_music.mp3')
                        .on('error', (err) =>
                        {
                            reject(err);
                        })
                        .on('data', (data) =>
                        {
                        })
                        .on('end', () =>
                        {
                            fs.readFile('cover.jpg', (err, data) =>
                            {
                                if (err)
                                {
                                    reject(err);
                                    return;
                                }
                                base64 = data.toString('base64');
                                fs.unlinkSync('cover.jpg');
                                fs.unlinkSync('received_music.mp3');
                                resolve(base64);
                            });
                        })
                        .output('cover.jpg')
                        .run();
                }
                else
                {
                    fs.readFile('vinyl.png', (err, data) =>
                    {
                        if (err)
                        {
                            reject(err);
                            return;
                        }
                        base64 = data.toString('base64');
                        resolve(base64);
                    });
                }
            })
            .catch(err =>
                {
                fs.readFile('vinyl.png', (err, data) =>
                {
                    if (err)
                    {
                        reject(err);
                        return;
                    }
                    base64 = data.toString('base64');
                    resolve(base64);
                });
            });
    });
}