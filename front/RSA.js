function RSA(msg) 
{
        var rsa = new JSEncrypt();
        var publicKey = "-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCl83UBYux0oB4jmBz/GWcd6afo\nnG72CPzRby1CJCcfeFum7PJNXo6oaQ0vN9W5/47q8mTof23++9HMBFNThDOZ7Hlu\n2cgLJPjbnjcDz9e8vczDGucqh/0H0qJI8b5auGU21dc1YC1pab71XyHAIa59QbzC\nucSskw60szAhfali8wIDAQAB\n-----END PUBLIC KEY-----"
        rsa.setPublicKey(publicKey);
        var en = rsa.encrypt(msg);
        return en;
}