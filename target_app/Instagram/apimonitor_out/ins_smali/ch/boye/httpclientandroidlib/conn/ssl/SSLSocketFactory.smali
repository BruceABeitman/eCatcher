.class public Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"
.implements Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
.implements Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier; = null
.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier; = null
.field public static final SSL:Ljava/lang/String; = "SSL"
.field public static final SSLV2:Ljava/lang/String; = "SSLv2"
.field public static final STRICT_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier; = null
.field public static final TLS:Ljava/lang/String; = "TLS"
.field private volatile hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
.field private final nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;
.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/AllowAllHostnameVerifier;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/ssl/AllowAllHostnameVerifier;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/BrowserCompatHostnameVerifier;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/StrictHostnameVerifier;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/ssl/StrictHostnameVerifier;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-static {}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createDefaultSSLContext()Ljavax/net/ssl/SSLContext;
move-result-object v0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)V
.registers 10
const/4 v2, 0x0
const-string v1, "TLS"
sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
move-object v0, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
move-object v6, p1
invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
.registers 11
const/4 v2, 0x0
const-string v1, "TLS"
move-object v0, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
move-object v6, p1
move-object v7, p2
invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;)V
.registers 13
const/4 v5, 0x0
move-object v0, p1
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v4, p5
invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
move-result-object v0
invoke-direct {p0, v0, p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
.registers 9
invoke-static/range {p1 .. p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
move-result-object v0
invoke-direct {p0, v0, p7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
.registers 13
const/4 v5, 0x0
move-object v0, p1
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v4, p5
invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
move-result-object v0
invoke-direct {p0, v0, p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Ljava/security/KeyStore;)V
.registers 10
const/4 v2, 0x0
const-string v1, "TLS"
sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
move-object v0, p0
move-object v3, v2
move-object v4, p1
move-object v5, v2
move-object v6, v2
invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
.registers 11
const/4 v4, 0x0
const-string v1, "TLS"
sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
.registers 12
const/4 v5, 0x0
const-string v1, "TLS"
sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v6, v5
invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
.registers 3
sget-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
return-void
.end method
.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;
sget-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;
return-void
.end method
.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;
iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;
return-void
.end method
.method private static createDefaultSSLContext()Ljavax/net/ssl/SSLContext;
.registers 6
:try_start_0
const-string v0, "TLS"
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c
move-result-object v0
return-object v0
:catch_c
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Failure initializing default SSL context"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private static createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
.registers 11
if-nez p0, :cond_4
const-string p0, "TLS"
:cond_4
invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
move-result-object v1
if-eqz p2, :cond_44
invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
:goto_12
invoke-virtual {v1, p1, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
move-result-object v2
invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v0
invoke-virtual {v0, p3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v3
if-eqz v3, :cond_46
if-eqz p5, :cond_46
const/4 v0, 0x0
move v1, v0
:goto_2e
array-length v0, v3
if-ge v1, v0, :cond_46
aget-object v0, v3, v1
instance-of v4, v0, Ljavax/net/ssl/X509TrustManager;
if-eqz v4, :cond_40
new-instance v4, Lch/boye/httpclientandroidlib/conn/ssl/TrustManagerDecorator;
check-cast v0, Ljavax/net/ssl/X509TrustManager;
invoke-direct {v4, v0, p5}, Lch/boye/httpclientandroidlib/conn/ssl/TrustManagerDecorator;-><init>(Ljavax/net/ssl/X509TrustManager;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)V
aput-object v4, v3, v1
:cond_40
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2e
:cond_44
const/4 v0, 0x0
goto :goto_12
:cond_46
invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v0
invoke-virtual {v0, v2, v3, p4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
return-object v0
.end method
.method public static getSocketFactory()Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>()V
return-object v0
.end method
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
.registers 10
const/4 v0, 0x0
if-nez p4, :cond_5
if-lez p5, :cond_d
:cond_5
if-gez p5, :cond_8
const/4 p5, 0x0
:cond_8
new-instance v0, Ljava/net/InetSocketAddress;
invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
:cond_d
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;
if-eqz v1, :cond_21
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;
invoke-interface {v1, p2}, Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;
move-result-object v1
:goto_17
new-instance v2, Ljava/net/InetSocketAddress;
invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
invoke-virtual {p0, p1, v2, v0, p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
move-result-object v0
return-object v0
:cond_21
invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
move-result-object v1
goto :goto_17
.end method
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
.registers 11
if-nez p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Remote address may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p4, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
if-eqz p1, :cond_6d
move-object v0, p1
:goto_17
if-eqz p3, :cond_23
invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoReuseaddr(Lch/boye/httpclientandroidlib/params/HttpParams;)Z
move-result v1
invoke-virtual {v0, v1}, Ljava/net/Socket;->setReuseAddress(Z)V
invoke-virtual {v0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V
:cond_23
invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I
move-result v1
invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I
move-result v2
:try_start_2b
invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
invoke-static {v0, p2, v1}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
:try_end_31
.catch Ljava/net/SocketTimeoutException; {:try_start_2b .. :try_end_31} :catch_73
invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I
move-result v2
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, ":"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_5d
const/4 v4, 0x0
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
sub-int v3, v5, v3
invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:cond_5d
instance-of v3, v0, Ljavax/net/ssl/SSLSocket;
if-eqz v3, :cond_8f
check-cast v0, Ljavax/net/ssl/SSLSocket;
:goto_63
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
if-eqz v2, :cond_6c
:try_start_67
iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
invoke-interface {v2, v1, v0}, Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
:cond_6c
:try_end_6c
.catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_99
return-object v0
:cond_6d
new-instance v0, Ljava/net/Socket;
invoke-direct {v0}, Ljava/net/Socket;-><init>()V
goto :goto_17
:catch_73
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Connect to "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " timed out"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8f
iget-object v3, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;
const/4 v4, 0x1
invoke-virtual {v3, v0, v1, v2, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
check-cast v0, Ljavax/net/ssl/SSLSocket;
goto :goto_63
:catch_99
move-exception v1
:try_start_9a
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
:goto_9d
:try_end_9d
.catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e
throw v1
:catch_9e
move-exception v0
goto :goto_9d
.end method
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 7
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
check-cast v0, Ljavax/net/ssl/SSLSocket;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
if-eqz v1, :cond_11
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
invoke-interface {v1, p2, v0}, Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
:cond_11
return-object v0
.end method
.method public createSocket()Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.registers 6
invoke-virtual {p0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
return-object v0
.end method
.method public getHostnameVerifier()Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
return-object v0
.end method
.method public isSecure(Ljava/net/Socket;)Z
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Socket may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
instance-of v0, p1, Ljavax/net/ssl/SSLSocket;
if-nez v0, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Socket not created by this factory"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z
move-result v0
if-eqz v0, :cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Socket is closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
const/4 v0, 0x1
return v0
.end method
.method public setHostnameVerifier(Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Hostname verifier may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
return-void
.end method