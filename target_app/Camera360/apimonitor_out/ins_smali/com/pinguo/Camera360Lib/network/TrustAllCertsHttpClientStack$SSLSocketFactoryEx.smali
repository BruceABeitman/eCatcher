.class  Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "TrustAllCertsHttpClientStack.java"
.field  sslContext:Ljavax/net/ssl/SSLContext;
.method public constructor <init>(Ljava/security/KeyStore;)V
.registers 7
const/4 v4, 0x0
invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
const-string/jumbo v1, "TLS"
invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;
new-instance v0, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx$1;
invoke-direct {v0, p0}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx$1;-><init>(Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;
const/4 v2, 0x1
new-array v2, v2, [Ljavax/net/ssl/TrustManager;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
return-void
.end method
.method public createSocket()Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 6
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHttpClientStack$SSLSocketFactoryEx;->sslContext:Ljavax/net/ssl/SSLContext;
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method