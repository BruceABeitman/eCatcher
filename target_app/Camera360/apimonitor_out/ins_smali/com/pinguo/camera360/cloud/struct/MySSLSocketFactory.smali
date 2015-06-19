.class public Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "MySSLSocketFactory.java"
.field  sslContext:Ljavax/net/ssl/SSLContext;
.method public constructor <init>(Ljava/security/KeyStore;)V
.registers 7
const/4 v4, 0x0
invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
const-string/jumbo v1, "TLS"
invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;
new-instance v0, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory$1;-><init>(Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;
const/4 v2, 0x1
new-array v2, v2, [Ljavax/net/ssl/TrustManager;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
return-void
.end method
.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
.registers 10
:try_start_0
invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
move-result-object v5
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
new-instance v4, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;
invoke-direct {v4, v5}, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v2, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
const-string/jumbo v6, "UTF-8"
invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v6, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v7, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v8
const/16 v9, 0x50
invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v6, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v7, "https"
const/16 v8, 0x1bb
invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
:goto_54
:try_end_54
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55
return-object v6
:catch_55
move-exception v1
new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
goto :goto_54
.end method
.method public createSocket()Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public test()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/cloud/struct/MySSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;
move-result-object v0
return-void
.end method