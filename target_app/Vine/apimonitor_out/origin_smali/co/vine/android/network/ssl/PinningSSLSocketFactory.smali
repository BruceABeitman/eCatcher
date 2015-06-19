.class public Lco/vine/android/network/ssl/PinningSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "PinningSSLSocketFactory.java"


# static fields
.field private static final PINNING_HOSTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    sget-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    const-string v1, "api.twitter.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    const-string v1, "api.vineapp.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    const-string v1, "media.vineapp.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    const-string v1, "vine.co"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    const-string v1, "rtc.vineapp.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    invoke-static {p1}, Lco/vine/android/network/ssl/SystemKeyStore;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ssl/SystemKeyStore;

    move-result-object v0

    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    invoke-direct {p0, v0}, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->initializePinningTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-direct {p0, v0}, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-virtual {v1, v6, v2, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3, v6, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mPinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private initializePinningTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .registers 6

    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lco/vine/android/network/ssl/PinningTrustManager;

    sget-object v3, Lco/vine/android/network/ssl/VinePins;->PINS:[Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lco/vine/android/network/ssl/PinningTrustManager;-><init>(Lco/vine/android/network/ssl/SystemKeyStore;[Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v1, "X509"

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    iget-object v1, p1, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_30

    move-object v5, p1

    :goto_3
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    if-nez p4, :cond_c

    if-lez p5, :cond_17

    :cond_c
    if-gez p5, :cond_f

    const/4 p5, 0x0

    :cond_f
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_17
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    :try_start_2a
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v5, p2, v4}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_35

    return-object v4

    :cond_30
    invoke-virtual {p0}, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    goto :goto_3

    :catch_35
    move-exception v1

    :try_start_36
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    :goto_39
    throw v1

    :catch_3a
    move-exception v5

    goto :goto_39
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->PINNING_HOSTS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mPinningSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_a
    const/4 v2, -0x1

    if-ne p3, v2, :cond_f

    const/16 p3, 0x1bb

    :cond_f
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v2, p2, v1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-object v1

    :cond_1b
    iget-object v0, p0, Lco/vine/android/network/ssl/PinningSSLSocketFactory;->mSystemSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_a
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .registers 2

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only strict hostname verification (default)  is supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
