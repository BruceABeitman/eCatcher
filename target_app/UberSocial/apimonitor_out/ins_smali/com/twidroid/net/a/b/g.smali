.class  Lcom/twidroid/net/a/b/g;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field private static final c:Ljava/lang/String; = "RESULT_CANCELLED_BY_USER"
.field  a:Lcom/twidroid/net/a/b/i;
.field final synthetic b:Lcom/twidroid/net/a/b/b;
.method private constructor <init>(Lcom/twidroid/net/a/b/b;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/net/a/b/b;Lcom/twidroid/net/a/b/b$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/net/a/b/g;-><init>(Lcom/twidroid/net/a/b/b;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/a/b/g;[Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/g;->e([Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/net/a/b/i;
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/g;->a([Lcom/twidroid/net/a/b/i;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Lcom/twidroid/net/a/b/i;)Ljava/lang/String;
.registers 10
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/twidroid/net/a/b/b;->f:Z
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
invoke-virtual {v0}, Lcom/twidroid/net/a/b/c;->b()Landroid/content/Context;
move-result-object v0
const-string v1, "power"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/16 v1, 0x1a
const-string v2, "Android.Uploader"
invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v2
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
new-instance v1, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;
invoke-direct {v1}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V
new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v4
invoke-virtual {v4, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v5, Lorg/apache/http/conn/scheme/Scheme;
const-string v6, "https"
const/16 v7, 0x1bb
invoke-direct {v5, v6, v4, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v4, Lorg/apache/http/impl/conn/SingleClientConnManager;
invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v5
invoke-direct {v4, v5, v3}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
iget-object v3, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v0
invoke-direct {v5, v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
iput-object v5, v3, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v0, v0, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v0
const-string v3, "http.protocol.version"
sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
:try_start_6c
invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
new-instance v1, Lorg/apache/http/client/methods/HttpPost;
iget-object v3, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v3, v3, Lcom/twidroid/net/a/b/i;->a:Ljava/lang/String;
invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
iput-object v1, v0, Lcom/twidroid/net/a/b/b;->g:Lorg/apache/http/client/methods/HttpPost;
new-instance v3, Lcom/ubermedia/net/h;
sget-object v0, Lorg/apache/a/a/a/d;->b:Lorg/apache/a/a/a/d;
new-instance v1, Lcom/twidroid/net/a/b/g$1;
invoke-direct {v1, p0}, Lcom/twidroid/net/a/b/g$1;-><init>(Lcom/twidroid/net/a/b/g;)V
invoke-direct {v3, v0, v1}, Lcom/ubermedia/net/h;-><init>(Lorg/apache/a/a/a/d;Lcom/ubermedia/net/j;)V
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v1, v1, Lcom/twidroid/net/a/b/i;->g:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string v1, "filename"
new-instance v4, Lorg/apache/a/a/a/a/g;
iget-object v5, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v5, v5, Lcom/twidroid/net/a/b/i;->g:Ljava/lang/String;
invoke-direct {v4, v5}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1, v4}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
new-instance v1, Lorg/apache/a/a/a/a;
iget-object v4, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v4, v4, Lcom/twidroid/net/a/b/i;->d:Ljava/lang/String;
new-instance v5, Lorg/apache/a/a/a/a/e;
iget-object v6, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v6, v6, Lcom/twidroid/net/a/b/i;->f:Ljava/lang/String;
invoke-direct {v5, v0, v6}, Lorg/apache/a/a/a/a/e;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-direct {v1, v4, v5}, Lorg/apache/a/a/a/a;-><init>(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
invoke-virtual {v3, v1}, Lcom/ubermedia/net/h;->a(Lorg/apache/a/a/a/a;)V
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_c0
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_100
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v5, Lorg/apache/a/a/a/a/g;
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v1, v1, Lcom/twidroid/net/a/b/i;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v6, "UTF-8"
invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v6
invoke-direct {v5, v1, v6}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invoke-virtual {v3, v0, v5}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
:try_end_e4
.catchall {:try_start_6c .. :try_end_e4} :catchall_233
.catch Lcom/twidroid/net/a/b/f; {:try_start_6c .. :try_end_e4} :catch_e5
.catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_e4} :catch_15e
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6c .. :try_end_e4} :catch_1dd
.catch Ljava/lang/Exception; {:try_start_6c .. :try_end_e4} :catch_1f9
goto :goto_c0
:catch_e5
move-exception v0
:try_start_e6
const-string v0, ""
:try_end_e8
.catchall {:try_start_e6 .. :try_end_e8} :catchall_233
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_ff
const-string v1, "PhotoProvider"
const-string v3, "++WakeLock released++"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
:goto_ff
:cond_ff
return-object v0
:try_start_100
:cond_100
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
invoke-virtual {v3}, Lcom/ubermedia/net/h;->getContentLength()J
move-result-wide v4
iput-wide v4, v0, Lcom/twidroid/net/a/b/b;->e:J
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v0, v0, Lcom/twidroid/net/a/b/b;->g:Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-boolean v0, v0, Lcom/twidroid/net/a/b/b;->f:Z
if-nez v0, :cond_12f
const-string v0, "RESULT_CANCELLED_BY_USER"
:try_end_117
.catchall {:try_start_100 .. :try_end_117} :catchall_233
.catch Lcom/twidroid/net/a/b/f; {:try_start_100 .. :try_end_117} :catch_e5
.catch Ljava/lang/IllegalStateException; {:try_start_100 .. :try_end_117} :catch_15e
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_100 .. :try_end_117} :catch_1dd
.catch Ljava/lang/Exception; {:try_start_100 .. :try_end_117} :catch_1f9
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_ff
const-string v1, "PhotoProvider"
const-string v3, "++WakeLock released++"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
goto :goto_ff
:try_start_12f
:cond_12f
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v0, v0, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->g:Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
new-instance v1, Ljava/io/BufferedReader;
new-instance v3, Ljava/io/InputStreamReader;
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
const-string v4, "UTF-8"
invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
:goto_154
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_179
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_15d
.catchall {:try_start_12f .. :try_end_15d} :catchall_233
.catch Lcom/twidroid/net/a/b/f; {:try_start_12f .. :try_end_15d} :catch_e5
.catch Ljava/lang/IllegalStateException; {:try_start_12f .. :try_end_15d} :catch_15e
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_12f .. :try_end_15d} :catch_1dd
.catch Ljava/lang/Exception; {:try_start_12f .. :try_end_15d} :catch_1f9
goto :goto_154
:catch_15e
move-exception v0
:try_start_15f
const-string v0, "RESULT_CANCELLED_BY_USER"
:try_end_161
.catchall {:try_start_15f .. :try_end_161} :catchall_233
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_ff
const-string v1, "PhotoProvider"
const-string v3, "++WakeLock released++"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
goto :goto_ff
:try_start_179
:cond_179
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v1, v1, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
if-eqz v1, :cond_191
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v1, v1, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
const/16 v3, 0x64
invoke-virtual {v1, v3}, Lcom/twidroid/net/a/b/c;->a(I)V
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v1, v1, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
const-string v3, ""
invoke-virtual {v1, v3}, Lcom/twidroid/net/a/b/c;->a(Ljava/lang/String;)V
:cond_191
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v1, v1, Lcom/twidroid/net/a/b/i;->c:[Lorg/apache/http/Header;
if-nez v1, :cond_1ba
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/b/b;->a(Ljava/lang/String;)Ljava/lang/String;
:try_end_1a0
.catchall {:try_start_179 .. :try_end_1a0} :catchall_233
.catch Lcom/twidroid/net/a/b/f; {:try_start_179 .. :try_end_1a0} :catch_e5
.catch Ljava/lang/IllegalStateException; {:try_start_179 .. :try_end_1a0} :catch_15e
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_179 .. :try_end_1a0} :catch_1dd
.catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1a0} :catch_1f9
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_ff
const-string v1, "PhotoProvider"
const-string v3, "++WakeLock released++"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
goto/16 :goto_ff
:try_start_1ba
:cond_1ba
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/b/b;->b(Ljava/lang/String;)Ljava/lang/String;
:try_end_1c3
.catchall {:try_start_1ba .. :try_end_1c3} :catchall_233
.catch Lcom/twidroid/net/a/b/f; {:try_start_1ba .. :try_end_1c3} :catch_e5
.catch Ljava/lang/IllegalStateException; {:try_start_1ba .. :try_end_1c3} :catch_15e
.catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1ba .. :try_end_1c3} :catch_1dd
.catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1c3} :catch_1f9
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_ff
const-string v1, "PhotoProvider"
const-string v3, "++WakeLock released++"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
goto/16 :goto_ff
:catch_1dd
move-exception v0
:try_start_1de
const-string v0, "RESULT_CANCELLED_BY_USER"
:try_end_1e0
.catchall {:try_start_1de .. :try_end_1e0} :catchall_233
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_ff
const-string v1, "PhotoProvider"
const-string v3, "++WakeLock released++"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
goto/16 :goto_ff
:catch_1f9
move-exception v0
:try_start_1fa
const-string v1, "PhotoProvider"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "---------Error-----"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_219
.catchall {:try_start_1fa .. :try_end_219} :catchall_233
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v0, v0, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_230
const-string v0, "PhotoProvider"
const-string v1, "++WakeLock released++"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_230
const/4 v0, 0x0
goto/16 :goto_ff
:catchall_233
move-exception v0
iget-object v1, p0, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;
iget-object v1, v1, Lcom/twidroid/net/a/b/b;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
if-eqz v2, :cond_24b
const-string v1, "PhotoProvider"
const-string v3, "++WakeLock released++"
invoke-static {v1, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_24b
throw v0
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/g;->a(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 4
if-nez p1, :cond_15
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
new-instance v1, Ljava/lang/Exception;
invoke-direct {v1}, Ljava/lang/Exception;-><init>()V
invoke-virtual {v0, p1, v1}, Lcom/twidroid/net/a/b/c;->b(Ljava/lang/String;Ljava/lang/Exception;)V
:goto_14
:cond_14
return-void
:cond_15
const-string v0, "RESULT_CANCELLED_BY_USER"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/twidroid/net/a/b/c;->b(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_14
:cond_2c
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
invoke-virtual {v0, p1}, Lcom/twidroid/net/a/b/c;->b(Ljava/lang/String;)V
goto :goto_14
.end method
.method protected varargs a([Ljava/lang/Integer;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;
iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/b/c;->a(I)V
:cond_14
return-void
.end method
.method protected synthetic a_([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/g;->a([Ljava/lang/Integer;)V
return-void
.end method