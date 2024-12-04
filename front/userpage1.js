var urlParams = new URLSearchParams(window.location.search);
var token = urlParams.get('token');
if (!token)
{
    window.location.href = 'login.html';
}
