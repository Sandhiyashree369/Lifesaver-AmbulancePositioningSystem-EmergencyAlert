#pip install rsa
import rsa
def generateKeys():
    (publicKey, privateKey) = rsa.newkeys(1024)
    with open('keys/publcKey11.pem', 'wb') as p:
        p.write(publicKey.save_pkcs1('PEM'))
    with open('keys/privateKey11.pem', 'wb') as p:
        p.write(privateKey.save_pkcs1('PEM'))

'''def loadKeys():
    with open('keys/publicKey11.pem', 'rb') as p:
        publicKey = rsa.PublicKey.load_pkcs1(p.read())
    with open('keys/privateKey11.pem', 'rb') as p:
        privateKey = rsa.PrivateKey.load_pkcs1(p.read())
    return privateKey, publicKey'''


def encrypt(message, key):
    return rsa.encrypt(message.encode('ascii'), key)

def decrypt(ciphertext, key):
    try:
        return rsa.decrypt(ciphertext, key).decode('ascii')
    except:
        return False


generateKeys()
#publicKey, privateKey =loadKeys()

#print(publicKey)
#print(privateKey)

message="hello"

'''publicKey, privateKey =loadKeys()
enmsg=encrypt(message, privateKey)
print(enmsg)'''

#ciphertext=b'\x0fz\xaa3\xbe\xa1YT>|\xcb\x06zf\x02\xad\x86\xb7\x10^\xf7\xf8\xa1\xfb\xe1\xd6\x06"\x8bD\xb9E\xfd/$\xb5n&\xd0\xbd1H\x9f\xc2\xdf\xd5[\xfe\xa3\xbfwc\xfe\x1d\xe8:\xc8M\xcd\xe9\x000R&\xfe\x8a\xa3\xde\x9a\x82\xeb\x1e\x8e\xcc\xcb\xc1\xd0\xc6\x18\x15\xee)\xed\x13Y\xff\x96\xcb\x8b5\xb5\x90\t\xa8 \xd2E\xfb\xf3\xa2\x08\x07\xbc\xe1\x92\x8cH\xa7\x16\r\xe0\xa1{=\xdd\x87\xed\xc6\\7b(\xcc\x12\xb3\xe6@c'

#decmsg=decrypt(ciphertext, publicKey)
#print(decmsg)


