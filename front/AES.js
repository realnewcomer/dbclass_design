var aesKey = null;
function sendAES()
{
    function generateAESKey()
    {
        return CryptoJS.lib.WordArray.random(256 / 8); 
    }
    aesKey = generateAESKey();
    base64Key = CryptoJS.enc.Base64.stringify(aesKey);
    const msg =
    {
        type: 'AES',
        base64Key: RSA(base64Key),
    };
    socket.send(JSON.stringify(msg));
    document.getElementById('loading').style.display = 'none';
    if (flag)
    {
        document.getElementById('bg').classList.add('fade');
    }
}
function encryptAES(message, key)
{
    return CryptoJS.AES.encrypt(message, key,
    {
        mode: CryptoJS.mode.ECB,
        padding: CryptoJS.pad.Pkcs7
    }).toString();
}
function decryptAES(encryptedMessage, key)
{
    const encryptedBytes = CryptoJS.enc.Base64.parse(encryptedMessage);
    const decrypted = CryptoJS.AES.decrypt({
        ciphertext: encryptedBytes
    }, key,
    {
        mode: CryptoJS.mode.ECB,
        padding: CryptoJS.pad.Pkcs7
    });
        return decrypted.toString(CryptoJS.enc.Utf8);
}
function arrayBufferToBase64(buffer)
{
    const bytes = new Uint8Array(buffer);
    const binary = Array.from(bytes).map(byte => String.fromCharCode(byte)).join('');
    return btoa(binary);
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