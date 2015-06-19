.class public final Lcom/loopj/android/http/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/loopj/android/http/s;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/s;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loopj/android/http/d;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/loopj/android/http/d;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/loopj/android/http/d;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p4, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    return-void
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/loopj/android/http/d;->h:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/loopj/android/http/d;->f:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/loopj/android/http/d;->g:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/d;->g:Z

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    invoke-interface {v0}, Lcom/loopj/android/http/s;->e()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/loopj/android/http/d;->f:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/loopj/android/http/d;->d()V

    :cond_7
    iget-boolean v0, p0, Lcom/loopj/android/http/d;->f:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/loopj/android/http/d;->h:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/d;->f:Z

    iget-object v0, p0, Lcom/loopj/android/http/d;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/loopj/android/http/d;->i:Z

    if-nez v0, :cond_10

    iput-boolean v1, p0, Lcom/loopj/android/http/d;->i:Z

    :cond_10
    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    invoke-interface {v0}, Lcom/loopj/android/http/s;->c()V

    :cond_1f
    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_25
    iget-object v0, p0, Lcom/loopj/android/http/d;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_a8

    move-result-object v5

    move-object v0, v4

    move v3, v1

    :cond_2d
    :goto_2d
    if-eqz v3, :cond_a7

    :try_start_2f
    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/loopj/android/http/d;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d1

    new-instance v0, Ljava/net/MalformedURLException;

    const-string v3, "No valid URI scheme was provided"

    invoke-direct {v0, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catch Ljava/net/UnknownHostException; {:try_start_2f .. :try_end_49} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_49} :catch_102
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_49} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_49} :catch_86

    :catch_49
    move-exception v0

    :try_start_4a
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UnknownHostException exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/loopj/android/http/d;->e:I

    if-lez v0, :cond_ff

    iget v0, p0, Lcom/loopj/android/http/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loopj/android/http/d;->e:I

    iget-object v6, p0, Lcom/loopj/android/http/d;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v3, v0, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_ff

    move v0, v1

    :goto_75
    move-object v8, v3

    move v3, v0

    move-object v0, v8

    :goto_78
    if-eqz v3, :cond_2d

    iget-object v6, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    iget v7, p0, Lcom/loopj/android/http/d;->e:I

    invoke-interface {v6, v7}, Lcom/loopj/android/http/s;->a(I)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_85} :catch_86
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_85} :catch_a8

    goto :goto_2d

    :catch_86
    move-exception v0

    move-object v3, v0

    :try_start_88
    const-string v0, "AsyncHttpRequest"

    const-string v5, "Unhandled exception origin cause"

    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unhandled exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_a7
    throw v0
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a8} :catch_a8

    :catch_a8
    move-exception v0

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v3

    if-nez v3, :cond_141

    iget-object v3, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    if-eqz v3, :cond_141

    iget-object v3, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    invoke-interface {v3, v2, v4, v4, v0}, Lcom/loopj/android/http/s;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    invoke-interface {v0}, Lcom/loopj/android/http/s;->d()V

    :cond_c7
    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/loopj/android/http/d;->h:Z

    goto/16 :goto_9

    :cond_d1
    :try_start_d1
    iget-object v0, p0, Lcom/loopj/android/http/d;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/loopj/android/http/d;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v6, p0, Lcom/loopj/android/http/d;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v3, v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v3

    if-nez v3, :cond_b8

    iget-object v3, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    iget-object v3, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v3

    if-nez v3, :cond_b8

    iget-object v3, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    invoke-interface {v3, v0}, Lcom/loopj/android/http/s;->a(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v0

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;

    iget-object v0, p0, Lcom/loopj/android/http/d;->d:Lcom/loopj/android/http/s;
    :try_end_fe
    .catch Ljava/net/UnknownHostException; {:try_start_d1 .. :try_end_fe} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_fe} :catch_102
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_fe} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_fe} :catch_86

    goto :goto_b8

    :cond_ff
    move v0, v2

    goto/16 :goto_75

    :catch_102
    move-exception v0

    :try_start_103
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NPE in HttpClient: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/loopj/android/http/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loopj/android/http/d;->e:I

    iget-object v6, p0, Lcom/loopj/android/http/d;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v3, v0, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_78

    :catch_12c
    move-exception v0

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->a()Z

    move-result v3

    if-nez v3, :cond_b8

    iget v3, p0, Lcom/loopj/android/http/d;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/loopj/android/http/d;->e:I

    iget-object v6, p0, Lcom/loopj/android/http/d;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v0, v3, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_13e} :catch_86
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_13e} :catch_a8

    move-result v3

    goto/16 :goto_78

    :cond_141
    const-string v2, "AsyncHttpRequest"

    const-string v3, "makeRequestWithRetries returned error, but handler is null"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b8
.end method
