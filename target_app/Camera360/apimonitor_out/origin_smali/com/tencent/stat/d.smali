.class Lcom/tencent/stat/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/stat/common/StatLogger;

.field private static d:J

.field private static e:Lcom/tencent/stat/d;

.field private static f:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/stat/d;->d:J

    sput-object v2, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;

    sput-object v2, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v0, p0, Lcom/tencent/stat/d;->b:Landroid/os/Handler;

    :try_start_8
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "StatDispatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/stat/d;->d:J

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/stat/d;->b:Landroid/os/Handler;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/tencent/stat/e;

    invoke-direct {v1, p0}, Lcom/tencent/stat/e;-><init>(Lcom/tencent/stat/d;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->b()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.route.default-proxy"

    invoke-static {}, Lcom/tencent/stat/StatConfig;->b()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    sget-object v1, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_5a
.end method

.method static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized b()Lcom/tencent/stat/d;
    .registers 2

    const-class v1, Lcom/tencent/stat/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/stat/d;

    invoke-direct {v0}, Lcom/tencent/stat/d;-><init>()V

    sput-object v0, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;

    :cond_e
    sget-object v0, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Lcom/tencent/stat/common/StatLogger;
    .registers 1

    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method


# virtual methods
.method a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/stat/d;->b(Ljava/util/List;Lcom/tencent/stat/c;)V

    return-void
.end method

.method a(Ljava/util/List;Lcom/tencent/stat/c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/stat/c;",
            ")V"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/16 v9, 0xc8

    const/4 v1, 0x0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_32

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_2e

    const-string/jumbo v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_32
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getStatReportUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]Send request("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "bytes):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-virtual {v2, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-virtual {v2, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Cache-Control"

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v4

    if-eqz v4, :cond_cb

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.route.default-proxy"

    sget-object v5, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v0, "X-Online-Host"

    const-string/jumbo v1, "pingma.qq.com:80"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "*/*"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "json"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    move v1, v0

    :cond_cb
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v6, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v7, 0x100

    if-ge v3, v7, :cond_174

    if-nez v4, :cond_155

    const-string/jumbo v3, "Content-Encoding"

    const-string/jumbo v4, "rc4"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ef
    invoke-static {v0}, Lcom/tencent/stat/common/e;->a([B)[B

    move-result-object v0

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v1, :cond_10f

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    :cond_10f
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    sget-object v6, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recv response status code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", content length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    cmp-long v6, v3, v10

    if-nez v6, :cond_1f0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    if-ne v1, v9, :cond_1d5

    if-eqz p2, :cond_151

    invoke-interface {p2}, Lcom/tencent/stat/c;->a()V

    :cond_151
    :goto_151
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_154
    :goto_154
    return-void

    :cond_155
    const-string/jumbo v3, "X-Content-Encoding"

    const-string/jumbo v4, "rc4"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_5 .. :try_end_15e} :catchall_172
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15e} :catch_15f

    goto :goto_ef

    :catch_15f
    move-exception v0

    :try_start_160
    sget-object v1, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_165
    .catchall {:try_start_160 .. :try_end_165} :catchall_172

    if-eqz p2, :cond_154

    :try_start_167
    invoke-interface {p2}, Lcom/tencent/stat/c;->b()V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_172
    .catch Ljava/lang/Throwable; {:try_start_167 .. :try_end_16a} :catch_16b

    goto :goto_154

    :catch_16b
    move-exception v0

    :try_start_16c
    sget-object v1, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_171
    .catchall {:try_start_16c .. :try_end_171} :catchall_172

    goto :goto_154

    :catchall_172
    move-exception v0

    throw v0

    :cond_174
    if-nez v4, :cond_1cb

    :try_start_176
    const-string/jumbo v3, "Content-Encoding"

    const-string/jumbo v4, "rc4,gzip"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17f
    const/4 v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "before Gzip:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " bytes, after Gzip:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " bytes"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    goto/16 :goto_ef

    :cond_1cb
    const-string/jumbo v3, "X-Content-Encoding"

    const-string/jumbo v4, "rc4,gzip"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17f

    :cond_1d5
    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server response error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto/16 :goto_151

    :cond_1f0
    cmp-long v3, v3, v10

    if-lez v3, :cond_345

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v0, v0, [B

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    const-string/jumbo v4, "Content-Encoding"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_22b

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "gzip,rc4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b9

    invoke-static {v0}, Lcom/tencent/stat/common/k;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/e;->b([B)[B
    :try_end_22a
    .catchall {:try_start_176 .. :try_end_22a} :catchall_172
    .catch Ljava/lang/Throwable; {:try_start_176 .. :try_end_22a} :catch_15f

    move-result-object v0

    :cond_22b
    :goto_22b
    if-ne v1, v9, :cond_317

    :try_start_22d
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "cfg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_252

    const-string/jumbo v2, "cfg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    :cond_252
    const-string/jumbo v2, "et"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2af

    const-string/jumbo v2, "st"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2af

    sget-object v2, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get mid respone:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    const-string/jumbo v1, "et"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/tencent/stat/a/f;->b:Lcom/tencent/stat/a/f;

    invoke-virtual {v2}, Lcom/tencent/stat/a/f;->a()I

    move-result v2

    if-ne v1, v2, :cond_2af

    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_34a

    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error type for st:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_2af
    .catchall {:try_start_22d .. :try_end_2af} :catchall_172
    .catch Ljava/lang/Throwable; {:try_start_22d .. :try_end_2af} :catch_30c

    :cond_2af
    :goto_2af
    if-eqz p2, :cond_2b4

    :try_start_2b1
    invoke-interface {p2}, Lcom/tencent/stat/c;->a()V

    :cond_2b4
    :goto_2b4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto/16 :goto_151

    :cond_2b9
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "rc4,gzip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d0

    invoke-static {v0}, Lcom/tencent/stat/common/e;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/k;->a([B)[B

    move-result-object v0

    goto/16 :goto_22b

    :cond_2d0
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "gzip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e3

    invoke-static {v0}, Lcom/tencent/stat/common/k;->a([B)[B

    move-result-object v0

    goto/16 :goto_22b

    :cond_2e3
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "rc4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22b

    invoke-static {v0}, Lcom/tencent/stat/common/e;->b([B)[B
    :try_end_2f3
    .catchall {:try_start_2b1 .. :try_end_2f3} :catchall_172
    .catch Ljava/lang/Throwable; {:try_start_2b1 .. :try_end_2f3} :catch_15f

    move-result-object v0

    goto/16 :goto_22b

    :pswitch_2f6
    :try_start_2f6
    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2af

    sget-object v1, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    const-string/jumbo v2, "mid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/stat/StatMid;->updateDeviceInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_30b
    .catchall {:try_start_2f6 .. :try_end_30b} :catchall_172
    .catch Ljava/lang/Throwable; {:try_start_2f6 .. :try_end_30b} :catch_30c

    goto :goto_2af

    :catch_30c
    move-exception v0

    :try_start_30d
    sget-object v1, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    goto :goto_2af

    :cond_317
    sget-object v2, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Server response error code:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", error:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto/16 :goto_2b4

    :cond_345
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_348
    .catchall {:try_start_30d .. :try_end_348} :catchall_172
    .catch Ljava/lang/Throwable; {:try_start_30d .. :try_end_348} :catch_15f

    goto/16 :goto_151

    :pswitch_data_34a
    .packed-switch -0x1
        :pswitch_2f6
        :pswitch_2f6
    .end packed-switch
.end method

.method b(Ljava/util/List;Lcom/tencent/stat/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/stat/c;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/stat/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/tencent/stat/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/stat/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/stat/f;-><init>(Lcom/tencent/stat/d;Ljava/util/List;Lcom/tencent/stat/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method
