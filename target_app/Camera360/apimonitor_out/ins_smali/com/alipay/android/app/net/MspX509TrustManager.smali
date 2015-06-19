.class public Lcom/alipay/android/app/net/MspX509TrustManager;
.super Ljava/lang/Object;
.source "MspX509TrustManager.java"
.implements Ljavax/net/ssl/X509TrustManager;
.field private caCertList:Ljava/util/List;
.field private defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
.method public constructor <init>(Ljava/security/KeyStore;)V
.registers 10
const/4 v7, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v7, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->caCertList:Ljava/util/List;
invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
move-result-object v0
:cond_11
:goto_11
invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v6
if-nez v6, :cond_2c
:try_start_17
invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v4
const/4 v6, 0x0
invoke-virtual {v4, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
move-result-object v5
const/4 v3, 0x0
:goto_28
array-length v6, v5
:try_end_29
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_4b
if-lt v3, v6, :cond_3e
:goto_2b
return-void
:cond_2c
invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-virtual {p1, v6}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
move-result-object v1
if-eqz v1, :cond_11
iget-object v6, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->caCertList:Ljava/util/List;
invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
:try_start_3e
:cond_3e
aget-object v6, v5, v3
instance-of v6, v6, Ljavax/net/ssl/X509TrustManager;
if-eqz v6, :cond_4f
aget-object v6, v5, v3
check-cast v6, Ljavax/net/ssl/X509TrustManager;
iput-object v6, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_4b
goto :goto_2b
:catch_4b
move-exception v2
iput-object v7, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
goto :goto_2b
:cond_4f
add-int/lit8 v3, v3, 0x1
goto :goto_28
.end method
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 15
const/4 v8, 0x0
aget-object v7, p1, v8
invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
move-result-object v7
invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;
move-result-object v6
const/4 v4, 0x0
:goto_c
array-length v7, p1
add-int/lit8 v7, v7, -0x1
if-lt v4, v7, :cond_3c
const-string/jumbo v7, ".alipay.com"
invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_23
const-string/jumbo v7, ".alipaydev.com"
invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_78
:cond_23
iget-object v7, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->caCertList:Ljava/util/List;
if-eqz v7, :cond_78
iget-object v7, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->caCertList:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_2d
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_56
new-instance v7, Ljava/security/cert/CertificateException;
const-string/jumbo v8, "Can not auth the alipay server!"
invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V
throw v7
:cond_3c
aget-object v2, p1, v4
add-int/lit8 v7, v4, 0x1
aget-object v5, p1, v7
:try_start_42
invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V
invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
:try_end_4c
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4c} :catch_4f
add-int/lit8 v4, v4, 0x1
goto :goto_c
:catch_4f
move-exception v3
new-instance v7, Ljava/security/cert/CertificateException;
invoke-direct {v7, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V
throw v7
:cond_56
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/security/cert/Certificate;
array-length v10, p1
move v7, v8
:goto_5e
if-ge v7, v10, :cond_2d
aget-object v1, p1, v7
:try_start_62
invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V
invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
move-result-object v11
invoke-virtual {v1, v11}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
:goto_6c
:try_end_6c
.catch Ljava/security/SignatureException; {:try_start_62 .. :try_end_6c} :catch_82
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_62 .. :try_end_6c} :catch_74
.catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6c} :catch_6d
:cond_6c
return-void
:catch_6d
move-exception v3
new-instance v7, Ljava/security/cert/CertificateException;
invoke-direct {v7, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V
throw v7
:catch_74
move-exception v11
:goto_75
add-int/lit8 v7, v7, 0x1
goto :goto_5e
:cond_78
iget-object v7, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
if-eqz v7, :cond_6c
iget-object v7, p0, Lcom/alipay/android/app/net/MspX509TrustManager;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
invoke-interface {v7, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
goto :goto_6c
:catch_82
move-exception v11
goto :goto_75
.end method
.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.registers 2
const/4 v0, 0x0
return-object v0
.end method