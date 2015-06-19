.class final Lcom/baidu/location/g$2;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/baidu/location/g;->new()I

    move-result v0

    :goto_6
    if-lez v0, :cond_e0

    :try_start_8
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/baidu/location/j;->do()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "bloc"

    invoke-static {}, Lcom/baidu/location/g;->if()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/location/g;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "up"

    invoke-static {}, Lcom/baidu/location/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string/jumbo v4, "http.connection.timeout"

    invoke-static {}, Lcom/baidu/location/g;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string/jumbo v4, "http.socket.timeout"

    invoke-static {}, Lcom/baidu/location/g;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {}, Lcom/baidu/location/g;->e()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_97

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-static {}, Lcom/baidu/location/g;->void()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/baidu/location/g;->g()I

    move-result v5

    const-string/jumbo v6, "http"

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string/jumbo v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_97
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "===status error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_106

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/g;->int()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/baidu/location/g;->do(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e0} :catch_11f

    :cond_e0
    if-gtz v0, :cond_ff

    invoke-static {}, Lcom/baidu/location/g;->int()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_ff

    invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "have tried 3 times..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/g;->int()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_ff
    invoke-static {v8}, Lcom/baidu/location/g;->a(Landroid/os/Handler;)Landroid/os/Handler;

    invoke-static {v7}, Lcom/baidu/location/g;->if(Z)Z

    return-void

    :cond_106
    :try_start_106
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    invoke-static {}, Lcom/baidu/location/g;->int()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string/jumbo v2, "HttpStatus error"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_11b} :catch_11f

    :goto_11b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :catch_11f
    move-exception v1

    goto :goto_11b
.end method
