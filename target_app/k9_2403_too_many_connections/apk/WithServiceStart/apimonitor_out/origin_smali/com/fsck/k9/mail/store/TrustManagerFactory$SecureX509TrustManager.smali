.class Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/TrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureX509TrustManager"
.end annotation


# static fields
.field private static me:Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;


# instance fields
.field private mHost:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;
    .registers 2

    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->me:Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->me:Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;

    :cond_b
    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->me:Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;

    iput-object p0, v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->me:Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;

    return-object v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->setLastCertChain([Ljava/security/cert/X509Certificate;)V

    :try_start_4
    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_b} :catch_34

    :goto_b
    aget-object v2, p1, v5

    iget-object v3, p0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/http/DomainNameChecker;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x0

    :try_start_16
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$200()Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_30
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_30} :catch_45

    move-result v2

    if-eqz v2, :cond_60

    :cond_33
    return-void

    :catch_34
    move-exception v2

    move-object v1, v2

    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$100()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    aget-object v4, p1, v5

    aput-object v4, v3, v5

    invoke-interface {v2, v3, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_b

    :catch_45
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate cannot be verified; KeyStore Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_60
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate domain name does not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    invoke-static {}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->access$000()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->mHost:Ljava/lang/String;

    return-void
.end method
