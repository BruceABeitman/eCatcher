.class public Lco/vine/android/network/ssl/CertificateChainCleaner;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCleanChain([Ljava/security/cert/X509Certificate;Lco/vine/android/network/ssl/SystemKeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    aget-object v4, p0, v5

    invoke-virtual {p1, v4}, Lco/vine/android/network/ssl/SystemKeyStore;->isTrustRoot(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v3, 0x1

    :cond_10
    aget-object v4, p0, v5

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_16
    array-length v4, p0

    if-ge v1, v4, :cond_36

    aget-object v4, p0, v1

    invoke-virtual {p1, v4}, Lco/vine/android/network/ssl/SystemKeyStore;->isTrustRoot(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v3, 0x1

    :cond_22
    aget-object v4, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p0, v5

    invoke-static {v4, v5}, Lco/vine/android/network/ssl/CertificateChainCleaner;->isValidLink(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_36

    aget-object v4, p0, v1

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_36
    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {p1, v4}, Lco/vine/android/network/ssl/SystemKeyStore;->getTrustRootFor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_44
    if-eqz v3, :cond_53

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    return-object v4

    :cond_53
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "Didn\'t find a trust anchor in chain cleanup!"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static isValidLink(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :goto_f
    return v1

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19

    const/4 v1, 0x1

    goto :goto_f

    :catch_19
    move-exception v0

    goto :goto_f
.end method
