var urlParams = new URLSearchParams(window.location.search);
var token = urlParams.get('token');
if (!token) {
    window.location.href = 'login.html';
}
function init() {
    const msg =
    {
        type: 'firstmsg',
        token: token
    }
    socket.send(JSON.stringify(msg));
    socket.addEventListener('message', function (event) {
        const data = JSON.parse(event.data);
        if (data.type === 'unlogin') {
            window.location.href = 'index.html';
        }
    });
}

// 设置当前用户名
function setCurrentUsername() {
    const message =
    {
        type: 'getManagerName',
        token: token
    };
    var managerNameElement = document.getElementById('managerName');
    const listener = function (event) {
        const data = JSON.parse(event.data);
        if (data.type === 'managerName') {
            if(data.success === true)
            {
                if (data.isNull === true) {
                    managerNameElement.textContent = '未设置';
                } else {
                    managerNameElement.textContent = data.managerName;
                }
            }
            else
            {
                managerNameElement.textContent = '未知的错误';
            }
            socket.removeEventListener('message', listener);
        }
    };
    socket.addEventListener('message', listener);
    socket.send(JSON.stringify(message));
}
function logout() {
    // 这里可以添加退出登录的逻辑，比如清除localStorage中的用户信息
    localStorage.removeItem('username');
    // 然后重定向到登录页面或执行其他操作
    window.location.href = '/login'; // 假设登录页面的URL是/login
}

