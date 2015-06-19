.class public final Lcom/instagram/feed/f/g;
.super Ljava/lang/Object;
.source "FeedMessage__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;
    .registers 4

    new-instance v0, Lcom/instagram/feed/f/c;

    invoke-direct {v0}, Lcom/instagram/feed/f/c;-><init>()V

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

    invoke-static {v0, v1, p0}, Lcom/instagram/feed/f/g;->a(Lcom/instagram/feed/f/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method private static a(Lcom/instagram/feed/f/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "button"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_16

    :goto_12
    iput-object v0, p0, Lcom/instagram/feed/f/c;->c:Ljava/lang/String;

    move v0, v1

    :goto_15
    return v0

    :cond_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1b
    const-string v2, "icon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2f

    :goto_2b
    iput-object v0, p0, Lcom/instagram/feed/f/c;->a:Ljava/lang/String;

    move v0, v1

    goto :goto_15

    :cond_2f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_34
    const-string v2, "message"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_5b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_49
    :goto_49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_5b

    invoke-static {p2}, Lcom/instagram/feed/f/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/e;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_5b
    iput-object v0, p0, Lcom/instagram/feed/f/c;->b:Ljava/util/List;

    move v0, v1

    goto :goto_15

    :cond_5f
    const-string v2, "suggestions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_86

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_74
    :goto_74
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_86

    invoke-static {p2}, Lcom/instagram/user/d/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_86
    iput-object v0, p0, Lcom/instagram/feed/f/c;->d:Ljava/util/List;

    move v0, v1

    goto :goto_15

    :cond_8a
    const/4 v0, 0x0

    goto :goto_15
.end method
