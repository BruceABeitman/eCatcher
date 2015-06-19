.class final Lcom/instagram/share/f/h;
.super Landroid/os/AsyncTask;
.source "TwitterXAuth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/instagram/share/f/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/instagram/share/f/i;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/share/f/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/share/f/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/share/f/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/share/f/h;->d:Lcom/instagram/share/f/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/api/f/a;

    iget-object v1, p0, Lcom/instagram/share/f/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/api/f/a;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v0, "https://api.twitter.com/oauth/access_token"

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-static {}, Lcom/instagram/share/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/share/f/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_username"

    iget-object v7, p0, Lcom/instagram/share/f/h;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_password"

    iget-object v7, p0, Lcom/instagram/share/f/h;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x_auth_mode"

    const-string v7, "client_auth"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :try_start_4b
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v3, v2}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_87

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/Scanner;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {v2, v3, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instagram/share/f/g;->a(Ljava/util/List;)Ljava/util/Map;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_86} :catch_88

    move-result-object v0

    :cond_87
    :goto_87
    return-object v0

    :catch_88
    move-exception v1

    const-string v2, "TwitterXAuth"

    const-string v3, "Unable to retrieve twitter token."

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_87
.end method

.method private a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    const/4 v0, 0x0

    if-eqz v1, :cond_23

    const-string v0, "oauth_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "screen_name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/instagram/share/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/share/f/a;

    move-result-object v0

    :cond_23
    iget-object v1, p0, Lcom/instagram/share/f/h;->d:Lcom/instagram/share/f/i;

    invoke-interface {v1, v0}, Lcom/instagram/share/f/i;->a(Lcom/instagram/share/f/a;)V

    return-void

    :cond_29
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/share/f/h;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/instagram/share/f/h;->a(Ljava/util/Map;)V

    return-void
.end method
