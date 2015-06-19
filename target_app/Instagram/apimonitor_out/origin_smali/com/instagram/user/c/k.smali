.class public final Lcom/instagram/user/c/k;
.super Ljava/lang/Object;
.source "User__JsonHelper.java"


# direct methods
.method public static final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
    .registers 4

    new-instance v0, Lcom/instagram/user/c/a;

    invoke-direct {v0}, Lcom/instagram/user/c/a;-><init>()V

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

    invoke-static {v0, v1, p0}, Lcom/instagram/user/c/k;->a(Lcom/instagram/user/c/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_12

    :cond_28
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    goto :goto_11
.end method

.method private static a(Lcom/instagram/user/c/a;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "extra_display_name"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_16

    :goto_12
    iput-object v0, p0, Lcom/instagram/user/c/a;->p:Ljava/lang/String;

    move v0, v1

    :goto_15
    return v0

    :cond_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1b
    const-string v2, "geo_media_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->m:Ljava/lang/Integer;

    move v0, v1

    goto :goto_15

    :cond_2f
    const-string v2, "is_verified"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/user/c/a;->o:Z

    move v0, v1

    goto :goto_15

    :cond_3f
    const-string v2, "usertags_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->n:Ljava/lang/Integer;

    move v0, v1

    goto :goto_15

    :cond_53
    const-string v2, "chaining_suggestions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_7a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_68
    :goto_68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_7a

    invoke-static {p2}, Lcom/instagram/user/c/k;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_7a
    iput-object v0, p0, Lcom/instagram/user/c/a;->q:Ljava/util/List;

    move v0, v1

    goto :goto_15

    :cond_7e
    const-string v2, "full_name"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->b:Ljava/lang/String;

    move v0, v1

    goto :goto_15

    :cond_92
    const-string v2, "following_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->j:Ljava/lang/Integer;

    move v0, v1

    goto/16 :goto_15

    :cond_a7
    const-string v2, "profile_pic_url"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_bc

    :goto_b7
    iput-object v0, p0, Lcom/instagram/user/c/a;->c:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_15

    :cond_bc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_b7

    :cond_c1
    const-string v2, "username"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_d6

    :goto_d1
    iput-object v0, p0, Lcom/instagram/user/c/a;->a:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_15

    :cond_d6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    :cond_db
    const-string v2, "usertag_review_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/user/c/a;->f:Z

    move v0, v1

    goto/16 :goto_15

    :cond_ec
    const-string v2, "id"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    const-string v2, "pk"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    :cond_fc
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_109

    :goto_104
    iput-object v0, p0, Lcom/instagram/user/c/a;->d:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_15

    :cond_109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_104

    :cond_10e
    const-string v2, "media_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->k:Ljava/lang/Integer;

    move v0, v1

    goto/16 :goto_15

    :cond_123
    const-string v2, "biography"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->g:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_15

    :cond_138
    const-string v2, "is_staff"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/user/c/a;->e:Z

    move v0, v1

    goto/16 :goto_15

    :cond_149
    const-string v2, "follower_count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->i:Ljava/lang/Integer;

    move v0, v1

    goto/16 :goto_15

    :cond_15e
    const-string v2, "friendship_status"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    invoke-static {p2}, Lcom/instagram/user/c/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/user/c/a;->r:Lcom/instagram/user/c/d;

    move v0, v1

    goto/16 :goto_15

    :cond_16f
    const-string v2, "is_private"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_184

    sget-object v0, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;

    :goto_17f
    iput-object v0, p0, Lcom/instagram/user/c/a;->l:Lcom/instagram/user/c/e;

    move v0, v1

    goto/16 :goto_15

    :cond_184
    sget-object v0, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;

    goto :goto_17f

    :cond_187
    const-string v2, "external_url"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_19c

    :goto_197
    iput-object v0, p0, Lcom/instagram/user/c/a;->h:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_15

    :cond_19c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_197

    :cond_1a1
    const/4 v0, 0x0

    goto/16 :goto_15
.end method
