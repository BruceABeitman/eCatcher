.class  Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;
.super Ljava/lang/Object;
.source "HttpOperation.java"
.implements Lorg/apache/http/conn/scheme/SocketFactory;
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
.method public constructor <init>()V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v1, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
if-nez v1, :cond_19
:try_start_7
const-string v1, "TLS"
invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v1
sput-object v1, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a
:goto_19
:cond_19
return-void
:catch_1a
move-exception v1
goto :goto_19
.end method
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
.registers 9
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object p1
:cond_6
if-nez p4, :cond_a
if-lez p5, :cond_15
:cond_a
if-gez p5, :cond_d
const/4 p5, 0x0
:cond_d
new-instance v0, Ljava/net/InetSocketAddress;
invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
invoke-virtual {p1, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V
:cond_15
invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I
move-result v0
invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V
new-instance v0, Ljava/net/InetSocketAddress;
invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I
move-result v1
invoke-static {p1, v0, v1}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
return-object p1
.end method
.method public createSocket()Ljava/net/Socket;
.registers 2
sget-object v0, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 6
sget-object v0, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-eqz p1, :cond_10
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public hashCode()I
.registers 2
const-class v0, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method public isSecure(Ljava/net/Socket;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method