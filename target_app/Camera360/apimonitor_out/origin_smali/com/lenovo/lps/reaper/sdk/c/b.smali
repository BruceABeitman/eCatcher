.class public final Lcom/lenovo/lps/reaper/sdk/c/b;
.super Lcom/lenovo/lps/reaper/sdk/c/g;


# instance fields
.field private a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c/g;-><init>()V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/b;->a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/c/m;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/c/m;-><init>(Lcom/lenovo/lps/reaper/sdk/c/b;)V

    :try_start_7
    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    const-string/jumbo v3, "ReaperServerAddressQueryTask"

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c/m;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ReaperServerAddressQueryTask"

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c/m;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c/m;->b()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c/m;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_46

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0, v3, v4}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/lang/String;J)V

    move v0, v1

    :goto_45
    return v0

    :cond_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_66

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0, v3, v4}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/lang/String;J)V

    move v0, v1

    goto :goto_45

    :cond_66
    const-string/jumbo v0, "ReaperServerAddressQueryTask"

    const-string/jumbo v1, "don\'t get reaper server url from lds."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6f} :catch_71

    :cond_6f
    move v0, v2

    goto :goto_45

    :catch_71
    move-exception v0

    const-string/jumbo v1, "ReaperServerAddressQueryTask"

    const-string/jumbo v3, "process server query response result fail. "

    invoke-static {v1, v3, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_45
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->F()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    const-string/jumbo v0, "ReaperServerAddressQueryTask"

    const-string/jumbo v3, "Using Custom ReaperServerAddress."

    invoke-static {v0, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_24
    if-nez v0, :cond_3e

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_3c

    const-string/jumbo v0, "ReaperServerAddressQueryTask"

    const-string/jumbo v3, "server info is not expired."

    invoke-static {v0, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_24

    :cond_3c
    move v0, v2

    goto :goto_24

    :cond_3e
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string/jumbo v3, "http.connection.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v3, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    const-string/jumbo v4, "http://lds.lenovomm.com/addr/1.0/query?sid=rfsr001&didt=1&appkey=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/g/b;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/b;->a:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    :try_start_8c
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_d7

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/c/b;->a(Ljava/lang/String;)Z

    move-result v1

    :goto_a8
    const-string/jumbo v0, "ReaperServerAddressQueryTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ServerAddress Query Success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_8c .. :try_end_c2} :catchall_11b
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_c2} :catch_f4

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_c9
    if-nez v1, :cond_26

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v0

    const-string/jumbo v1, "http://fsr.lenovomm.com"

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_d7
    :try_start_d7
    const-string/jumbo v0, "ReaperServerAddressQueryTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "query reaper server address fail, status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_d7 .. :try_end_f3} :catchall_11b
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f3} :catch_f4

    goto :goto_a8

    :catch_f4
    move-exception v0

    :try_start_f5
    const-string/jumbo v3, "ReaperServerAddressQueryTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query reaper server address fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_f5 .. :try_end_113} :catchall_11b

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_c9

    :catchall_11b
    move-exception v0

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method
