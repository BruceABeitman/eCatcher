.class public Lcom/tencent/utils/HttpUtils$CustomSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "ProGuard"
.field private a:Ljavax/net/ssl/SSLContext;
.method public constructor <init>(Ljava/security/KeyStore;)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
const-string/jumbo v0, "TLS"
invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v0
iput-object v0, p0, Lcom/tencent/utils/HttpUtils$CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;
:try_start_d
new-instance v0, Lcom/tencent/utils/HttpUtils$MyX509TrustManager;
invoke-direct {v0}, Lcom/tencent/utils/HttpUtils$MyX509TrustManager;-><init>()V
:goto_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_1e
iget-object v2, p0, Lcom/tencent/utils/HttpUtils$CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;
const/4 v3, 0x1
new-array v3, v3, [Ljavax/net/ssl/TrustManager;
const/4 v4, 0x0
aput-object v0, v3, v4
invoke-virtual {v2, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
return-void
:catch_1e
move-exception v0
move-object v0, v1
goto :goto_12
.end method
.method public createSocket()Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/tencent/utils/HttpUtils$CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 6
iget-object v0, p0, Lcom/tencent/utils/HttpUtils$CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method