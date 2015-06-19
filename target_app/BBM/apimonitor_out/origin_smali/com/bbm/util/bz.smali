.class public final Lcom/bbm/util/bz;
.super Lcom/bbm/util/bo;
.source "HttpsLoader.java"


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bbm/util/bo;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V

    return-void
.end method


# virtual methods
.method protected final d(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 7

    const/4 v1, 0x0

    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    :try_start_d
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->B()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_4b

    move-object v1, v0

    :goto_21
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_30
    const-string v2, "Cache-Control"

    iget-boolean v1, p0, Lcom/bbm/util/bz;->b:Z

    if-eqz v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "max-age="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bbm/util/bz;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-virtual {v0, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    return-object v0

    :catch_4b
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_50
    const-string v1, "no-cache"

    goto :goto_47

    :cond_53
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "Cache-Control"

    iget-boolean v1, p0, Lcom/bbm/util/bz;->b:Z

    if-eqz v1, :cond_74

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "max-age="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bbm/util/bz;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_70
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_74
    const-string v1, "no-cache"

    goto :goto_70
.end method
