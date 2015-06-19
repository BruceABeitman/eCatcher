.class public Lcom/twidroid/net/c/q;
.super Lcom/twidroid/net/c/n;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "TweetShrinkAPI"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/net/c/n;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/twidroid/net/c/n;)V
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "difference"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/twidroid/net/c/n;->d:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "tweetshrink.com"

    return-object v0
.end method

.method public a(Lcom/twidroid/net/c/n;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "format"

    const-string v3, "json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    iget-object v3, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_14
    new-instance v2, Lcom/ubermedia/net/e;

    invoke-direct {v2}, Lcom/ubermedia/net/e;-><init>()V

    const-string v3, "http://tweetshrink.com/shrink"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/twidroid/net/c/q;->a(Ljava/lang/String;Lcom/twidroid/net/c/n;)V

    iget-object v0, p1, Lcom/twidroid/net/c/n;->c:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_26

    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public a(Ljava/lang/String;JLcom/twidroid/model/twitter/c;)V
    .registers 5

    return-void
.end method
