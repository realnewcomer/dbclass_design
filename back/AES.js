const crypto = require('crypto');

function decryptAES(encryptedMessage, key) {
    // 将加密消息从Base64格式转换为Buffer
    const encryptedText = Buffer.from(encryptedMessage, 'base64');

    // 创建解密流
    const decipher = crypto.createDecipheriv('aes-256-ecb', key, null);

    // 解密
    let decrypted = decipher.update(encryptedText);
    decrypted = Buffer.concat([decrypted, decipher.final()]);

    return decrypted.toString();
}
function encryptAES(plainText, key) {
    // 创建加密流
    const cipher = crypto.createCipheriv('aes-256-ecb', key, null);

    // 加密
    let encrypted = cipher.update(plainText);
    encrypted = Buffer.concat([encrypted, cipher.final()]);

    // 将加密后的数据转换为Base64格式
    return encrypted.toString('base64');
}
module.exports = {
    decryptAES,
    encryptAES
};