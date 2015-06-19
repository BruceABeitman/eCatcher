.class final Lcom/c/a/a/e;
.super Ljava/lang/Object;
.source "HttpPoster.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/a/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/c/a/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/util/List;)Lcom/c/a/a/f;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/c/a/a/f;"
        }
    .end annotation

    sget-object v0, Lcom/c/a/a/f;->c:Lcom/c/a/a/f;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_c
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/c/a/b/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v0, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_30} :catch_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_30} :catch_3c

    :cond_30
    :goto_30
    return-object v0

    :catch_31
    move-exception v0

    const-string v1, "MixpanelAPI"

    const-string v2, "Cannot post message to Mixpanel Servers (May Retry)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    goto :goto_30

    :catch_3c
    move-exception v0

    const-string v1, "MixpanelAPI"

    const-string v2, "Cannot post message to Mixpanel Servers, will not retry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/c/a/a/f;->c:Lcom/c/a/a/f;

    goto :goto_30
.end method
