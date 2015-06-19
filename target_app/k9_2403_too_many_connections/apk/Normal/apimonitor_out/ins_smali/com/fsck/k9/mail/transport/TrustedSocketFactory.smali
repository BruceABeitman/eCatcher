.class public Lcom/fsck/k9/mail/transport/TrustedSocketFactory;
.super Ljava/lang/Object;
.source "TrustedSocketFactory.java"
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;
.field private mSchemeSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
.field private mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v1, "TLS"
invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
new-array v2, v2, [Ljavax/net/ssl/TrustManager;
const/4 v3, 0x0
invoke-static {p1, p2}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
move-result-object v4
aput-object v4, v2, v3
new-instance v3, Ljava/security/SecureRandom;
invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V
invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;->mSchemeSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
iget-object v1, p0, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;->mSchemeSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v1, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
.registers 14
iget-object v0, p0, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;->mSchemeSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-object v1, p1
move-object v2, p2
move v3, p3
move-object v4, p4
move v5, p5
move-object v6, p6
invoke-virtual/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket()Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 7
iget-object v1, p0, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
check-cast v0, Ljavax/net/ssl/SSLSocket;
return-object v0
.end method
.method public isSecure(Ljava/net/Socket;)Z
.registers 3
iget-object v0, p0, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;->mSchemeSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
invoke-virtual {v0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->isSecure(Ljava/net/Socket;)Z
move-result v0
return v0
.end method