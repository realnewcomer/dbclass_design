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
            window.location.href = 'index.html';
        }
    });
}