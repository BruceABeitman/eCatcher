.class public final Lcom/instagram/share/f/e;
.super Ljava/lang/Object;
.source "TwitterService.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Lcom/instagram/api/f/a;

    invoke-direct {v0, p0}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/api/f/a;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://api.twitter.com/1.1/users/show.json?screen_name="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-static {}, Lcom/instagram/share/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/share/f/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/share/f/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/instagram/share/f/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_3e
    invoke-interface {v3, v2}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    if-ne v2, v3, :cond_74

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/service/b/a;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-string v2, "profile_image_url"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6a} :catch_91

    move-result-object v1

    :try_start_6b
    const-string v0, "_normal"

    const-string v2, "_bigger"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_9a

    move-result-object v0

    :goto_73
    return-object v0

    :cond_74
    :try_start_74
    const-string v2, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in fetching twitter avatar url"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_90} :catch_91

    goto :goto_73

    :catch_91
    move-exception v1

    :goto_92
    const-string v2, "TwitterService"

    const-string v3, "Error in fetching twitter avatar url."

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_73

    :catch_9a
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_92
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/instagram/share/f/f;

    invoke-direct {v0, p0}, Lcom/instagram/share/f/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/share/f/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
