console.log(1);
const socket = new WebSocket('ws://127.0.0.1:1234');
socket.addEventListener('open', function (event)
{
    console.log('WebSocket连接已建立');
    init();
    setCurrentUsername();
});
socket.onmessage = function (event)
{
    const data = JSON.parse(event.data);
};