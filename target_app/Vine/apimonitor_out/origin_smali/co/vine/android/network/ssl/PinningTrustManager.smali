.class public Lco/vine/android/network/ssl/PinningTrustManager;
.super Ljava/lang/Object;
.source "PinningTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final PIN_FRESHNESS_DURATION_MILLIS:J = 0x39ef8b000L


# instance fields
.field private final mCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mSystemKeyStore:Lco/vine/android/network/ssl/SystemKeyStore;

.field private final mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Lco/vine/android/network/ssl/SystemKeyStore;[Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mPins:Ljava/util/List;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mCache:Ljava/util/Set;

    invoke-direct {p0, p1}, Lco/vine/android/network/ssl/PinningTrustManager;->initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;

    iput-object p1, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemKeyStore:Lco/vine/android/network/ssl/SystemKeyStore;

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    iget-object v4, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mPins:Ljava/util/List;

    invoke-direct {p0, v3}, Lco/vine/android/network/ssl/PinningTrustManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_30
    return-void
.end method

.method private checkPinTrust([Ljava/security/cert/X509Certificate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v5, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemKeyStore:Lco/vine/android/network/ssl/SystemKeyStore;

    invoke-static {p1, v5}, Lco/vine/android/network/ssl/CertificateChainCleaner;->getCleanChain([Ljava/security/cert/X509Certificate;Lco/vine/android/network/ssl/SystemKeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_17

    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lco/vine/android/network/ssl/PinningTrustManager;->isValidPin(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_14

    return-void

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "No valid pins found in chain!"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_10

    aget-object v3, v0, v1

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .registers 9

    const/16 v6, 0x10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_2a

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    :cond_2a
    return-object v0
.end method

.method private initializeSystemTrustManagers(Lco/vine/android/network/ssl/SystemKeyStore;)[Ljavax/net/ssl/TrustManager;
    .registers 6

    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    iget-object v3, p1, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_17

    move-result-object v3

    return-object v3

    :catch_10
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_17
    move-exception v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private isValidPin(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    iget-object v6, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mPins:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_27} :catch_2e

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    :goto_2b
    return v6

    :cond_2c
    const/4 v6, 0x0

    goto :goto_2b

    :catch_2e
    move-exception v2

    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mCache:Ljava/util/Set;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0, p1, p2}, Lco/vine/android/network/ssl/PinningTrustManager;->checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lco/vine/android/network/ssl/PinningTrustManager;->checkPinTrust([Ljava/security/cert/X509Certificate;)V

    iget-object v0, p0, Lco/vine/android/network/ssl/PinningTrustManager;->mCache:Ljava/util/Set;

    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
