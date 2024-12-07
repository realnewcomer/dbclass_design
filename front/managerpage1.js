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
            window.location.href = 'login.html';
        }
    });
}
var mid;
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
            if (data.success === true) {
                if (data.isNull === true) {
                    managerNameElement.textContent = '未设置';
                } else {
                    managerNameElement.textContent = data.managerName;
                    mid = data.managerName;
                }
            }
            else {
                managerNameElement.textContent = '未知的错误';
            }
            socket.removeEventListener('message', listener);
        }
    };
    socket.addEventListener('message', listener);
    socket.send(JSON.stringify(message));
}
function logout() {
    window.location.href = 'login.html'; // 假设登录页面的URL是/login
}
function showNotice() {
    // 创建一个新的div元素，作为公告容器
    var noticeDiv = document.createElement('div');
    noticeDiv.className = 'notice'; // 你可以添加一个类名来定义样式

    // 创建公告标题
    var noticeTitle = document.createElement('h2');
    noticeTitle.textContent = '系统公告:';
    noticeTitle.style.fontSize = '30px'; // 设置标题字体大小

    // 创建公告内容
    var noticeContent = document.createElement('p');
    noticeContent.textContent = '欢迎来到管理员系统';
    noticeContent.style.fontSize = '24px'; // 设置内容字体大小

    // 将标题和内容添加到公告容器中
    noticeDiv.appendChild(noticeTitle);
    noticeDiv.appendChild(noticeContent);

    // 获取t_right元素
    var tRightDiv = document.querySelector('.t_right');

    // 清空t_right中的现有内容
    tRightDiv.innerHTML = '';

    // 将公告容器添加到t_right中
    tRightDiv.appendChild(noticeDiv);
}
// showUserInfo函数保持不变
function showUserInfo() {
    // 获取用户数据
    const msg = {
        type: 'getUserInfo'
    }
    let users = [];
    const listener = function (event) {
        const data = JSON.parse(event.data);
        if (data.type === 'userInfo') {
            if (data.success === true) {
                users = data.users;
                console.log(users);
            }
            else {
                users = [
                    { uid: 'error', name: 'error', birthday: 'error', gender: 'error' },
                ];
            }
            // 创建表格元素
            const table = document.createElement('table');
            table.className = 'user-table';

            // 创建表头
            const thead = document.createElement('thead');
            const headerRow = document.createElement('tr');
            const headers = ['UID', 'Name', 'Birthday', 'Gender', 'Action'];
            headers.forEach(headerText => {
                const header = document.createElement('th');
                header.textContent = headerText;
                headerRow.appendChild(header);
            });
            thead.appendChild(headerRow);
            table.appendChild(thead);

            // 创建表体
            const tbody = document.createElement('tbody');
            users.forEach(user => {
                const row = document.createElement('tr');
                Object.values(user).forEach(text => {
                    const cell = document.createElement('td');
                    cell.textContent = text;
                    row.appendChild(cell);
                });

                // 添加删除按钮
                const deleteButton = document.createElement('button');
                deleteButton.textContent = 'Delete';
                deleteButton.onclick = () => deleteUser(user.uid, row);
                const actionCell = document.createElement('td');
                actionCell.appendChild(deleteButton);
                row.appendChild(actionCell);

                tbody.appendChild(row);
            });
            table.appendChild(tbody);

            // 获取t_right元素
            const tRightDiv = document.querySelector('.t_right');

            // 清空t_right中的现有内容
            tRightDiv.innerHTML = '';

            // 将表格添加到t_right中
            tRightDiv.appendChild(table);
            socket.removeEventListener('message', listener);
        }
    };
    socket.addEventListener('message', listener);
    socket.send(JSON.stringify(msg));

}

// 假设的删除用户函数，用于与后端交互
function deleteUser(userId, rowElement) {
    const message =
    {
        type: 'deleteUser',
        uid: userId
    };
    const listener = function (event) {
        const data = JSON.parse(event.data);
        if (data.type === 'deleteUser') {
            if (data.success === true) {
                rowElement.remove();
                Swal.fire({
                    icon: 'success ',
                    title: '删除成功',
                    text: '删除用户'+userId,
                    timer: 3000,
                    showConfirmButton: false
                  });
            }
            else {
                Swal.fire({
                    icon: 'error',
                    title: '删除失败',
                    text: '未知的错误',
                    timer: 3000,
                    showConfirmButton: false
                  });
            }
            socket.removeEventListener('message', listener);
        }
    };
    socket.addEventListener('message', listener);
    socket.send(JSON.stringify(message));
}
