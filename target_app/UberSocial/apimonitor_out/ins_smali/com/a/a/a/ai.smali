.class final Lcom/a/a/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/net/ssl/X509TrustManager;
.field private final a:[Ljavax/net/ssl/TrustManager;
.field private final b:Lcom/a/a/a/aj;
.field private final c:J
.field private final d:Ljava/util/List;
.field private final e:Ljava/util/Set;
.method public constructor <init>(Lcom/a/a/a/aj;Lcom/a/a/a/ah;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/a/a/a/ai;->d:Ljava/util/List;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/a/a/a/ai;->e:Ljava/util/Set;
invoke-static {p1}, Lcom/a/a/a/ai;->a(Lcom/a/a/a/aj;)[Ljavax/net/ssl/TrustManager;
move-result-object v0
iput-object v0, p0, Lcom/a/a/a/ai;->a:[Ljavax/net/ssl/TrustManager;
iput-object p1, p0, Lcom/a/a/a/ai;->b:Lcom/a/a/a/aj;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/a/a/a/ai;->c:J
invoke-interface {p2}, Lcom/a/a/a/ah;->c()[Ljava/lang/String;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_27
if-ge v0, v2, :cond_37
aget-object v3, v1, v0
iget-object v4, p0, Lcom/a/a/a/ai;->d:Ljava/util/List;
invoke-static {v3}, Lcom/a/a/a/ai;->a(Ljava/lang/String;)[B
move-result-object v3
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_37
return-void
.end method
.method private a(Ljava/security/cert/X509Certificate;)Z
.registers 5
:try_start_0
const-string v0, "SHA1"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
move-result-object v1
invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v1
iget-object v0, p0, Lcom/a/a/a/ai;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_18
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
:try_end_27
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_27} :catch_2e
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_2b
return v0
:cond_2c
const/4 v0, 0x0
goto :goto_2b
:catch_2e
move-exception v0
new-instance v1, Ljava/security/cert/CertificateException;
invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private static a(Ljava/lang/String;)[B
.registers 8
const/16 v6, 0x10
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
div-int/lit8 v0, v1, 0x2
new-array v2, v0, [B
const/4 v0, 0x0
:goto_b
if-ge v0, v1, :cond_2a
div-int/lit8 v3, v0, 0x2
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I
move-result v4
shl-int/lit8 v4, v4, 0x4
add-int/lit8 v5, v0, 0x1
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I
move-result v5
add-int/2addr v4, v5
int-to-byte v4, v4
aput-byte v4, v2, v3
add-int/lit8 v0, v0, 0x2
goto :goto_b
:cond_2a
return-object v2
.end method
.method private static a(Lcom/a/a/a/aj;)[Ljavax/net/ssl/TrustManager;
.registers 3
:try_start_0
const-string v0, "X509"
invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
move-result-object v0
iget-object v1, p0, Lcom/a/a/a/aj;->a:Ljava/security/KeyStore;
invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
:try_end_e
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10
.catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_17
move-result-object v0
return-object v0
:catch_10
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:catch_17
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/security/cert/CertificateException;
const-string v1, "Client certificates not supported!"
invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 11
const/4 v1, 0x0
iget-object v0, p0, Lcom/a/a/a/ai;->e:Ljava/util/Set;
aget-object v2, p1, v1
invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:goto_b
return-void
:cond_c
iget-object v3, p0, Lcom/a/a/a/ai;->a:[Ljavax/net/ssl/TrustManager;
array-length v4, v3
move v2, v1
:goto_10
if-ge v2, v4, :cond_1d
aget-object v0, v3, v2
check-cast v0, Ljavax/net/ssl/X509TrustManager;
invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_10
:cond_1d
iget-wide v2, p0, Lcom/a/a/a/ai;->c:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_6c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lcom/a/a/a/ai;->c:J
sub-long/2addr v2, v4
const-wide v4, 0x39ef8b000L
cmp-long v0, v2, v4
if-lez v0, :cond_6c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Certificate pins are stale, ("
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-wide v6, p0, Lcom/a/a/a/ai;->c:J
sub-long/2addr v4, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " millis vs 15552000000"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " millis) falling back to system trust."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_64
iget-object v0, p0, Lcom/a/a/a/ai;->e:Ljava/util/Set;
aget-object v1, p1, v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_6c
iget-object v0, p0, Lcom/a/a/a/ai;->b:Lcom/a/a/a/aj;
invoke-static {p1, v0}, Lcom/a/a/a/bw;->a([Ljava/security/cert/X509Certificate;Lcom/a/a/a/aj;)[Ljava/security/cert/X509Certificate;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_74
if-ge v0, v3, :cond_81
aget-object v4, v2, v0
invoke-direct {p0, v4}, Lcom/a/a/a/ai;->a(Ljava/security/cert/X509Certificate;)Z
move-result v4
if-nez v4, :cond_64
add-int/lit8 v0, v0, 0x1
goto :goto_74
:cond_81
new-instance v0, Ljava/security/cert/CertificateException;
const-string v1, "No valid pins found in chain!"
invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.registers 2
const/4 v0, 0x0
return-object v0
.end method