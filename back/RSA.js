const fs = require('fs');
const NodeRSA = require('node-jsencrypt');

// 创建一个 RSA 实例
const rsa = new NodeRSA();

// function loadPublicKey() {
//     return fs.readFileSync('public.pem', 'utf8');
// }

// 加载私钥
function loadPrivateKey() {
    return fs.readFileSync('private.pem', 'utf8');
}
// 获取公钥和私钥
// const publicKey = loadPublicKey();
const privateKey = loadPrivateKey();
rsa.setPrivateKey(privateKey);
// 打印公钥和私钥
// console.log("公钥:", publicKey);
// console.log("私钥:", privateKey);

// 加密和解密操作
const dataToEncrypt = "Hello, World!";
// const encryptedData = rsa.encrypt(dataToEncrypt, 'base64');
// console.log("加密后的数据:", encryptedData);

encryptedData = "WiCWgErAdInE8xAzeDiZeVgHdwSUZsMiXlxWvU3D80SC3Yx/4WS7o+fqxvbEELPu0Z9Nx0m78xAtVYDHbbvziGO35bKS5wWxdEOripdp1zEYTp18Xj8L4xvjZUZvZU6uxfWA0Mg9Ixln4bETky2srSjNDj5klte53ncZXjaOMuA=";
const decryptedData = rsa.decrypt(encryptedData, 'utf8');
console.log("解密后的数据:", decryptedData);
