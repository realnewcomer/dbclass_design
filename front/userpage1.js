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

// JavaScript code to handle click events on navigation links
document.addEventListener('DOMContentLoaded', function() {
    var navLinks = document.querySelectorAll('.navbar a');
  
    navLinks.forEach(function(link) {
      link.addEventListener('click', function(event) {
        event.preventDefault();
        // Implement your click function here
        console.log('Navigation link clicked:', link.textContent);
      });
    });
  });
  