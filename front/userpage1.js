var urlParams = new URLSearchParams(window.location.search);
var token = urlParams.get('token');
if (!token)
{
    window.location.href = 'login.html';
}
function init()
{
    const msg =
    {
        type: 'firstmsg',
        token: token
    }
    socket.send(JSON.stringify(msg));
    socket.addEventListener('message', function (event)
    {
        const data = JSON.parse(event.data);
        if (data.type === 'unlogin')
        {
            window.location.href = 'login.html';
        }
    });
}
// 点击按钮时的处理函数
function handleClick() {
    const responseMessage = document.getElementById('response-message');
    responseMessage.textContent = '按钮已被点击！';
}
