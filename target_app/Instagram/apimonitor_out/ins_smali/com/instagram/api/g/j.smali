.class public Lcom/instagram/api/g/j;
.super Ljava/lang/Object;
.source "NetworkTraceCollector.java"
.field public static a:Lcom/instagram/api/g/j;
.field private static final b:Ljava/lang/Class;
.field private final c:Lcom/instagram/common/u/b/a;
.field private final d:Landroid/net/ConnectivityManager;
.field private final e:Lcom/instagram/api/g/n;
.field private final f:Ljava/util/WeakHashMap;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/api/g/j;
sput-object v0, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;
return-void
.end method
.method private constructor <init>(Lcom/instagram/common/u/b/a;Landroid/net/ConnectivityManager;Lcom/instagram/api/g/n;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/u/b/a;
iput-object p2, p0, Lcom/instagram/api/g/j;->d:Landroid/net/ConnectivityManager;
iput-object p3, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;
return-void
.end method
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/api/g/j;
.registers 6
const-class v1, Lcom/instagram/api/g/j;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/api/g/j;->a:Lcom/instagram/api/g/j;
if-nez v0, :cond_1e
new-instance v2, Lcom/instagram/api/g/j;
invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;
move-result-object v3
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-static {}, Lcom/instagram/api/g/n;->a()Lcom/instagram/api/g/n;
move-result-object v4
invoke-direct {v2, v3, v0, v4}, Lcom/instagram/api/g/j;-><init>(Lcom/instagram/common/u/b/a;Landroid/net/ConnectivityManager;Lcom/instagram/api/g/n;)V
sput-object v2, Lcom/instagram/api/g/j;->a:Lcom/instagram/api/g/j;
:cond_1e
sget-object v0, Lcom/instagram/api/g/j;->a:Lcom/instagram/api/g/j;
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_22
monitor-exit v1
return-object v0
:catchall_22
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/instagram/api/g/j;)Lcom/instagram/common/u/b/a;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/u/b/a;
return-object v0
.end method
.method private static a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/i;)V
.registers 3
const-string v0, "X-Instagram-Trace-Token"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_15
const-string v0, "X-Instagram-Trace-Token"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Ljava/lang/String;)V
:cond_15
const-string v0, "X-Instagram-Trace-Enabled"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32
const-string v0, "X-Instagram-Trace-Enabled"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Z)V
:cond_32
invoke-virtual {p1}, Lcom/instagram/api/g/i;->k()Lcom/instagram/api/g/a;
move-result-object v0
if-eqz v0, :cond_3b
invoke-static {p0, v0}, Lcom/instagram/api/g/b;->a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/a;)V
:cond_3b
return-void
.end method
.method private static a(Lch/boye/httpclientandroidlib/HttpRequest;Lcom/instagram/api/g/i;)V
.registers 5
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v1
const-string v0, "InstagramTraceToken"
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_17
const-string v0, "InstagramTraceToken"
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Ljava/lang/String;)V
:cond_17
const-string v0, "InstagramTraceEnabled"
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_29
const-string v0, "InstagramTraceEnabled"
const/4 v2, 0x0
invoke-interface {v1, v0, v2}, Lch/boye/httpclientandroidlib/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Z)V
:cond_29
invoke-static {v1, p1}, Lcom/instagram/api/g/b;->a(Lch/boye/httpclientandroidlib/params/HttpParams;Lcom/instagram/api/g/i;)V
return-void
.end method
.method public static a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
const-string v1, "InstagramTraceEnabled"
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
const-string v1, "InstagramTraceToken"
invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method static synthetic b(Lcom/instagram/api/g/j;)Lcom/instagram/api/g/n;
.registers 2
iget-object v0, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;
return-object v0
.end method
.method private static b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_8
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lcom/instagram/api/g/i;
.registers 9
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/g/i;
if-eqz v0, :cond_65
iget-object v1, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/g/i;->c(Ljava/lang/String;)V
check-cast p3, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;
invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getRemoteAddress()Ljava/net/InetAddress;
move-result-object v1
invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/g/i;->b(Ljava/lang/String;)V
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/api/g/i;->a(I)V
invoke-static {p2, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/i;)V
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v2
const/4 v1, 0x0
if-eqz v2, :cond_53
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Lcom/instagram/api/g/i;->g(J)V
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z
move-result v3
if-eqz v3, :cond_53
const/4 v1, 0x1
new-instance v3, Lcom/instagram/api/g/k;
invoke-direct {v3, p0, v2, v0}, Lcom/instagram/api/g/k;-><init>(Lcom/instagram/api/g/j;Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/api/g/i;)V
invoke-interface {p2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_53
if-nez v1, :cond_63
iget-object v1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->e(J)V
iget-object v1, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;
invoke-virtual {v1, v0}, Lcom/instagram/api/g/n;->a(Lcom/instagram/api/g/i;)V
:try_end_63
.catchall {:try_start_1 .. :try_end_63} :catchall_6b
:goto_63
:cond_63
monitor-exit p0
return-object v0
:try_start_65
:cond_65
sget-object v1, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;
invoke-static {p1}, Lcom/instagram/api/g/j;->b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
:try_end_6a
.catchall {:try_start_65 .. :try_end_6a} :catchall_6b
goto :goto_63
:catchall_6b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;
.registers 5
monitor-enter p0
if-nez p1, :cond_8
:try_start_3
sget-object v0, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_18
const/4 v0, 0x0
:goto_6
monitor-exit p0
return-object v0
:try_start_8
:cond_8
iget-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/g/i;
if-eqz v0, :cond_1b
iget-object v1, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;
invoke-virtual {v1, v0, p2}, Lcom/instagram/api/g/n;->a(Lcom/instagram/api/g/i;Ljava/lang/Exception;)V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_18
goto :goto_6
:catchall_18
move-exception v0
monitor-exit p0
throw v0
:cond_1b
:try_start_1b
sget-object v1, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;
invoke-static {p1}, Lcom/instagram/api/g/j;->b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
:try_end_20
.catchall {:try_start_1b .. :try_end_20} :catchall_18
goto :goto_6
.end method
.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/api/g/i;
if-nez v1, :cond_3c
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v1
instance-of v2, p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
if-eqz v2, :cond_69
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
move-object v1, v0
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v1
move-object v2, v1
:goto_28
iget-object v1, p0, Lcom/instagram/api/g/j;->d:Landroid/net/ConnectivityManager;
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v3
new-instance v1, Lcom/instagram/api/g/i;
invoke-static {v3}, Lcom/instagram/common/u/g/a;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/instagram/api/g/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;
invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_3c
iget-object v2, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->d()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/instagram/api/g/i;->a(J)V
iget-object v2, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/instagram/api/g/i;->b(J)V
invoke-static {p1, v1}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Lcom/instagram/api/g/i;)V
instance-of v2, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v2, :cond_64
check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v2
if-eqz v2, :cond_64
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/instagram/api/g/i;->f(J)V
:cond_64
:try_end_64
.catchall {:try_start_1 .. :try_end_64} :catchall_66
monitor-exit p0
return-void
:catchall_66
move-exception v1
monitor-exit p0
throw v1
:cond_69
move-object v2, v1
goto :goto_28
.end method
.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;I)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/g/i;
if-eqz v0, :cond_29
const/4 v1, 0x1
if-ne v1, p2, :cond_19
iget-object v1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->c(J)V
:cond_17
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_26
:goto_17
monitor-exit p0
return-void
:cond_19
const/4 v1, 0x2
if-ne v1, p2, :cond_17
:try_start_1c
iget-object v1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->d(J)V
:try_end_25
.catchall {:try_start_1c .. :try_end_25} :catchall_26
goto :goto_17
:catchall_26
move-exception v0
monitor-exit p0
throw v0
:cond_29
:try_start_29
sget-object v0, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;
invoke-static {p1}, Lcom/instagram/api/g/j;->b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
:try_end_2e
.catchall {:try_start_29 .. :try_end_2e} :catchall_26
goto :goto_17
.end method