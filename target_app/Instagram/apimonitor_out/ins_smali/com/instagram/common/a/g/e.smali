.class final Lcom/instagram/common/a/g/e;
.super Ljava/lang/Object;
.source "AppSchemeRegistry.java"
.implements Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
.field private a:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/common/a/g/e;-><init>()V
return-void
.end method
.method private declared-synchronized a()Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/common/a/g/e;->a:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
if-nez v0, :cond_20
invoke-static {}, Lcom/instagram/common/a/g/e;->b()Ljavax/net/ssl/SSLContext;
move-result-object v0
invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V
new-instance v1, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
new-instance v2, Lcom/instagram/common/a/g/f;
invoke-direct {v2}, Lcom/instagram/common/a/g/f;-><init>()V
invoke-direct {v1, v0, v2}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
iput-object v1, p0, Lcom/instagram/common/a/g/e;->a:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
invoke-static {}, Lcom/instagram/common/a/g/d;->b()Ljava/lang/Class;
:cond_20
iget-object v0, p0, Lcom/instagram/common/a/g/e;->a:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
:try_end_22
.catchall {:try_start_1 .. :try_end_22} :catchall_24
monitor-exit p0
return-object v0
:catchall_24
move-exception v0
monitor-exit p0
throw v0
.end method
.method private static b()Ljavax/net/ssl/SSLContext;
.registers 4
:try_start_0
invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
move-result-object v0
invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v1
const-string v2, "TLS"
invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v0, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c
return-object v2
:catch_2c
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Failure initializing default SSL context"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public final connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
.registers 7
invoke-static {}, Lcom/instagram/common/u/h/a;->a()Lcom/instagram/common/u/h/a;
move-result-object v0
invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Lcom/instagram/common/u/h/a;->a(Ljava/net/Socket;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/common/a/g/e;->a()Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
move-result-object v0
invoke-interface {v0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public final createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 6
invoke-direct {p0}, Lcom/instagram/common/a/g/e;->a()Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
move-result-object v0
invoke-interface {v0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public final createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
.registers 3
invoke-direct {p0}, Lcom/instagram/common/a/g/e;->a()Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
move-result-object v0
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;->createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public final isSecure(Ljava/net/Socket;)Z
.registers 3
invoke-direct {p0}, Lcom/instagram/common/a/g/e;->a()Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
move-result-object v0
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z
move-result v0
return v0
.end method