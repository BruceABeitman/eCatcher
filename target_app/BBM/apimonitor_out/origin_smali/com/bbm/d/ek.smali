.class public Lcom/bbm/d/ek;
.super Ljava/lang/Object;
.source "ChannelPost.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/d/ek;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/d/ek;->f:J

    iput-boolean v1, p0, Lcom/bbm/d/ek;->g:Z

    iput-boolean v1, p0, Lcom/bbm/d/ek;->h:Z

    iput-boolean v1, p0, Lcom/bbm/d/ek;->i:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bbm/d/ek;->l:Z

    iput-boolean v1, p0, Lcom/bbm/d/ek;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/d/ek;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/d/ek;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/d/ek;->f:J

    iput-boolean v1, p0, Lcom/bbm/d/ek;->g:Z

    iput-boolean v1, p0, Lcom/bbm/d/ek;->h:Z

    iput-boolean v1, p0, Lcom/bbm/d/ek;->i:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bbm/d/ek;->l:Z

    iput-boolean v1, p0, Lcom/bbm/d/ek;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    iget-wide v0, p1, Lcom/bbm/d/ek;->a:J

    iput-wide v0, p0, Lcom/bbm/d/ek;->a:J

    iget-object v0, p1, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    iget-wide v0, p1, Lcom/bbm/d/ek;->f:J

    iput-wide v0, p0, Lcom/bbm/d/ek;->f:J

    iget-boolean v0, p1, Lcom/bbm/d/ek;->g:Z

    iput-boolean v0, p0, Lcom/bbm/d/ek;->g:Z

    iget-boolean v0, p1, Lcom/bbm/d/ek;->h:Z

    iput-boolean v0, p0, Lcom/bbm/d/ek;->h:Z

    iget-boolean v0, p1, Lcom/bbm/d/ek;->i:Z

    iput-boolean v0, p0, Lcom/bbm/d/ek;->i:Z

    iget-object v0, p1, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    iget-boolean v0, p1, Lcom/bbm/d/ek;->l:Z

    iput-boolean v0, p0, Lcom/bbm/d/ek;->l:Z

    iget-boolean v0, p1, Lcom/bbm/d/ek;->m:Z

    iput-boolean v0, p0, Lcom/bbm/d/ek;->m:Z

    iget-object v0, p1, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    const-wide/16 v2, 0x0

    const-string v0, "activeConversationsCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "activeConversationsCount"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ad

    move-wide v0, v2

    :goto_19
    iput-wide v0, p0, Lcom/bbm/d/ek;->a:J

    :cond_1b
    const-string v0, "channelUri"

    iget-object v1, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    const-string v0, "commentCount"

    iget-object v1, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    const-string v0, "content"

    iget-object v1, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    const-string v0, "externalId"

    iget-object v1, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    const-string v0, "flagCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "flagCount"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b3

    :goto_59
    iput-wide v2, p0, Lcom/bbm/d/ek;->f:J

    :cond_5b
    const-string v0, "flagIgnoredByOwner"

    iget-boolean v1, p0, Lcom/bbm/d/ek;->g:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/ek;->g:Z

    const-string v0, "flagged"

    iget-boolean v1, p0, Lcom/bbm/d/ek;->h:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/ek;->h:Z

    const-string v0, "hyped"

    iget-boolean v1, p0, Lcom/bbm/d/ek;->i:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/ek;->i:Z

    const-string v0, "id"

    iget-object v1, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b8

    const/4 v0, 0x0

    :goto_9b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_b8

    iget-object v2, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    :cond_ad
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_19

    :cond_b3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_59

    :cond_b8
    const-string v0, "isNew"

    iget-boolean v1, p0, Lcom/bbm/d/ek;->l:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/ek;->l:Z

    const-string v0, "isRead"

    iget-boolean v1, p0, Lcom/bbm/d/ek;->m:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/ek;->m:Z

    const-string v0, "likeCount"

    iget-object v1, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    const-string v0, "readCount"

    iget-object v1, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    const-string v0, "statsRefreshTimestamp"

    iget-object v1, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    const-string v0, "timePosted"

    iget-object v1, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    const-string v0, "timeUpdated"

    iget-object v1, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    const-string v0, "title"

    iget-object v1, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/d/ek;

    invoke-direct {v0, p0}, Lcom/bbm/d/ek;-><init>(Lcom/bbm/d/ek;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

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
    check-cast p1, Lcom/bbm/d/ek;

    iget-wide v2, p0, Lcom/bbm/d/ek;->a:J

    iget-wide v4, p1, Lcom/bbm/d/ek;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object v2, p1, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    if-eqz v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-object v2, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    if-eqz v2, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    if-nez v2, :cond_57

    iget-object v2, p1, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    if-eqz v2, :cond_63

    move v0, v1

    goto :goto_4

    :cond_57
    iget-object v2, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    move v0, v1

    goto :goto_4

    :cond_63
    iget-object v2, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    if-nez v2, :cond_6d

    iget-object v2, p1, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    if-eqz v2, :cond_79

    move v0, v1

    goto :goto_4

    :cond_6d
    iget-object v2, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    move v0, v1

    goto :goto_4

    :cond_79
    iget-wide v2, p0, Lcom/bbm/d/ek;->f:J

    iget-wide v4, p1, Lcom/bbm/d/ek;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_83

    move v0, v1

    goto :goto_4

    :cond_83
    iget-boolean v2, p0, Lcom/bbm/d/ek;->g:Z

    iget-boolean v3, p1, Lcom/bbm/d/ek;->g:Z

    if-eq v2, v3, :cond_8c

    move v0, v1

    goto/16 :goto_4

    :cond_8c
    iget-boolean v2, p0, Lcom/bbm/d/ek;->h:Z

    iget-boolean v3, p1, Lcom/bbm/d/ek;->h:Z

    if-eq v2, v3, :cond_95

    move v0, v1

    goto/16 :goto_4

    :cond_95
    iget-boolean v2, p0, Lcom/bbm/d/ek;->i:Z

    iget-boolean v3, p1, Lcom/bbm/d/ek;->i:Z

    if-eq v2, v3, :cond_9e

    move v0, v1

    goto/16 :goto_4

    :cond_9e
    iget-object v2, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    if-nez v2, :cond_a9

    iget-object v2, p1, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    if-eqz v2, :cond_b6

    move v0, v1

    goto/16 :goto_4

    :cond_a9
    iget-object v2, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    move v0, v1

    goto/16 :goto_4

    :cond_b6
    iget-object v2, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    if-nez v2, :cond_c1

    iget-object v2, p1, Lcom/bbm/d/ek;->k:Ljava/util/List;

    if-eqz v2, :cond_ce

    move v0, v1

    goto/16 :goto_4

    :cond_c1
    iget-object v2, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/d/ek;->k:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce

    move v0, v1

    goto/16 :goto_4

    :cond_ce
    iget-boolean v2, p0, Lcom/bbm/d/ek;->l:Z

    iget-boolean v3, p1, Lcom/bbm/d/ek;->l:Z

    if-eq v2, v3, :cond_d7

    move v0, v1

    goto/16 :goto_4

    :cond_d7
    iget-boolean v2, p0, Lcom/bbm/d/ek;->m:Z

    iget-boolean v3, p1, Lcom/bbm/d/ek;->m:Z

    if-eq v2, v3, :cond_e0

    move v0, v1

    goto/16 :goto_4

    :cond_e0
    iget-object v2, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    if-nez v2, :cond_eb

    iget-object v2, p1, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    if-eqz v2, :cond_f8

    move v0, v1

    goto/16 :goto_4

    :cond_eb
    iget-object v2, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f8

    move v0, v1

    goto/16 :goto_4

    :cond_f8
    iget-object v2, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    if-nez v2, :cond_103

    iget-object v2, p1, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    if-eqz v2, :cond_110

    move v0, v1

    goto/16 :goto_4

    :cond_103
    iget-object v2, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    move v0, v1

    goto/16 :goto_4

    :cond_110
    iget-object v2, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    if-nez v2, :cond_11b

    iget-object v2, p1, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    if-eqz v2, :cond_128

    move v0, v1

    goto/16 :goto_4

    :cond_11b
    iget-object v2, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_128

    move v0, v1

    goto/16 :goto_4

    :cond_128
    iget-object v2, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    if-nez v2, :cond_133

    iget-object v2, p1, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    if-eqz v2, :cond_140

    move v0, v1

    goto/16 :goto_4

    :cond_133
    iget-object v2, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_140

    move v0, v1

    goto/16 :goto_4

    :cond_140
    iget-object v2, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    if-nez v2, :cond_14b

    iget-object v2, p1, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    if-eqz v2, :cond_158

    move v0, v1

    goto/16 :goto_4

    :cond_14b
    iget-object v2, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_158

    move v0, v1

    goto/16 :goto_4

    :cond_158
    iget-object v2, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    if-nez v2, :cond_163

    iget-object v2, p1, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    if-eqz v2, :cond_170

    move v0, v1

    goto/16 :goto_4

    :cond_163
    iget-object v2, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_170

    move v0, v1

    goto/16 :goto_4

    :cond_170
    iget-object v2, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

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

    iget-wide v4, p0, Lcom/bbm/d/ek;->a:J

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    if-nez v0, :cond_9f

    move v0, v1

    :goto_11
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    if-nez v0, :cond_a7

    move v0, v1

    :goto_19
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    if-nez v0, :cond_af

    move v0, v1

    :goto_21
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    if-nez v0, :cond_b7

    move v0, v1

    :goto_29
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/d/ek;->f:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/ek;->g:Z

    if-eqz v0, :cond_bf

    move v0, v2

    :goto_37
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/ek;->h:Z

    if-eqz v0, :cond_c2

    move v0, v2

    :goto_3f
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/ek;->i:Z

    if-eqz v0, :cond_c5

    move v0, v2

    :goto_47
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    if-nez v0, :cond_c7

    move v0, v1

    :goto_4f
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    if-nez v0, :cond_ce

    move v0, v1

    :goto_57
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/ek;->l:Z

    if-eqz v0, :cond_d5

    move v0, v2

    :goto_5f
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/d/ek;->m:Z

    if-eqz v4, :cond_d7

    :goto_66
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    if-nez v0, :cond_d9

    move v0, v1

    :goto_6e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    if-nez v0, :cond_e0

    move v0, v1

    :goto_76
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    if-nez v0, :cond_e7

    move v0, v1

    :goto_7e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    if-nez v0, :cond_ee

    move v0, v1

    :goto_86
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    if-nez v0, :cond_f5

    move v0, v1

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    if-nez v0, :cond_fc

    move v0, v1

    :goto_96
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    if-nez v2, :cond_103

    :goto_9d
    add-int/2addr v0, v1

    return v0

    :cond_9f
    iget-object v0, p0, Lcom/bbm/d/ek;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_a7
    iget-object v0, p0, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_19

    :cond_af
    iget-object v0, p0, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_21

    :cond_b7
    iget-object v0, p0, Lcom/bbm/d/ek;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_29

    :cond_bf
    move v0, v3

    goto/16 :goto_37

    :cond_c2
    move v0, v3

    goto/16 :goto_3f

    :cond_c5
    move v0, v3

    goto :goto_47

    :cond_c7
    iget-object v0, p0, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4f

    :cond_ce
    iget-object v0, p0, Lcom/bbm/d/ek;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_57

    :cond_d5
    move v0, v3

    goto :goto_5f

    :cond_d7
    move v2, v3

    goto :goto_66

    :cond_d9
    iget-object v0, p0, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6e

    :cond_e0
    iget-object v0, p0, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_76

    :cond_e7
    iget-object v0, p0, Lcom/bbm/d/ek;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7e

    :cond_ee
    iget-object v0, p0, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_86

    :cond_f5
    iget-object v0, p0, Lcom/bbm/d/ek;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8e

    :cond_fc
    iget-object v0, p0, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_96

    :cond_103
    iget-object v1, p0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v1

    goto :goto_9d
.end method
