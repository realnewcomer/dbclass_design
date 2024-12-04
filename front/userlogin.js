document.getElementById('loginButtonUser').onclick = function (event)
{
  event.preventDefault();
  const username = document.getElementById('uname').value;
  const password = document.getElementById('psw').value;
  if (username === '' || password === '')
  {
    Swal.fire({
      icon: 'error',
      title: '登录失败',
      text: '用户名或密码为空',
      timer: 2000,
      showConfirmButton: false
    });
    return;
  }
  const hashedPassword = CryptoJS.SHA256(password).toString();
  const message =
  {
    type: 'login',
    uid: encryptAES(username, aesKey),
    cipher: encryptAES(hashedPassword, aesKey)
  };
  const listener = function (event)
  {
    const data = JSON.parse(event.data);
    if (data.type === 'login')
    {
      if (data.success === true)
      {
        let token = decryptAES(data.token, aesKey);
        window.location.href = 'chat.html?token=' + token + '&username=' + username;
      } else
      {
        if (data.reason === 'exist')
        {
          Swal.fire({
            icon: 'error',
            title: '登录失败',
            text: '用户已登录',
            timer: 2000,
            showConfirmButton: false
          });
        }
        else if (data.reason === 'wrong')
        {
          Swal.fire({
            icon: 'error',
            title: '登录失败',
            text: '用户名或密码错误.',
            timer: 2000,
            showConfirmButton: false
          });
        }
        else
        {
          Swal.fire({
            icon: 'error',
            title: '登录失败',
            text: '未知错误',
            timer: 2000,
            showConfirmButton: false
          });
        }
      }
      socket.removeEventListener('message', listener);
    }
  };
  socket.addEventListener('message', listener);
  sendMessage(JSON.stringify(message));
};
function sendMessage(msg)
{
  socket.send(msg);
}
function showUserRegisterPopup()
{
  Swal.fire({
    title: '用户注册',
    html: `
        <div id="registerContainer">
            <input type="text" id="registerUsername" class="swal2-input" placeholder="Username" maxlength="15" pattern="[a-zA-Z0-9]+" title="Username can only contain letters and numbers" required>
            <input type="password" id="registerPassword" class="swal2-input" placeholder="Password" minlength="8" maxlength="16" pattern="[a-zA-Z0-9!@#$%^&*()_+-=]+" title="Password must be 8-16 characters long and can contain letters, numbers, and special characters" required>
        </div>`,
    focusConfirm: false,
    confirmButtonText: '注册',
    preConfirm: () =>
{
      return new Promise((resolve, reject) =>
      {
        const username = document.getElementById('registerUsername').value;
        const password = document.getElementById('registerPassword').value;
        if (!isValidUsername(username))
        {
          Swal.showValidationMessage('用户名长度应该小于15，且只能包含字母和数字！');
          reject('username invalid');
          setTimeout(() =>
          {
            Swal.resetValidationMessage();
            Swal.getConfirmButton().disabled = false;
          }, 2000);
        }
        if (!isValidPassword(password))
        {
          Swal.showValidationMessage('密码长度应该在8~16个字符之间，且只能包含字母、数字和特殊字符！');
          reject('password invalid');
          setTimeout(() =>
          {
            Swal.resetValidationMessage();
            Swal.getConfirmButton().disabled = false;
          }, 2000);
        }
        const hashedPassword = CryptoJS.SHA256(password).toString();
        const msg =
        {
          type: 'userRegister',
          uid: encryptAES(username, aesKey),
          cipher: encryptAES(hashedPassword, aesKey)
        };
        const listener = function (event)
        {
          const data = JSON.parse(event.data);
          console.log(data);
          if (data.type === 'register')
          {
            if (data.success === true)
            {
              resolve(data); 
            } else
            {
              reject(data); 
            }
            socket.removeEventListener('message', listener);
          }
        };
        socket.addEventListener('message', listener);
        sendMessage(JSON.stringify(msg));
      });
    }
  }).then(data =>
  {
    if (data.isConfirmed)
    {
      Swal.fire({
        icon: 'success',
        title: '注册成功!',
        timer: 4000,
        showConfirmButton: false
      });
    }
  }).catch(data =>
  {
    if (data.type == 'register' && data.success == false)
    {
      Swal.fire({
        icon: 'error',
        title: '注册失败!',
        text: data.error || '用户名已存在.',
        timer: 4000,
        showConfirmButton: false
      });
    }
  });
}
function showManagerRegisterPopup()
{
  Swal.fire({
    title: '管理员注册',
    html: `
        <div id="registerContainer">
            <input type="text" id="registerUsername" class="swal2-input" placeholder="Username" maxlength="15" pattern="[a-zA-Z0-9]+" title="Username can only contain letters and numbers" required>
            <input type="password" id="registerPassword" class="swal2-input" placeholder="Password" minlength="8" maxlength="16" pattern="[a-zA-Z0-9!@#$%^&*()_+-=]+" title="Password must be 8-16 characters long and can contain letters, numbers, and special characters" required>
        </div>`,
    focusConfirm: false,
    confirmButtonText: '注册',
    preConfirm: () =>
{
      return new Promise((resolve, reject) =>
      {
        const username = document.getElementById('registerUsername').value;
        const password = document.getElementById('registerPassword').value;
        if (!isValidUsername(username))
        {
          Swal.showValidationMessage('用户名长度应该小于15，且只能包含字母和数字！');
          reject('username invalid');
          setTimeout(() =>
          {
            Swal.resetValidationMessage();
            Swal.getConfirmButton().disabled = false;
          }, 2000);
        }
        if (!isValidPassword(password))
        {
          Swal.showValidationMessage('密码长度应该在8~16个字符之间，且只能包含字母、数字和特殊字符！');
          reject('password invalid');
          setTimeout(() =>
          {
            Swal.resetValidationMessage();
            Swal.getConfirmButton().disabled = false;
          }, 2000);
        }
        const hashedPassword = CryptoJS.SHA256(password).toString();
        const msg =
        {
          type: 'managerRegister',
          mid: encryptAES(username, aesKey),
          cipher: encryptAES(hashedPassword, aesKey)
        };
        const listener = function (event)
        {
          const data = JSON.parse(event.data);
          console.log(data);
          if (data.type === 'register')
          {
            if (data.success === true)
            {
              resolve(data); 
            } else
            {
              reject(data); 
            }
            socket.removeEventListener('message', listener);
          }
        };
        socket.addEventListener('message', listener);
        sendMessage(JSON.stringify(msg));
      });
    }
  }).then(data =>
  {
    if (data.isConfirmed)
    {
      Swal.fire({
        icon: 'success',
        title: '注册成功!',
        timer: 4000,
        showConfirmButton: false
      });
    }
  }).catch(data =>
  {
    if (data.type == 'register' && data.success == false)
    {
      Swal.fire({
        icon: 'error',
        title: '注册失败!',
        text: data.error || '用户名已存在.',
        timer: 4000,
        showConfirmButton: false
      });
    }
  });
}
function isValidUsername(username)
{
  const usernamePattern = /^[a-zA-Z0-9]+$/;
  return username.length <= 15 && usernamePattern.test(username);
}
function isValidPassword(password)
{
  const passwordPattern = /^[a-zA-Z0-9!@#$%^&*()_+-=]+$/;
  return password.length >= 8 && password.length <= 16 && passwordPattern.test(password);
}