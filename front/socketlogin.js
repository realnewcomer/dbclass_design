console.log(1);
const socket = new WebSocket('ws://127.0.0.1:1234');
socket.addEventListener('open', function (event)
{
    console.log('WebSocket连接已建立');
    sendAES();
    init();
});
socket.onmessage = function (event)
{
    const data = JSON.parse(event.data);
    if (data.type === 'chatmsg')
    {
        showmsg(data);
    }
    if (data.type === 'image')
    {
        showimage(data);
    }
    if (data.type === 'userlist')
    {
        displayOnlineUsers(data);
    }
    if (data.type === 'video')
    {
        showvideo(data);
    }
    if (data.type === 'music')
    {
        showmusic(data);
    }
};