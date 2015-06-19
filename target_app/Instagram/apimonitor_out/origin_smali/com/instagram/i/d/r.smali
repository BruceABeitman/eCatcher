.class public final Lcom/instagram/i/d/r;
.super Ljava/lang/Object;
.source "NewsfeedYouResponse__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/o;
    .registers 4

    new-instance v0, Lcom/instagram/i/d/o;

    invoke-direct {v0}, Lcom/instagram/i/d/o;-><init>()V

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

    invoke-static {v0, v1, p0}, Lcom/instagram/i/d/r;->a(Lcom/instagram/i/d/o;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12

    :cond_28
    invoke-virtual {v0}, Lcom/instagram/i/d/o;->d()Lcom/instagram/i/d/o;

    move-result-object v0

    goto :goto_11
.end method

.method private static a(Lcom/instagram/i/d/o;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "counts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {p2}, Lcom/instagram/i/d/q;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/i/d/o;->b:Lcom/instagram/i/d/p;

    move v0, v1

    :goto_11
    return v0

    :cond_12
    const-string v2, "friend_request_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_39

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    :goto_27
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_39

    invoke-static {p2}, Lcom/instagram/i/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/c;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_39
    iput-object v0, p0, Lcom/instagram/i/d/o;->d:Ljava/util/List;

    move v0, v1

    goto :goto_11

    :cond_3d
    const-string v2, "megaphone_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_64

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_52
    :goto_52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_64

    invoke-static {p2}, Lcom/instagram/i/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/c;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_64
    iput-object v0, p0, Lcom/instagram/i/d/o;->c:Ljava/util/List;

    move v0, v1

    goto :goto_11

    :cond_68
    const-string v2, "old_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_8f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7d
    :goto_7d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_8f

    invoke-static {p2}, Lcom/instagram/i/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/c;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_8f
    iput-object v0, p0, Lcom/instagram/i/d/o;->m:Ljava/util/List;

    move v0, v1

    goto/16 :goto_11

    :cond_94
    const-string v2, "new_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_bb

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_a9
    :goto_a9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_bb

    invoke-static {p2}, Lcom/instagram/i/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/c;

    move-result-object v2

    if-eqz v2, :cond_a9

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    :cond_bb
    iput-object v0, p0, Lcom/instagram/i/d/o;->e:Ljava/util/List;

    move v0, v1

    goto/16 :goto_11

    :cond_c0
    const-string v2, "continuation_token"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_d5

    :goto_d0
    iput-object v0, p0, Lcom/instagram/i/d/o;->a:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_11

    :cond_d5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_d0

    :cond_da
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/g;->a(Lcom/instagram/api/k/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto/16 :goto_11
.end method
