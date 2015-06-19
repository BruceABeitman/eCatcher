.class public final Lcom/instagram/i/d/b;
.super Ljava/lang/Object;
.source "NewsfeedFollowingResponse__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/a;
    .registers 4

    new-instance v0, Lcom/instagram/i/d/a;

    invoke-direct {v0}, Lcom/instagram/i/d/a;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    const/4 v0, 0x0

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v0, v1, p0}, Lcom/instagram/i/d/b;->a(Lcom/instagram/i/d/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method private static a(Lcom/instagram/i/d/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 6

    const-string v0, "stories"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    :goto_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_28

    invoke-static {p2}, Lcom/instagram/i/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/c;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_28
    iput-object v0, p0, Lcom/instagram/i/d/a;->a:Ljava/util/List;

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/g;->a(Lcom/instagram/api/k/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_2b
.end method
