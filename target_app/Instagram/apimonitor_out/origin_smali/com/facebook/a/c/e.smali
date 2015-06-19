.class public final Lcom/facebook/a/c/e;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v0, ""

    :cond_2a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "application/json"

    if-ne p2, v0, :cond_1e

    invoke-static {p0}, Lcom/facebook/a/c/e;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/a/b;

    new-instance v1, Lcom/facebook/a/c/j;

    invoke-direct {v1}, Lcom/facebook/a/c/j;-><init>()V

    new-instance v2, Lcom/facebook/a/c/d;

    invoke-direct {v2, v1}, Lcom/facebook/a/c/d;-><init>(Lcom/facebook/a/c/c;)V

    new-instance v1, Lcom/facebook/a/c/a;

    invoke-direct {v1}, Lcom/facebook/a/c/a;-><init>()V

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/facebook/a/c/d;->a(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/a/c/a;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-static {p0}, Lcom/facebook/a/c/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
