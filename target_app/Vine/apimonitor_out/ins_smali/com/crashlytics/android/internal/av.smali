.class public Lcom/crashlytics/android/internal/av;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/crashlytics/android/internal/q;
.field private b:Lcom/crashlytics/android/internal/aG;
.field private c:Ljavax/net/ssl/SSLSocketFactory;
.field private d:Z
.method public constructor <init>()V
.registers 2
new-instance v0, Lcom/crashlytics/android/internal/r;
invoke-direct {v0}, Lcom/crashlytics/android/internal/r;-><init>()V
invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/av;-><init>(Lcom/crashlytics/android/internal/q;)V
return-void
.end method
.method public constructor <init>(Lcom/crashlytics/android/internal/q;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/crashlytics/android/internal/av;->a:Lcom/crashlytics/android/internal/q;
return-void
.end method
.method private declared-synchronized a()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-boolean v0, p0, Lcom/crashlytics/android/internal/av;->d:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/crashlytics/android/internal/av;->c:Ljavax/net/ssl/SSLSocketFactory;
:try_end_7
.catchall {:try_start_2 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method private static a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
.registers 5
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
move-result-object v1
invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
move-result-object v2
invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_10
:goto_f
return v0
:cond_10
:try_start_10
invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
:try_end_17
.catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19
const/4 v0, 0x1
goto :goto_f
:catch_19
move-exception v1
goto :goto_f
.end method
.method public static a([Ljava/security/cert/X509Certificate;Lcom/crashlytics/android/internal/aI;)[Ljava/security/cert/X509Certificate;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v3, Ljava/util/LinkedList;
invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
aget-object v0, p0, v2
invoke-virtual {p1, v0}, Lcom/crashlytics/android/internal/aI;->a(Ljava/security/cert/X509Certificate;)Z
move-result v0
if-eqz v0, :cond_5d
move v0, v1
:goto_10
aget-object v2, p0, v2
invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
move v2, v0
move v0, v1
:goto_17
array-length v4, p0
if-ge v0, v4, :cond_37
aget-object v4, p0, v0
invoke-virtual {p1, v4}, Lcom/crashlytics/android/internal/aI;->a(Ljava/security/cert/X509Certificate;)Z
move-result v4
if-eqz v4, :cond_23
move v2, v1
:cond_23
aget-object v4, p0, v0
add-int/lit8 v5, v0, -0x1
aget-object v5, p0, v5
invoke-static {v4, v5}, Lcom/crashlytics/android/internal/av;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
move-result v4
if-eqz v4, :cond_37
aget-object v4, p0, v0
invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_37
add-int/lit8 v0, v0, -0x1
aget-object v0, p0, v0
invoke-virtual {p1, v0}, Lcom/crashlytics/android/internal/aI;->b(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
move-result-object v0
if-eqz v0, :cond_5b
invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_44
if-eqz v1, :cond_53
invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
move-result v0
new-array v0, v0, [Ljava/security/cert/X509Certificate;
invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/security/cert/X509Certificate;
return-object v0
:cond_53
new-instance v0, Ljava/security/cert/CertificateException;
const-string v1, "Didn\'t find a trust anchor in chain cleanup!"
invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5b
move v1, v2
goto :goto_44
:cond_5d
move v0, v2
goto :goto_10
.end method
.method private declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/crashlytics/android/internal/av;->c:Ljavax/net/ssl/SSLSocketFactory;
if-nez v0, :cond_f
iget-boolean v0, p0, Lcom/crashlytics/android/internal/av;->d:Z
if-nez v0, :cond_f
invoke-direct {p0}, Lcom/crashlytics/android/internal/av;->c()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
iput-object v0, p0, Lcom/crashlytics/android/internal/av;->c:Ljavax/net/ssl/SSLSocketFactory;
:cond_f
iget-object v0, p0, Lcom/crashlytics/android/internal/av;->c:Ljavax/net/ssl/SSLSocketFactory;
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-object v0
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized c()Ljavax/net/ssl/SSLSocketFactory;
.registers 7
const/4 v1, 0x0
monitor-enter p0
const/4 v0, 0x1
:try_start_3
iput-boolean v0, p0, Lcom/crashlytics/android/internal/av;->d:Z
:try_start_5
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_45
iget-object v0, p0, Lcom/crashlytics/android/internal/av;->b:Lcom/crashlytics/android/internal/aG;
const-string v2, "TLS"
invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v2
new-instance v3, Lcom/crashlytics/android/internal/aI;
invoke-interface {v0}, Lcom/crashlytics/android/internal/aG;->a()Ljava/io/InputStream;
move-result-object v4
invoke-interface {v0}, Lcom/crashlytics/android/internal/aG;->b()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v5}, Lcom/crashlytics/android/internal/aI;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
new-instance v4, Lcom/crashlytics/android/internal/aH;
invoke-direct {v4, v3, v0}, Lcom/crashlytics/android/internal/aH;-><init>(Lcom/crashlytics/android/internal/aI;Lcom/crashlytics/android/internal/aG;)V
const/4 v0, 0x0
const/4 v3, 0x1
new-array v3, v3, [Ljavax/net/ssl/TrustManager;
const/4 v5, 0x0
aput-object v4, v3, v5
const/4 v4, 0x0
invoke-virtual {v2, v0, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
iget-object v2, p0, Lcom/crashlytics/android/internal/av;->a:Lcom/crashlytics/android/internal/q;
const-string v3, "Crashlytics"
const-string v4, "Custom SSL pinning enabled"
invoke-interface {v2, v3, v4}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_37
:try_end_37
.catchall {:try_start_5 .. :try_end_37} :catchall_45
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_39
monitor-exit p0
return-object v0
:catch_39
move-exception v0
:try_start_3a
iget-object v2, p0, Lcom/crashlytics/android/internal/av;->a:Lcom/crashlytics/android/internal/q;
const-string v3, "Crashlytics"
const-string v4, "Exception while validating pinned certs"
invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_43
.catchall {:try_start_3a .. :try_end_43} :catchall_45
move-object v0, v1
goto :goto_37
:catchall_45
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Lcom/crashlytics/android/internal/ax;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;
.registers 4
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/crashlytics/android/internal/av;->a(Lcom/crashlytics/android/internal/ax;Ljava/lang/String;Ljava/util/Map;)Lcom/crashlytics/android/internal/ay;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/crashlytics/android/internal/ax;Ljava/lang/String;Ljava/util/Map;)Lcom/crashlytics/android/internal/ay;
.registers 7
const/4 v2, 0x1
sget-object v0, Lcom/crashlytics/android/internal/aw;->a:[I
invoke-virtual {p1}, Lcom/crashlytics/android/internal/ax;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_50
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Unsupported HTTP method!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_14
invoke-static {p2, p3, v2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/crashlytics/android/internal/ay;
move-result-object v0
move-object v1, v0
:goto_19
if-nez p2, :cond_44
const/4 v0, 0x0
:goto_1c
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/crashlytics/android/internal/av;->b:Lcom/crashlytics/android/internal/aG;
if-eqz v0, :cond_31
invoke-direct {p0}, Lcom/crashlytics/android/internal/av;->b()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v2
if-eqz v2, :cond_31
invoke-virtual {v1}, Lcom/crashlytics/android/internal/ay;->a()Ljava/net/HttpURLConnection;
move-result-object v0
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
:cond_31
return-object v1
:pswitch_32
invoke-static {p2, p3, v2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/crashlytics/android/internal/ay;
move-result-object v0
move-object v1, v0
goto :goto_19
:pswitch_38
invoke-static {p2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/CharSequence;)Lcom/crashlytics/android/internal/ay;
move-result-object v0
move-object v1, v0
goto :goto_19
:pswitch_3e
invoke-static {p2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/CharSequence;)Lcom/crashlytics/android/internal/ay;
move-result-object v0
move-object v1, v0
goto :goto_19
:cond_44
invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v2, "https"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
goto :goto_1c
nop
:pswitch_data_50
.packed-switch 0x1
:pswitch_14
:pswitch_32
:pswitch_38
:pswitch_3e
.end packed-switch
.end method
.method public a(Lcom/crashlytics/android/internal/aG;)V
.registers 3
iget-object v0, p0, Lcom/crashlytics/android/internal/av;->b:Lcom/crashlytics/android/internal/aG;
if-eq v0, p1, :cond_9
iput-object p1, p0, Lcom/crashlytics/android/internal/av;->b:Lcom/crashlytics/android/internal/aG;
invoke-direct {p0}, Lcom/crashlytics/android/internal/av;->a()V
:cond_9
return-void
.end method