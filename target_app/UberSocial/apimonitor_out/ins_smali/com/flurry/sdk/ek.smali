.class public Lcom/flurry/sdk/ek;
.super Lcom/flurry/sdk/fd;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static b:Ljavax/net/ssl/SSLContext;
.field private static c:Ljavax/net/ssl/HostnameVerifier;
.field private d:Ljava/lang/String;
.field private e:Lcom/flurry/sdk/ek$a;
.field private f:I
.field private i:I
.field private j:Z
.field private final k:Lcom/flurry/sdk/dp;
.field private l:Lcom/flurry/sdk/ek$c;
.field private m:Ljava/net/HttpURLConnection;
.field private n:Lorg/apache/http/client/HttpClient;
.field private o:Z
.field private p:Z
.field private q:Ljava/lang/Exception;
.field private r:I
.field private final s:Lcom/flurry/sdk/dp;
.field private final t:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/ek;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/flurry/sdk/fd;-><init>()V
const/16 v0, 0x2710
iput v0, p0, Lcom/flurry/sdk/ek;->f:I
const/16 v0, 0x3a98
iput v0, p0, Lcom/flurry/sdk/ek;->i:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/ek;->j:Z
new-instance v0, Lcom/flurry/sdk/dp;
invoke-direct {v0}, Lcom/flurry/sdk/dp;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;
const/4 v0, -0x1
iput v0, p0, Lcom/flurry/sdk/ek;->r:I
new-instance v0, Lcom/flurry/sdk/dp;
invoke-direct {v0}, Lcom/flurry/sdk/dp;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ek;->s:Lcom/flurry/sdk/dp;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ek;->t:Ljava/lang/Object;
return-void
.end method
.method static synthetic a(Lcom/flurry/sdk/ek;)Ljava/net/HttpURLConnection;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
return-object v0
.end method
.method static synthetic a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
.registers 2
invoke-direct {p0, p1}, Lcom/flurry/sdk/ek;->a(Ljava/io/OutputStream;)V
return-void
.end method
.method private a(Ljava/io/InputStream;)V
.registers 3
iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z
move-result v0
if-nez v0, :cond_4
if-eqz p1, :cond_4
iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;
invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;Ljava/io/InputStream;)V
goto :goto_4
.end method
.method private a(Ljava/io/OutputStream;)V
.registers 3
iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z
move-result v0
if-nez v0, :cond_4
if-eqz p1, :cond_4
iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;
invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
goto :goto_4
.end method
.method static synthetic b(Lcom/flurry/sdk/ek;)Lorg/apache/http/client/HttpClient;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;
return-object v0
.end method
.method private static declared-synchronized m()Ljavax/net/ssl/SSLContext;
.registers 5
const-class v1, Lcom/flurry/sdk/ek;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;
if-eqz v0, :cond_b
sget-object v0, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_37
:goto_9
monitor-exit v1
return-object v0
:cond_b
const/4 v0, 0x1
:try_start_c
new-array v0, v0, [Ljavax/net/ssl/TrustManager;
const/4 v2, 0x0
new-instance v3, Lcom/flurry/sdk/eg;
const/4 v4, 0x0
invoke-direct {v3, v4}, Lcom/flurry/sdk/eg;-><init>(Ljava/security/KeyStore;)V
aput-object v3, v0, v2
const-string v2, "TLS"
invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
move-result-object v2
sput-object v2, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;
sget-object v2, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;
const/4 v3, 0x0
new-instance v4, Ljava/security/SecureRandom;
invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V
invoke-virtual {v2, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
:try_start_2a
:try_end_2a
.catchall {:try_start_c .. :try_end_2a} :catchall_37
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2d
:goto_2a
sget-object v0, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;
goto :goto_9
:catch_2d
move-exception v0
const/4 v2, 0x3
sget-object v3, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;
const-string v4, "Exception creating SSL context"
invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_36
.catchall {:try_start_2a .. :try_end_36} :catchall_37
goto :goto_2a
:catchall_37
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static declared-synchronized n()Ljavax/net/ssl/HostnameVerifier;
.registers 2
const-class v1, Lcom/flurry/sdk/ek;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/ek;->c:Ljavax/net/ssl/HostnameVerifier;
if-eqz v0, :cond_b
sget-object v0, Lcom/flurry/sdk/ek;->c:Ljavax/net/ssl/HostnameVerifier;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_15
:goto_9
monitor-exit v1
return-object v0
:cond_b
:try_start_b
new-instance v0, Lcom/flurry/sdk/ee;
invoke-direct {v0}, Lcom/flurry/sdk/ee;-><init>()V
sput-object v0, Lcom/flurry/sdk/ek;->c:Ljavax/net/ssl/HostnameVerifier;
sget-object v0, Lcom/flurry/sdk/ek;->c:Ljavax/net/ssl/HostnameVerifier;
:try_end_14
.catchall {:try_start_b .. :try_end_14} :catchall_15
goto :goto_9
:catchall_15
move-exception v0
monitor-exit v1
throw v0
.end method
.method private o()V
.registers 8
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
new-instance v0, Ljava/net/URL;
iget-object v1, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_start_d
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
iput-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
iget v1, p0, Lcom/flurry/sdk/ek;->f:I
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
iget v1, p0, Lcom/flurry/sdk/ek;->i:I
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v1}, Lcom/flurry/sdk/ek$a;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
iget-boolean v1, p0, Lcom/flurry/sdk/ek;->j:Z
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
iget-object v3, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v1, v3}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
invoke-static {}, Lcom/flurry/sdk/el;->d()Z
move-result v0
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
invoke-static {}, Lcom/flurry/sdk/ek;->n()Ljavax/net/ssl/HostnameVerifier;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
invoke-static {}, Lcom/flurry/sdk/ek;->m()Ljavax/net/ssl/SSLContext;
move-result-object v1
invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
:cond_6a
iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;
invoke-virtual {v0}, Lcom/flurry/sdk/dp;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_74
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_97
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v4, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:try_end_91
.catchall {:try_start_d .. :try_end_91} :catchall_92
goto :goto_74
:catchall_92
move-exception v0
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
throw v0
:cond_97
:try_start_97
sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b4
sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b4
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
const-string v1, "Accept-Encoding"
const-string v3, ""
invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:cond_b4
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
:try_end_b6
.catchall {:try_start_97 .. :try_end_b6} :catchall_92
if-eqz v0, :cond_bd
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
goto/16 :goto_5
:try_start_bd
:cond_bd
sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
:try_end_c4
.catchall {:try_start_bd .. :try_end_c4} :catchall_92
move-result v0
if-eqz v0, :cond_db
:try_start_c7
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
:try_end_cc
.catchall {:try_start_c7 .. :try_end_cc} :catchall_11d
move-result-object v3
:try_start_cd
new-instance v1, Ljava/io/BufferedOutputStream;
invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_d2
:try_end_d2
.catchall {:try_start_cd .. :try_end_d2} :catchall_171
invoke-direct {p0, v1}, Lcom/flurry/sdk/ek;->a(Ljava/io/OutputStream;)V
:try_end_d5
.catchall {:try_start_d2 .. :try_end_d5} :catchall_175
:try_start_d5
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
:cond_db
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
iput v0, p0, Lcom/flurry/sdk/ek;->r:I
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_f1
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_126
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_107
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_f1
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iget-object v5, p0, Lcom/flurry/sdk/ek;->s:Lcom/flurry/sdk/dp;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v6
invoke-virtual {v5, v6, v1}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_107
:catchall_11d
move-exception v0
move-object v1, v2
:goto_11f
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:cond_126
sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13f
sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
:try_end_137
.catchall {:try_start_d5 .. :try_end_137} :catchall_92
move-result v0
if-nez v0, :cond_13f
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
goto/16 :goto_5
:cond_13f
:try_start_13f
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
:try_end_141
.catchall {:try_start_13f .. :try_end_141} :catchall_92
if-eqz v0, :cond_148
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
goto/16 :goto_5
:cond_148
:try_start_148
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_14d
.catchall {:try_start_148 .. :try_end_14d} :catchall_161
move-result-object v3
:try_start_14e
new-instance v1, Ljava/io/BufferedInputStream;
invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_153
:try_end_153
.catchall {:try_start_14e .. :try_end_153} :catchall_16a
invoke-direct {p0, v1}, Lcom/flurry/sdk/ek;->a(Ljava/io/InputStream;)V
:try_start_156
:try_end_156
.catchall {:try_start_153 .. :try_end_156} :catchall_16d
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
:try_end_15c
.catchall {:try_start_156 .. :try_end_15c} :catchall_92
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
goto/16 :goto_5
:catchall_161
move-exception v0
move-object v1, v2
:goto_163
:try_start_163
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:catchall_16a
:try_end_16a
.catchall {:try_start_163 .. :try_end_16a} :catchall_92
move-exception v0
move-object v1, v3
goto :goto_163
:catchall_16d
move-exception v0
move-object v2, v1
move-object v1, v3
goto :goto_163
:catchall_171
move-exception v0
move-object v1, v2
move-object v2, v3
goto :goto_11f
:catchall_175
move-exception v0
move-object v2, v3
goto :goto_11f
.end method
.method private p()V
.registers 13
const/4 v3, 0x0
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
move-result-object v2
iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;
invoke-virtual {v0}, Lcom/flurry/sdk/dp;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_19
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
:cond_35
sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_4e
sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_4e
const-string v0, "Accept-Encoding"
invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->removeHeaders(Ljava/lang/String;)V
:cond_4e
sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_63
move-object v0, v2
check-cast v0, Lorg/apache/http/client/methods/HttpPost;
new-instance v1, Lcom/flurry/sdk/ek$1;
invoke-direct {v1, p0}, Lcom/flurry/sdk/ek$1;-><init>(Lcom/flurry/sdk/ek;)V
invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:cond_63
:try_start_63
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
iget v1, p0, Lcom/flurry/sdk/ek;->f:I
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
iget v1, p0, Lcom/flurry/sdk/ek;->i:I
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
const-string v1, "http.protocol.handle-redirects"
iget-boolean v5, p0, Lcom/flurry/sdk/ek;->j:Z
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-interface {v0, v1, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-static {v0}, Lcom/flurry/sdk/eh;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;
iget-object v0, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;
invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v2
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
if-eqz v0, :cond_9a
new-instance v0, Ljava/lang/Exception;
const-string v1, "Request cancelled"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:try_end_95
.catchall {:try_start_63 .. :try_end_95} :catchall_95
:catchall_95
move-exception v0
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
throw v0
:cond_9a
if-eqz v2, :cond_10d
:try_start_9c
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
iput v0, p0, Lcom/flurry/sdk/ek;->r:I
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;
move-result-object v5
if-eqz v5, :cond_d0
array-length v6, v5
move v1, v4
:goto_ae
if-ge v1, v6, :cond_d0
aget-object v0, v5, v1
invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
move-result-object v7
array-length v8, v7
move v0, v4
:goto_b8
if-ge v0, v8, :cond_cc
aget-object v9, v7, v0
iget-object v10, p0, Lcom/flurry/sdk/ek;->s:Lcom/flurry/sdk/dp;
invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v9
invoke-virtual {v10, v11, v9}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_b8
:cond_cc
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_ae
:cond_d0
sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_e9
sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
:try_end_e1
.catchall {:try_start_9c .. :try_end_e1} :catchall_95
move-result v0
if-nez v0, :cond_e9
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
goto/16 :goto_6
:cond_e9
:try_start_e9
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
if-eqz v0, :cond_f5
new-instance v0, Ljava/lang/Exception;
const-string v1, "Request cancelled"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_f5
invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
:try_end_f8
.catchall {:try_start_e9 .. :try_end_f8} :catchall_95
move-result-object v0
if-eqz v0, :cond_10d
:try_start_fb
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
:try_end_fe
.catchall {:try_start_fb .. :try_end_fe} :catchall_112
move-result-object v2
:try_start_ff
new-instance v1, Ljava/io/BufferedInputStream;
invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_104
.catchall {:try_start_ff .. :try_end_104} :catchall_11b
:try_start_104
invoke-direct {p0, v1}, Lcom/flurry/sdk/ek;->a(Ljava/io/InputStream;)V
:try_end_107
.catchall {:try_start_104 .. :try_end_107} :catchall_11f
:try_start_107
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
:cond_10d
:try_end_10d
.catchall {:try_start_107 .. :try_end_10d} :catchall_95
invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V
goto/16 :goto_6
:catchall_112
move-exception v0
move-object v1, v3
:try_start_114
:goto_114
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:try_end_11b
.catchall {:try_start_114 .. :try_end_11b} :catchall_95
:catchall_11b
move-exception v0
move-object v1, v3
move-object v3, v2
goto :goto_114
:catchall_11f
move-exception v0
move-object v3, v2
goto :goto_114
.end method
.method private q()V
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z
move-result v0
if-nez v0, :cond_4
iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;
invoke-interface {v0, p0}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;)V
goto :goto_4
.end method
.method private r()V
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->o:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/ek;->o:Z
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_11
iget-object v0, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;
invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
goto :goto_4
.end method
.method private s()V
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->o:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/ek;->o:Z
iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;
if-nez v0, :cond_10
iget-object v0, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;
if-eqz v0, :cond_4
:cond_10
new-instance v0, Lcom/flurry/sdk/ek$2;
invoke-direct {v0, p0}, Lcom/flurry/sdk/ek$2;-><init>(Lcom/flurry/sdk/ek;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
goto :goto_4
.end method
.method public a()V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
:try_end_2
.catchall {:try_start_0 .. :try_end_2} :catchall_c5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_7b
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V
:goto_7
return-void
:cond_8
:try_start_8
invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z
move-result v0
if-nez v0, :cond_31
const/4 v0, 0x3
sget-object v1, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Network not available, aborting http request: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:try_end_2d
.catchall {:try_start_8 .. :try_end_2d} :catchall_c5
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_7b
invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V
goto :goto_7
:cond_31
:try_start_31
iget-object v0, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
if-eqz v0, :cond_3f
sget-object v0, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;
iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
:cond_3f
sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;
iput-object v0, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
:cond_43
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_77
invoke-direct {p0}, Lcom/flurry/sdk/ek;->o()V
:goto_4c
const/4 v0, 0x4
sget-object v1, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "HTTP status: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/flurry/sdk/ek;->r:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " for url: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:try_end_73
.catchall {:try_start_31 .. :try_end_73} :catchall_c5
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_73} :catch_7b
invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V
goto :goto_7
:try_start_77
:cond_77
invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V
:try_end_7a
.catchall {:try_start_77 .. :try_end_7a} :catchall_c5
.catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b
goto :goto_4c
:catch_7b
move-exception v0
const/4 v1, 0x4
:try_start_7d
sget-object v2, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "HTTP status: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/flurry/sdk/ek;->r:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " for url: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x3
sget-object v2, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Exception during http request: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
iput-object v0, p0, Lcom/flurry/sdk/ek;->q:Ljava/lang/Exception;
:try_end_c0
.catchall {:try_start_7d .. :try_end_c0} :catchall_c5
invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V
goto/16 :goto_7
:catchall_c5
move-exception v0
invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V
throw v0
.end method
.method public a(Lcom/flurry/sdk/ek$a;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;
return-void
.end method
.method public a(Lcom/flurry/sdk/ek$c;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;
invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/flurry/sdk/ek;->j:Z
return-void
.end method
.method public b(Ljava/lang/String;)Ljava/util/List;
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
iget-object v0, p0, Lcom/flurry/sdk/ek;->s:Lcom/flurry/sdk/dp;
invoke-virtual {v0, p1}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
goto :goto_3
.end method
.method public b()Z
.registers 3
iget-object v1, p0, Lcom/flurry/sdk/ek;->t:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
monitor-exit v1
return v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public c()Z
.registers 2
invoke-virtual {p0}, Lcom/flurry/sdk/ek;->f()Z
move-result v0
if-nez v0, :cond_e
invoke-virtual {p0}, Lcom/flurry/sdk/ek;->d()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public d()Z
.registers 3
iget v0, p0, Lcom/flurry/sdk/ek;->r:I
const/16 v1, 0xc8
if-lt v0, v1, :cond_e
iget v0, p0, Lcom/flurry/sdk/ek;->r:I
const/16 v1, 0x190
if-ge v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/flurry/sdk/ek;->r:I
return v0
.end method
.method public f()Z
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ek;->q:Ljava/lang/Exception;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public g()V
.registers 3
iget-object v1, p0, Lcom/flurry/sdk/ek;->t:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x1
:try_start_4
iput-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
monitor-exit v1
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_b
invoke-direct {p0}, Lcom/flurry/sdk/ek;->s()V
return-void
:catchall_b
move-exception v0
:try_start_c
monitor-exit v1
:try_end_d
.catchall {:try_start_c .. :try_end_d} :catchall_b
throw v0
.end method
.method public h()V
.registers 1
invoke-virtual {p0}, Lcom/flurry/sdk/ek;->g()V
return-void
.end method