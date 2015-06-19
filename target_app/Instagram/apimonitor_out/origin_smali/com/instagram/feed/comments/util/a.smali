.class public final Lcom/instagram/feed/comments/util/a;
.super Ljava/lang/Object;
.source "CommentUtil.java"


# direct methods
.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;)J
    .registers 5

    const-string v0, "created_at"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_13

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    goto :goto_12
.end method

.method public static a(Lcom/instagram/feed/d/b;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .registers 5

    invoke-static {p1}, Lcom/instagram/n/e/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/feed/comments/util/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instagram/feed/d/b;->a(J)V

    sget-object v1, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    invoke-virtual {p0, v1}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->s()Lcom/instagram/feed/d/e;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/b;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v1, v2}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->ai()Z

    move-result v0

    if-nez v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method
