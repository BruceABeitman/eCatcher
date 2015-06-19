.class public Lco/vine/android/network/ssl/SystemKeyStore;
.super Ljava/lang/Object;
.source "SystemKeyStore.java"


# static fields
.field private static final CACERTS_FILE_SIZE:I = 0x23000

.field private static sInstance:Lco/vine/android/network/ssl/SystemKeyStore;


# instance fields
.field private final mTrustRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final mTrustStore:Ljava/security/KeyStore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lco/vine/android/network/ssl/SystemKeyStore;->getTrustStore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/vine/android/network/ssl/SystemKeyStore;->initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustRoots:Ljava/util/HashMap;

    iput-object v0, p0, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustStore:Ljava/security/KeyStore;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lco/vine/android/network/ssl/SystemKeyStore;
    .registers 3

    const-class v1, Lco/vine/android/network/ssl/SystemKeyStore;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/network/ssl/SystemKeyStore;->sInstance:Lco/vine/android/network/ssl/SystemKeyStore;

    if-nez v0, :cond_e

    new-instance v0, Lco/vine/android/network/ssl/SystemKeyStore;

    invoke-direct {v0, p0}, Lco/vine/android/network/ssl/SystemKeyStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/network/ssl/SystemKeyStore;->sInstance:Lco/vine/android/network/ssl/SystemKeyStore;

    :cond_e
    sget-object v0, Lco/vine/android/network/ssl/SystemKeyStore;->sInstance:Lco/vine/android/network/ssl/SystemKeyStore;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTrustStore(Landroid/content/Context;)Ljava/security/KeyStore;
    .registers 8

    :try_start_0
    const-string v4, "BKS"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    const v5, 0x23000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_18} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_18} :catch_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_18} :catch_3f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_46

    :try_start_18
    const-string v4, "changeit"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_25

    :try_start_21
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v3

    :catchall_25
    move-exception v4

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_21 .. :try_end_2a} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_21 .. :try_end_2a} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_21 .. :try_end_2a} :catch_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_2a} :catch_3f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_46

    :catch_2a
    move-exception v2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_31
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_38
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_3f
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_46
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_9

    :catch_25
    move-exception v3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_2c
    return-object v4
.end method


# virtual methods
.method public getTrustRootFor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_11

    move-object v1, v2

    :goto_10
    return-object v1

    :cond_11
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v1, v2

    goto :goto_10

    :cond_21
    :try_start_21
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_28
    .catch Ljava/security/GeneralSecurityException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_10

    :catch_29
    move-exception v0

    move-object v1, v2

    goto :goto_10
.end method

.method public isTrustRoot(Ljava/security/cert/X509Certificate;)Z
    .registers 5

    iget-object v1, p0, Lco/vine/android/network/ssl/SystemKeyStore;->mTrustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method
