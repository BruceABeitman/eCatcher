.class public final Lcom/instagram/i/d/m;
.super Ljava/lang/Object;
.source "NewsfeedStory_Args__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/d;
    .registers 4

    new-instance v0, Lcom/instagram/i/d/d;

    invoke-direct {v0}, Lcom/instagram/i/d/d;-><init>()V

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

    invoke-static {v0, v1, p0}, Lcom/instagram/i/d/m;->a(Lcom/instagram/i/d/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12
.end method

.method private static a(Lcom/instagram/i/d/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "request_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/i/d/d;->h:I

    move v0, v1

    :goto_11
    return v0

    :cond_12
    const-string v2, "profile_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_26

    :goto_22
    iput-object v0, p0, Lcom/instagram/i/d/d;->d:Ljava/lang/String;

    move v0, v1

    goto :goto_11

    :cond_26
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_2b
    const-string v2, "media"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_52

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_40
    :goto_40
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_52

    invoke-static {p2}, Lcom/instagram/i/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/f;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_52
    iput-object v0, p0, Lcom/instagram/i/d/d;->e:Ljava/util/List;

    move v0, v1

    goto :goto_11

    :cond_56
    const-string v2, "text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_6a

    :goto_66
    iput-object v0, p0, Lcom/instagram/i/d/d;->b:Ljava/lang/String;

    move v0, v1

    goto :goto_11

    :cond_6a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_6f
    const-string v2, "links"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_96

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_84
    :goto_84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_96

    invoke-static {p2}, Lcom/instagram/i/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/h;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_96
    iput-object v0, p0, Lcom/instagram/i/d/d;->i:Ljava/util/List;

    move v0, v1

    goto/16 :goto_11

    :cond_9b
    const-string v2, "inline_follow"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-static {p2}, Lcom/instagram/i/d/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/i/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;

    move v0, v1

    goto/16 :goto_11

    :cond_ac
    const-string v2, "profile_id"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_c1

    :goto_bc
    iput-object v0, p0, Lcom/instagram/i/d/d;->c:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_11

    :cond_c1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_bc

    :cond_c6
    const-string v2, "timestamp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instagram/i/d/d;->f:J

    move v0, v1

    goto/16 :goto_11

    :cond_d7
    const-string v2, "payload"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_ec

    :goto_e7
    iput-object v0, p0, Lcom/instagram/i/d/d;->a:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_11

    :cond_ec
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_e7

    :cond_f1
    const/4 v0, 0x0

    goto/16 :goto_11
.end method
