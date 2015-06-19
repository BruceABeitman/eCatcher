.class public abstract Lcom/mato/sdk/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "AsyncRequest"

.field private static final b:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract a(Ljava/lang/String;)V
.end method

.method abstract b()Lorg/apache/http/HttpEntity;
.end method

.method abstract c()Z
.end method

.method public run()V
    .registers 8

    const/16 v1, 0x4e20

    const/4 v6, 0x3

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_21
    :try_start_21
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/mato/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "AsyncRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "the requestUrl is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mato/sdk/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mato/sdk/b/c;->b()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_87

    invoke-virtual {p0}, Lcom/mato/sdk/b/c;->c()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "AsyncRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "result is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7f
    invoke-virtual {p0, v0}, Lcom/mato/sdk/b/c;->a(Ljava/lang/String;)V

    :goto_82
    return-void

    :cond_83
    const-string/jumbo v0, "success"

    goto :goto_7f

    :cond_87
    const-string/jumbo v3, "AsyncRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "the response code is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/HttpException;

    const-string/jumbo v3, "\u8fde\u63a5\u9519\u8bef"

    invoke-direct {v0, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ae
    .catch Lorg/apache/http/HttpException; {:try_start_21 .. :try_end_ae} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_ae} :catch_cf

    :catch_ae
    move-exception v0

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    add-int/lit8 v0, v1, 0x1

    if-ge v0, v6, :cond_bf

    const-wide/16 v3, 0x3e8

    :try_start_bc
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_bf} :catch_e3

    :cond_bf
    :goto_bf
    if-lt v0, v6, :cond_e5

    const-string/jumbo v0, "AsyncRequest"

    const-string/jumbo v1, "handle null"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mato/sdk/b/c;->a(Ljava/lang/String;)V

    goto :goto_82

    :catch_cf
    move-exception v0

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    add-int/lit8 v0, v1, 0x1

    if-ge v0, v6, :cond_bf

    const-wide/16 v3, 0x3e8

    :try_start_dd
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e0
    .catch Ljava/lang/InterruptedException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_bf

    :catch_e1
    move-exception v1

    goto :goto_bf

    :catch_e3
    move-exception v1

    goto :goto_bf

    :cond_e5
    move v1, v0

    goto/16 :goto_21
.end method
