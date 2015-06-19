.class public Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "TrustAllCertsHurlStack.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public static getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v2, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack$1;

    invoke-direct {v5}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack$1;-><init>()V

    aput-object v5, v2, v4

    :try_start_c
    const-string/jumbo v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v4, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_21

    move-result-object v3

    :goto_20
    return-object v3

    :catch_21
    move-exception v0

    goto :goto_20
.end method
