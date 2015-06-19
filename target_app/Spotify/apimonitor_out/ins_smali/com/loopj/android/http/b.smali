.class public final Lcom/loopj/android/http/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:I
.field private b:I
.field private c:I
.field private final d:Lorg/apache/http/impl/client/DefaultHttpClient;
.field private final e:Lorg/apache/http/protocol/HttpContext;
.field private f:Ljava/util/concurrent/ExecutorService;
.field private final g:Ljava/util/Map;
.field private final h:Ljava/util/Map;
.field private i:Z
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/loopj/android/http/b;-><init>(B)V
return-void
.end method
.method private constructor <init>(B)V
.registers 8
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v0
new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v4
const/16 v5, 0x50
invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string v3, "https"
const/16 v4, 0x1bb
invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
invoke-direct {p0, v1}, Lcom/loopj/android/http/b;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
return-void
.end method
.method private constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
.registers 7
const/16 v0, 0x2710
const/16 v4, 0xa
const/4 v3, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v4, p0, Lcom/loopj/android/http/b;->a:I
iput v0, p0, Lcom/loopj/android/http/b;->b:I
iput v0, p0, Lcom/loopj/android/http/b;->c:I
iput-boolean v3, p0, Lcom/loopj/android/http/b;->i:Z
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
iget v1, p0, Lcom/loopj/android/http/b;->b:I
int-to-long v1, v1
invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V
new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;
iget v2, p0, Lcom/loopj/android/http/b;->a:I
invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V
invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
invoke-static {v0, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
iget v1, p0, Lcom/loopj/android/http/b;->c:I
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
iget v1, p0, Lcom/loopj/android/http/b;->b:I
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V
const/16 v1, 0x2000
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V
sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
move-result-object v2
iput-object v2, p0, Lcom/loopj/android/http/b;->f:Ljava/util/concurrent/ExecutorService;
new-instance v2, Ljava/util/WeakHashMap;
invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V
invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v2
iput-object v2, p0, Lcom/loopj/android/http/b;->g:Ljava/util/Map;
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
iput-object v2, p0, Lcom/loopj/android/http/b;->h:Ljava/util/Map;
new-instance v2, Lorg/apache/http/protocol/SyncBasicHttpContext;
new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;
invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V
invoke-direct {v2, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V
iput-object v2, p0, Lcom/loopj/android/http/b;->e:Lorg/apache/http/protocol/HttpContext;
new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
iput-object v2, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
new-instance v1, Lcom/loopj/android/http/b$1;
invoke-direct {v1, p0}, Lcom/loopj/android/http/b$1;-><init>(Lcom/loopj/android/http/b;)V
invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
new-instance v1, Lcom/loopj/android/http/b$2;
invoke-direct {v1, p0}, Lcom/loopj/android/http/b$2;-><init>(Lcom/loopj/android/http/b;)V
invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
new-instance v1, Lcom/loopj/android/http/b$3;
invoke-direct {v1, p0}, Lcom/loopj/android/http/b$3;-><init>(Lcom/loopj/android/http/b;)V
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
new-instance v1, Lcom/loopj/android/http/t;
invoke-direct {v1}, Lcom/loopj/android/http/t;-><init>()V
invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
return-void
.end method
.method private a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/s;Landroid/content/Context;)Lcom/loopj/android/http/p;
.registers 10
if-nez p4, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "ResponseHandler must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p4}, Lcom/loopj/android/http/s;->a()Z
move-result v0
if-eqz v0, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;
move-result-object v0
invoke-interface {p4, v0}, Lcom/loopj/android/http/s;->a([Lorg/apache/http/Header;)V
invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;
move-result-object v0
invoke-interface {p4, v0}, Lcom/loopj/android/http/s;->a(Ljava/net/URI;)V
new-instance v0, Lcom/loopj/android/http/d;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/d;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/s;)V
iget-object v1, p0, Lcom/loopj/android/http/b;->f:Ljava/util/concurrent/ExecutorService;
invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
new-instance v1, Lcom/loopj/android/http/p;
invoke-direct {v1, v0}, Lcom/loopj/android/http/p;-><init>(Lcom/loopj/android/http/d;)V
if-eqz p5, :cond_7c
iget-object v0, p0, Lcom/loopj/android/http/b;->g:Ljava/util/Map;
invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v2, p0, Lcom/loopj/android/http/b;->g:Ljava/util/Map;
monitor-enter v2
if-nez v0, :cond_52
:try_start_44
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iget-object v3, p0, Lcom/loopj/android/http/b;->g:Ljava/util/Map;
invoke-interface {v3, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_52
monitor-exit v2
:try_end_53
.catchall {:try_start_44 .. :try_end_53} :catchall_79
instance-of v2, p4, Lcom/loopj/android/http/o;
if-eqz v2, :cond_5c
check-cast p4, Lcom/loopj/android/http/o;
invoke-virtual {p4, p3}, Lcom/loopj/android/http/o;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V
:cond_5c
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_63
:goto_63
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/loopj/android/http/p;
invoke-virtual {v0}, Lcom/loopj/android/http/p;->b()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_63
:catchall_79
move-exception v0
monitor-exit v2
throw v0
:cond_7c
return-object v1
.end method
.method private static a(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
.registers 7
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
:cond_3
return-object v0
:cond_4
if-eqz p0, :cond_58
const-string v0, " "
const-string v1, "%20"
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
:goto_e
if-eqz p2, :cond_3
invoke-virtual {p2}, Lcom/loopj/android/http/RequestParams;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3
const-string v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "?"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_55
const-string v0, "&"
:goto_3b
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
:cond_55
const-string v0, "?"
goto :goto_3b
:cond_58
move-object v0, p1
goto :goto_e
.end method
.method static synthetic a(Lcom/loopj/android/http/b;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/loopj/android/http/b;->h:Ljava/util/Map;
return-object v0
.end method
.method private static a(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lorg/apache/http/HttpEntity;
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_7
:try_start_3
invoke-virtual {p0, p1}, Lcom/loopj/android/http/RequestParams;->a(Lcom/loopj/android/http/s;)Lorg/apache/http/HttpEntity;
:try_end_6
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_8
move-result-object v0
:goto_7
:cond_7
return-object v0
:catch_8
move-exception v1
if-eqz p1, :cond_10
const/4 v2, 0x0
invoke-interface {p1, v2, v0, v0, v1}, Lcom/loopj/android/http/s;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
goto :goto_7
:cond_10
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_7
.end method
.method public static a(Ljava/io/InputStream;)V
.registers 4
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
const-string v1, "AsyncHttpClient"
const-string v2, "Cannot close input stream"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_5
.end method
.method public static a(Ljava/io/OutputStream;)V
.registers 4
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
const-string v1, "AsyncHttpClient"
const-string v2, "Cannot close output stream"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_5
.end method
.method public static a(Lorg/apache/http/HttpEntity;)V
.registers 8
instance-of v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;
if-eqz v0, :cond_2f
const/4 v1, 0x0
:try_start_5
const-class v0, Lorg/apache/http/entity/HttpEntityWrapper;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v2, v0
:goto_e
if-ge v2, v4, :cond_3d
aget-object v0, v3, v2
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v5
const-string v6, "wrappedEntity"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_30
:goto_1e
if-eqz v0, :cond_2f
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/HttpEntity;
if-eqz v0, :cond_2f
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
:try_end_2f
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2f} :catch_34
:goto_2f
:cond_2f
return-void
:cond_30
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_e
:catch_34
move-exception v0
const-string v1, "AsyncHttpClient"
const-string v2, "wrappedEntity consume"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2f
:cond_3d
move-object v0, v1
goto :goto_1e
.end method
.method private c(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
.registers 10
iget-object v1, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v2, p0, Lcom/loopj/android/http/b;->e:Lorg/apache/http/protocol/HttpContext;
new-instance v3, Lorg/apache/http/client/methods/HttpGet;
iget-boolean v0, p0, Lcom/loopj/android/http/b;->i:Z
invoke-static {v0, p1, p2}, Lcom/loopj/android/http/b;->a(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
const/4 v5, 0x0
move-object v0, p0
move-object v4, p3
invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/b;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/s;Landroid/content/Context;)Lcom/loopj/android/http/p;
move-result-object v0
return-object v0
.end method
.method private d(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
.registers 10
invoke-static {p2, p3}, Lcom/loopj/android/http/b;->a(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lorg/apache/http/HttpEntity;
move-result-object v0
iget-object v1, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v2, p0, Lcom/loopj/android/http/b;->e:Lorg/apache/http/protocol/HttpContext;
new-instance v3, Lorg/apache/http/client/methods/HttpPost;
invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v4
invoke-virtual {v4}, Ljava/net/URI;->normalize()Ljava/net/URI;
move-result-object v4
invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V
if-eqz v0, :cond_1a
invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
:cond_1a
const/4 v5, 0x0
move-object v0, p0
move-object v4, p3
invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/b;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/s;Landroid/content/Context;)Lcom/loopj/android/http/p;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
.registers 12
new-instance v3, Lorg/apache/http/client/methods/HttpGet;
iget-boolean v0, p0, Lcom/loopj/android/http/b;->i:Z
invoke-static {v0, p2, p4}, Lcom/loopj/android/http/b;->a(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V
iget-object v1, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
iget-object v2, p0, Lcom/loopj/android/http/b;->e:Lorg/apache/http/protocol/HttpContext;
move-object v0, p0
move-object v4, p5
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/b;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/s;Landroid/content/Context;)Lcom/loopj/android/http/p;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/loopj/android/http/b;->c(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Lcom/loopj/android/http/b;->c(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
move-result-object v0
return-object v0
.end method
.method public final a()Lorg/apache/http/client/HttpClient;
.registers 2
iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/loopj/android/http/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v0
invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/loopj/android/http/b;->h:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final b(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/loopj/android/http/b;->d(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
move-result-object v0
return-object v0
.end method
.method public final b(Ljava/lang/String;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Lcom/loopj/android/http/b;->d(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;
move-result-object v0
return-object v0
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/loopj/android/http/b;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_a
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/loopj/android/http/p;
invoke-virtual {v0}, Lcom/loopj/android/http/p;->a()Z
goto :goto_1c
:cond_2c
iget-object v0, p0, Lcom/loopj/android/http/b;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method