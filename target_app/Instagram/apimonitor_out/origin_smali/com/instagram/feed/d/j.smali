.class public final Lcom/instagram/feed/d/j;
.super Ljava/lang/Object;
.source "Comment__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;
    .registers 4

    new-instance v0, Lcom/instagram/feed/d/b;

    invoke-direct {v0}, Lcom/instagram/feed/d/b;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_12

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_28

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v0, v1, p0}, Lcom/instagram/feed/d/j;->a(Lcom/instagram/feed/d/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12

    :cond_28
    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->a()Lcom/instagram/feed/d/b;

    move-result-object v0

    goto :goto_11
.end method

.method private static a(Lcom/instagram/feed/d/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/feed/d/d;->a(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/feed/d/b;->f:I

    move v0, v1

    :goto_15
    return v0

    :cond_16
    const-string v2, "pk"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "id"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_26
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_32

    :goto_2e
    iput-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    move v0, v1

    goto :goto_15

    :cond_32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_37
    const-string v2, "text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_4f

    :goto_47
    invoke-static {v0}, Lcom/instagram/common/u/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/b;->d:Ljava/lang/String;

    move v0, v1

    goto :goto_15

    :cond_4f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_54
    const-string v2, "media_id"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_68

    :goto_64
    iput-object v0, p0, Lcom/instagram/feed/d/b;->c:Ljava/lang/String;

    move v0, v1

    goto :goto_15

    :cond_68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_6d
    const-string v0, "created_at"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-static {p2}, Lcom/instagram/feed/d/b;->a(Lcom/fasterxml/jackson/a/l;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instagram/feed/d/b;->b:J

    move v0, v1

    goto :goto_15

    :cond_7d
    const-string v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {p2}, Lcom/instagram/user/c/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/b;->e:Lcom/instagram/user/c/a;

    move v0, v1

    goto :goto_15

    :cond_8d
    const/4 v0, 0x0

    goto :goto_15
.end method
