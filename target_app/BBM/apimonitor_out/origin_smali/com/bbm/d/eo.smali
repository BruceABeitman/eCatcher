.class public Lcom/bbm/d/eo;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/d/eo;->a:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bbm/d/eo;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/d/eo;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/d/eo;->h:J

    iput-boolean v1, p0, Lcom/bbm/d/eo;->i:Z

    iput-boolean v1, p0, Lcom/bbm/d/eo;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/d/eo;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/d/eo;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/d/eo;->a:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bbm/d/eo;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/d/eo;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/d/eo;->h:J

    iput-boolean v1, p0, Lcom/bbm/d/eo;->i:Z

    iput-boolean v1, p0, Lcom/bbm/d/eo;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/d/eo;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    iget-wide v0, p1, Lcom/bbm/d/eo;->a:J

    iput-wide v0, p0, Lcom/bbm/d/eo;->a:J

    iget-object v0, p1, Lcom/bbm/d/eo;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    iget-boolean v0, p1, Lcom/bbm/d/eo;->c:Z

    iput-boolean v0, p0, Lcom/bbm/d/eo;->c:Z

    iget-object v0, p1, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    iget-wide v0, p1, Lcom/bbm/d/eo;->e:J

    iput-wide v0, p0, Lcom/bbm/d/eo;->e:J

    iget-object v0, p1, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    iget-wide v0, p1, Lcom/bbm/d/eo;->h:J

    iput-wide v0, p0, Lcom/bbm/d/eo;->h:J

    iget-boolean v0, p1, Lcom/bbm/d/eo;->i:Z

    iput-boolean v0, p0, Lcom/bbm/d/eo;->i:Z

    iget-boolean v0, p1, Lcom/bbm/d/eo;->j:Z

    iput-boolean v0, p0, Lcom/bbm/d/eo;->j:Z

    iget-object v0, p1, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/d/eo;->l:Z

    iput-boolean v0, p0, Lcom/bbm/d/eo;->l:Z

    iget-object v0, p1, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 8

    const-wide/16 v2, 0x0

    const-string v0, "activeCommentersCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "activeCommentersCount"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    move-wide v0, v2

    :goto_19
    iput-wide v0, p0, Lcom/bbm/d/eo;->a:J

    :cond_1b
    const-string v0, "avatars"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    const-string v0, "avatars"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4a

    const/4 v0, 0x0

    :goto_33
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4a

    iget-object v4, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_45
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_19

    :cond_4a
    const-string v0, "byOwner"

    iget-boolean v1, p0, Lcom/bbm/d/eo;->c:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/eo;->c:Z

    const-string v0, "channelUri"

    iget-object v1, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    const-string v0, "commentCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "commentCount"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f4

    move-wide v0, v2

    :goto_75
    iput-wide v0, p0, Lcom/bbm/d/eo;->e:J

    :cond_77
    const-string v0, "content"

    iget-object v1, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    const-string v0, "displayName"

    iget-object v1, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    const-string v0, "flagCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string v0, "flagCount"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_fa

    :goto_a1
    iput-wide v2, p0, Lcom/bbm/d/eo;->h:J

    :cond_a3
    const-string v0, "flagIgnoredByOwner"

    iget-boolean v1, p0, Lcom/bbm/d/eo;->i:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/eo;->i:Z

    const-string v0, "flagged"

    iget-boolean v1, p0, Lcom/bbm/d/eo;->j:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/eo;->j:Z

    const-string v0, "id"

    iget-object v1, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    const-string v0, "isBlocked"

    iget-boolean v1, p0, Lcom/bbm/d/eo;->l:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/eo;->l:Z

    const-string v0, "postId"

    iget-object v1, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    const-string v0, "timePosted"

    iget-object v1, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    const-string v0, "timeUpdated"

    iget-object v1, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    const-string v0, "userUri"

    iget-object v1, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    return-void

    :cond_f4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_75

    :cond_fa
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_a1
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/d/eo;

    invoke-direct {v0, p0}, Lcom/bbm/d/eo;-><init>(Lcom/bbm/d/eo;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/d/eo;

    iget-wide v2, p0, Lcom/bbm/d/eo;->a:J

    iget-wide v4, p1, Lcom/bbm/d/eo;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    if-nez v2, :cond_2b

    iget-object v2, p1, Lcom/bbm/d/eo;->b:Ljava/util/List;

    if-eqz v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-object v2, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/d/eo;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_37
    iget-boolean v2, p0, Lcom/bbm/d/eo;->c:Z

    iget-boolean v3, p1, Lcom/bbm/d/eo;->c:Z

    if-eq v2, v3, :cond_3f

    move v0, v1

    goto :goto_4

    :cond_3f
    iget-object v2, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    if-nez v2, :cond_49

    iget-object v2, p1, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    if-eqz v2, :cond_55

    move v0, v1

    goto :goto_4

    :cond_49
    iget-object v2, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    move v0, v1

    goto :goto_4

    :cond_55
    iget-wide v2, p0, Lcom/bbm/d/eo;->e:J

    iget-wide v4, p1, Lcom/bbm/d/eo;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5f

    move v0, v1

    goto :goto_4

    :cond_5f
    iget-object v2, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    if-nez v2, :cond_69

    iget-object v2, p1, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    if-eqz v2, :cond_75

    move v0, v1

    goto :goto_4

    :cond_69
    iget-object v2, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    move v0, v1

    goto :goto_4

    :cond_75
    iget-object v2, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    if-nez v2, :cond_7f

    iget-object v2, p1, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    if-eqz v2, :cond_8c

    move v0, v1

    goto :goto_4

    :cond_7f
    iget-object v2, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    move v0, v1

    goto/16 :goto_4

    :cond_8c
    iget-wide v2, p0, Lcom/bbm/d/eo;->h:J

    iget-wide v4, p1, Lcom/bbm/d/eo;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_97

    move v0, v1

    goto/16 :goto_4

    :cond_97
    iget-boolean v2, p0, Lcom/bbm/d/eo;->i:Z

    iget-boolean v3, p1, Lcom/bbm/d/eo;->i:Z

    if-eq v2, v3, :cond_a0

    move v0, v1

    goto/16 :goto_4

    :cond_a0
    iget-boolean v2, p0, Lcom/bbm/d/eo;->j:Z

    iget-boolean v3, p1, Lcom/bbm/d/eo;->j:Z

    if-eq v2, v3, :cond_a9

    move v0, v1

    goto/16 :goto_4

    :cond_a9
    iget-object v2, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    if-nez v2, :cond_b4

    iget-object v2, p1, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    if-eqz v2, :cond_c1

    move v0, v1

    goto/16 :goto_4

    :cond_b4
    iget-object v2, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    move v0, v1

    goto/16 :goto_4

    :cond_c1
    iget-boolean v2, p0, Lcom/bbm/d/eo;->l:Z

    iget-boolean v3, p1, Lcom/bbm/d/eo;->l:Z

    if-eq v2, v3, :cond_ca

    move v0, v1

    goto/16 :goto_4

    :cond_ca
    iget-object v2, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    if-nez v2, :cond_d5

    iget-object v2, p1, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    if-eqz v2, :cond_e2

    move v0, v1

    goto/16 :goto_4

    :cond_d5
    iget-object v2, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    move v0, v1

    goto/16 :goto_4

    :cond_e2
    iget-object v2, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    if-nez v2, :cond_ed

    iget-object v2, p1, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    if-eqz v2, :cond_fa

    move v0, v1

    goto/16 :goto_4

    :cond_ed
    iget-object v2, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fa

    move v0, v1

    goto/16 :goto_4

    :cond_fa
    iget-object v2, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    if-nez v2, :cond_105

    iget-object v2, p1, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    if-eqz v2, :cond_112

    move v0, v1

    goto/16 :goto_4

    :cond_105
    iget-object v2, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_112

    move v0, v1

    goto/16 :goto_4

    :cond_112
    iget-object v2, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    if-nez v2, :cond_11d

    iget-object v2, p1, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    if-eqz v2, :cond_12a

    move v0, v1

    goto/16 :goto_4

    :cond_11d
    iget-object v2, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12a

    move v0, v1

    goto/16 :goto_4

    :cond_12a
    iget-object v2, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 7

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget-wide v4, p0, Lcom/bbm/d/eo;->a:J

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    if-nez v0, :cond_85

    move v0, v1

    :goto_11
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/eo;->c:Z

    if-eqz v0, :cond_8c

    move v0, v2

    :goto_19
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    if-nez v0, :cond_8e

    move v0, v1

    :goto_21
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/d/eo;->e:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    if-nez v0, :cond_95

    move v0, v1

    :goto_2f
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    if-nez v0, :cond_9c

    move v0, v1

    :goto_37
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/d/eo;->h:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/eo;->i:Z

    if-eqz v0, :cond_a3

    move v0, v2

    :goto_45
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/eo;->j:Z

    if-eqz v0, :cond_a5

    move v0, v2

    :goto_4d
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    if-nez v0, :cond_a7

    move v0, v1

    :goto_55
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/d/eo;->l:Z

    if-eqz v4, :cond_ae

    :goto_5c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    if-nez v0, :cond_b0

    move v0, v1

    :goto_64
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    if-nez v0, :cond_b7

    move v0, v1

    :goto_6c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    if-nez v0, :cond_be

    move v0, v1

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    if-nez v0, :cond_c5

    move v0, v1

    :goto_7c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    if-nez v2, :cond_cc

    :goto_83
    add-int/2addr v0, v1

    return v0

    :cond_85
    iget-object v0, p0, Lcom/bbm/d/eo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_11

    :cond_8c
    move v0, v3

    goto :goto_19

    :cond_8e
    iget-object v0, p0, Lcom/bbm/d/eo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_21

    :cond_95
    iget-object v0, p0, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_9c
    iget-object v0, p0, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_37

    :cond_a3
    move v0, v3

    goto :goto_45

    :cond_a5
    move v0, v3

    goto :goto_4d

    :cond_a7
    iget-object v0, p0, Lcom/bbm/d/eo;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_55

    :cond_ae
    move v2, v3

    goto :goto_5c

    :cond_b0
    iget-object v0, p0, Lcom/bbm/d/eo;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_64

    :cond_b7
    iget-object v0, p0, Lcom/bbm/d/eo;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6c

    :cond_be
    iget-object v0, p0, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_74

    :cond_c5
    iget-object v0, p0, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7c

    :cond_cc
    iget-object v1, p0, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v1

    goto :goto_83
.end method
