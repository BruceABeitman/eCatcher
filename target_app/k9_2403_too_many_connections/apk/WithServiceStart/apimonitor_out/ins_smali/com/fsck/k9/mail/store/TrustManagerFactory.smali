.class public final Lcom/fsck/k9/mail/store/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"
.field private static final LOG_TAG:Ljava/lang/String; = "TrustManagerFactory"
.field private static defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
.field private static keyStore:Ljava/security/KeyStore;
.field private static keyStoreFile:Ljava/io/File;
.field private static lastCertChain:[Ljava/security/cert/X509Certificate;
.field private static localTrustManager:Ljavax/net/ssl/X509TrustManager;
.field private static unsecureTrustManager:Ljavax/net/ssl/X509TrustManager;
.method static constructor <clinit>()V
.registers 16
const/4 v14, 0x0
const-string v10, "X509"
const-string v15, "TrustManagerFactory"
sput-object v14, Lcom/fsck/k9/mail/store/TrustManagerFactory;->lastCertChain:[Ljava/security/cert/X509Certificate;
:try_start_7
const-string v10, "X509"
invoke-static {v10}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v8
sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "KeyStore"
const/4 v13, 0x0
invoke-virtual {v0, v12, v13}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v11
sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, "KeyStore.bks"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStoreFile:Ljava/io/File;
invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
move-result-object v10
sput-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
:try_end_40
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_40} :catch_a6
.catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_40} :catch_bd
:try_start_40
new-instance v4, Ljava/io/FileInputStream;
sget-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStoreFile:Ljava/io/File;
invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_47
.catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_47} :catch_95
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_40 .. :try_end_47} :catch_a6
.catch Ljava/security/KeyStoreException; {:try_start_40 .. :try_end_47} :catch_bd
:goto_47
:try_start_47
sget-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
const-string v11, ""
invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C
move-result-object v11
invoke-virtual {v10, v4, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
:goto_52
:try_start_52
:try_end_52
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_52} :catch_99
.catch Ljava/security/cert/CertificateException; {:try_start_47 .. :try_end_52} :catch_b0
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_52} :catch_a6
.catch Ljava/security/KeyStoreException; {:try_start_47 .. :try_end_52} :catch_bd
sget-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
invoke-virtual {v8, v10}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
invoke-virtual {v8}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v9
if-eqz v9, :cond_6c
move-object v1, v9
array-length v6, v1
const/4 v5, 0x0
:goto_60
if-ge v5, v6, :cond_6c
aget-object v7, v1, v5
instance-of v10, v7, Ljavax/net/ssl/X509TrustManager;
if-eqz v10, :cond_c7
check-cast v7, Ljavax/net/ssl/X509TrustManager;
sput-object v7, Lcom/fsck/k9/mail/store/TrustManagerFactory;->localTrustManager:Ljavax/net/ssl/X509TrustManager;
:cond_6c
const-string v10, "X509"
invoke-static {v10}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v8
const/4 v0, 0x0
check-cast v0, Ljava/security/KeyStore;
invoke-virtual {v8, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
invoke-virtual {v8}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v9
if-eqz v9, :cond_8d
move-object v1, v9
array-length v6, v1
const/4 v5, 0x0
:goto_81
if-ge v5, v6, :cond_8d
aget-object v7, v1, v5
instance-of v10, v7, Ljavax/net/ssl/X509TrustManager;
if-eqz v10, :cond_ca
check-cast v7, Ljavax/net/ssl/X509TrustManager;
sput-object v7, Lcom/fsck/k9/mail/store/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
:cond_8d
:goto_8d
:try_end_8d
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_52 .. :try_end_8d} :catch_a6
.catch Ljava/security/KeyStoreException; {:try_start_52 .. :try_end_8d} :catch_bd
new-instance v10, Lcom/fsck/k9/mail/store/TrustManagerFactory$SimpleX509TrustManager;
invoke-direct {v10, v14}, Lcom/fsck/k9/mail/store/TrustManagerFactory$SimpleX509TrustManager;-><init>(Lcom/fsck/k9/mail/store/TrustManagerFactory$1;)V
sput-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->unsecureTrustManager:Ljavax/net/ssl/X509TrustManager;
return-void
:catch_95
move-exception v10
move-object v3, v10
const/4 v4, 0x0
goto :goto_47
:catch_99
move-exception v10
move-object v2, v10
:try_start_9b
const-string v10, "TrustManagerFactory"
const-string v11, "KeyStore IOException while initializing TrustManagerFactory "
invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v10, 0x0
sput-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
:try_end_a5
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_9b .. :try_end_a5} :catch_a6
.catch Ljava/security/KeyStoreException; {:try_start_9b .. :try_end_a5} :catch_bd
goto :goto_52
:catch_a6
move-exception v10
move-object v2, v10
const-string v10, "TrustManagerFactory"
const-string v10, "Unable to get X509 Trust Manager "
invoke-static {v15, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_8d
:catch_b0
move-exception v10
move-object v2, v10
:try_start_b2
const-string v10, "TrustManagerFactory"
const-string v11, "KeyStore CertificateException while initializing TrustManagerFactory "
invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v10, 0x0
sput-object v10, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
:try_end_bc
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_b2 .. :try_end_bc} :catch_a6
.catch Ljava/security/KeyStoreException; {:try_start_b2 .. :try_end_bc} :catch_bd
goto :goto_52
:catch_bd
move-exception v10
move-object v2, v10
const-string v10, "TrustManagerFactory"
const-string v10, "Key Store exception while initializing TrustManagerFactory "
invoke-static {v15, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_8d
:cond_c7
add-int/lit8 v5, v5, 0x1
goto :goto_60
:cond_ca
add-int/lit8 v5, v5, 0x1
goto :goto_81
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000()Ljavax/net/ssl/X509TrustManager;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
return-object v0
.end method
.method static synthetic access$100()Ljavax/net/ssl/X509TrustManager;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->localTrustManager:Ljavax/net/ssl/X509TrustManager;
return-object v0
.end method
.method static synthetic access$200()Ljava/security/KeyStore;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
return-object v0
.end method
.method public static addCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
.registers 15
const-string v12, "TrustManagerFactory"
const-string v9, "Unable to write KeyStore: "
:try_start_4
const-string v9, "X509"
invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v7
const/4 v2, 0x0
:goto_b
array-length v9, p1
if-ge v2, v9, :cond_22
sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
aget-object v10, p1, v2
invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v10
aget-object v11, p1, v2
invoke-virtual {v9, v10, v11}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
add-int/lit8 v2, v2, 0x1
goto :goto_b
:cond_22
sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
invoke-virtual {v7, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v8
if-eqz v8, :cond_3c
move-object v0, v8
array-length v5, v0
const/4 v3, 0x0
:goto_30
if-ge v3, v5, :cond_3c
aget-object v6, v0, v3
instance-of v9, v6, Ljavax/net/ssl/X509TrustManager;
if-eqz v9, :cond_52
check-cast v6, Ljavax/net/ssl/X509TrustManager;
sput-object v6, Lcom/fsck/k9/mail/store/TrustManagerFactory;->localTrustManager:Ljavax/net/ssl/X509TrustManager;
:try_end_3c
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_3c} :catch_74
.catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_3c} :catch_9d
:try_start_3c
:cond_3c
new-instance v4, Ljava/io/FileOutputStream;
sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStoreFile:Ljava/io/File;
invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
const-string v10, ""
invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C
move-result-object v10
invoke-virtual {v9, v4, v10}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
:try_end_51
.catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_51} :catch_55
.catch Ljava/security/cert/CertificateException; {:try_start_3c .. :try_end_51} :catch_7e
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_51} :catch_a7
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_3c .. :try_end_51} :catch_74
.catch Ljava/security/KeyStoreException; {:try_start_3c .. :try_end_51} :catch_9d
:goto_51
return-void
:cond_52
add-int/lit8 v3, v3, 0x1
goto :goto_30
:catch_55
move-exception v9
move-object v1, v9
:try_start_57
new-instance v9, Ljava/security/cert/CertificateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Unable to write KeyStore: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V
throw v9
:try_end_74
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_57 .. :try_end_74} :catch_74
.catch Ljava/security/KeyStoreException; {:try_start_57 .. :try_end_74} :catch_9d
:catch_74
move-exception v9
move-object v1, v9
const-string v9, "TrustManagerFactory"
const-string v9, "Unable to get X509 Trust Manager "
invoke-static {v12, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_51
:catch_7e
move-exception v9
move-object v1, v9
:try_start_80
new-instance v9, Ljava/security/cert/CertificateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Unable to write KeyStore: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V
throw v9
:try_end_9d
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_80 .. :try_end_9d} :catch_74
.catch Ljava/security/KeyStoreException; {:try_start_80 .. :try_end_9d} :catch_9d
:catch_9d
move-exception v9
move-object v1, v9
const-string v9, "TrustManagerFactory"
const-string v9, "Key Store exception while initializing TrustManagerFactory "
invoke-static {v12, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_51
:catch_a7
move-exception v9
move-object v1, v9
:try_start_a9
new-instance v9, Ljava/security/cert/CertificateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Unable to write KeyStore: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V
throw v9
:try_end_c6
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_a9 .. :try_end_c6} :catch_74
.catch Ljava/security/KeyStoreException; {:try_start_a9 .. :try_end_c6} :catch_9d
.end method
.method public static get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
.registers 3
if-eqz p1, :cond_7
invoke-static {p0}, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;
move-result-object v0
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->unsecureTrustManager:Ljavax/net/ssl/X509TrustManager;
goto :goto_6
.end method
.method public static getKeyStore()Ljava/security/KeyStore;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
return-object v0
.end method
.method public static getLastCertChain()[Ljava/security/cert/X509Certificate;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->lastCertChain:[Ljava/security/cert/X509Certificate;
return-object v0
.end method
.method public static setLastCertChain([Ljava/security/cert/X509Certificate;)V
.registers 1
sput-object p0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->lastCertChain:[Ljava/security/cert/X509Certificate;
return-void
.end method