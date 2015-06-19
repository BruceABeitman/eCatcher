.class public Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;
.super Ljava/lang/Object;
.source "_FakeX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final _AcceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private static trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAllSSL()V
    .registers 5

    new-instance v2, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager$1;

    invoke-direct {v2}, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager$1;-><init>()V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const/4 v0, 0x0

    sget-object v2, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;

    invoke-direct {v4}, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;-><init>()V

    aput-object v4, v2, v3

    sput-object v2, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    :cond_1a
    :try_start_1a
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_2c} :catch_36
    .catch Ljava/security/KeyManagementException; {:try_start_1a .. :try_end_2c} :catch_3b

    :goto_2c
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_35
    return-void

    :catch_36
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2c

    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_2c
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    sget-object v0, Lorg/pinguo/cloudshare/support/_FakeX509TrustManager;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
