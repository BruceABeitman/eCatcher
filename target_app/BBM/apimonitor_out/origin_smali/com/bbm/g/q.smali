.class public Lcom/bbm/g/q;
.super Ljava/lang/Object;
.source "GroupConversation.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Lcom/bbm/g/r;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/bbm/g/q;->a:Z

    iput-boolean v1, p0, Lcom/bbm/g/q;->b:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/g/q;->e:Z

    sget-object v0, Lcom/bbm/g/r;->i:Lcom/bbm/g/r;

    iput-object v0, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/g/q;->h:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/g/q;->j:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/g/q;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/bbm/g/q;->a:Z

    iput-boolean v1, p0, Lcom/bbm/g/q;->b:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/g/q;->e:Z

    sget-object v0, Lcom/bbm/g/r;->i:Lcom/bbm/g/r;

    iput-object v0, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/g/q;->h:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/g/q;->j:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    iget-boolean v0, p1, Lcom/bbm/g/q;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/q;->a:Z

    iget-boolean v0, p1, Lcom/bbm/g/q;->b:Z

    iput-boolean v0, p0, Lcom/bbm/g/q;->b:Z

    iget-object v0, p1, Lcom/bbm/g/q;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    iget-object v0, p1, Lcom/bbm/g/q;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/g/q;->e:Z

    iput-boolean v0, p0, Lcom/bbm/g/q;->e:Z

    iget-object v0, p1, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    iput-object v0, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    iget-object v0, p1, Lcom/bbm/g/q;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    iget-wide v0, p1, Lcom/bbm/g/q;->h:J

    iput-wide v0, p0, Lcom/bbm/g/q;->h:J

    iget-object v0, p1, Lcom/bbm/g/q;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    iget-wide v0, p1, Lcom/bbm/g/q;->j:J

    iput-wide v0, p0, Lcom/bbm/g/q;->j:J

    iget-object v0, p1, Lcom/bbm/g/q;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 8

    const-wide/16 v2, 0x0

    const-string v0, "canDelete"

    iget-boolean v1, p0, Lcom/bbm/g/q;->a:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/q;->a:Z

    const-string v0, "generalDiscussion"

    iget-boolean v1, p0, Lcom/bbm/g/q;->b:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/q;->b:Z

    const-string v0, "groupConversationStartedTyping"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    const-string v0, "groupConversationStartedTyping"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_40

    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_40

    iget-object v4, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_40
    const-string v0, "groupUri"

    iget-object v1, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    const-string v0, "isUpdated"

    iget-boolean v1, p0, Lcom/bbm/g/q;->e:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/q;->e:Z

    const-string v0, "keepMessagesFor"

    iget-object v1, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    invoke-virtual {v1}, Lcom/bbm/g/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/g/r;->a(Ljava/lang/String;)Lcom/bbm/g/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    const-string v0, "latestMessage"

    iget-object v1, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    const-string v0, "latestTimestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v0, "latestTimestamp"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b6

    move-wide v0, v2

    :goto_87
    iput-wide v0, p0, Lcom/bbm/g/q;->h:J

    :cond_89
    const-string v0, "name"

    iget-object v1, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    const-string v0, "numMessages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "numMessages"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_bb

    :goto_a9
    iput-wide v2, p0, Lcom/bbm/g/q;->j:J

    :cond_ab
    const-string v0, "uri"

    iget-object v1, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    return-void

    :cond_b6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_87

    :cond_bb
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_a9
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/g/q;

    invoke-direct {v0, p0}, Lcom/bbm/g/q;-><init>(Lcom/bbm/g/q;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

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
    check-cast p1, Lcom/bbm/g/q;

    iget-boolean v2, p0, Lcom/bbm/g/q;->a:Z

    iget-boolean v3, p1, Lcom/bbm/g/q;->a:Z

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-boolean v2, p0, Lcom/bbm/g/q;->b:Z

    iget-boolean v3, p1, Lcom/bbm/g/q;->b:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget-object v2, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    if-nez v2, :cond_31

    iget-object v2, p1, Lcom/bbm/g/q;->c:Ljava/util/List;

    if-eqz v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/g/q;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    if-nez v2, :cond_47

    iget-object v2, p1, Lcom/bbm/g/q;->d:Ljava/lang/String;

    if-eqz v2, :cond_53

    move v0, v1

    goto :goto_4

    :cond_47
    iget-object v2, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    move v0, v1

    goto :goto_4

    :cond_53
    iget-boolean v2, p0, Lcom/bbm/g/q;->e:Z

    iget-boolean v3, p1, Lcom/bbm/g/q;->e:Z

    if-eq v2, v3, :cond_5b

    move v0, v1

    goto :goto_4

    :cond_5b
    iget-object v2, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    if-nez v2, :cond_65

    iget-object v2, p1, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    if-eqz v2, :cond_71

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    iget-object v3, p1, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    invoke-virtual {v2, v3}, Lcom/bbm/g/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    move v0, v1

    goto :goto_4

    :cond_71
    iget-object v2, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    if-nez v2, :cond_7b

    iget-object v2, p1, Lcom/bbm/g/q;->g:Ljava/lang/String;

    if-eqz v2, :cond_88

    move v0, v1

    goto :goto_4

    :cond_7b
    iget-object v2, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/q;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    move v0, v1

    goto/16 :goto_4

    :cond_88
    iget-wide v2, p0, Lcom/bbm/g/q;->h:J

    iget-wide v4, p1, Lcom/bbm/g/q;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_93

    move v0, v1

    goto/16 :goto_4

    :cond_93
    iget-object v2, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    if-nez v2, :cond_9e

    iget-object v2, p1, Lcom/bbm/g/q;->i:Ljava/lang/String;

    if-eqz v2, :cond_ab

    move v0, v1

    goto/16 :goto_4

    :cond_9e
    iget-object v2, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    move v0, v1

    goto/16 :goto_4

    :cond_ab
    iget-wide v2, p0, Lcom/bbm/g/q;->j:J

    iget-wide v4, p1, Lcom/bbm/g/q;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b6

    move v0, v1

    goto/16 :goto_4

    :cond_b6
    iget-object v2, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    if-nez v2, :cond_c1

    iget-object v2, p1, Lcom/bbm/g/q;->k:Ljava/lang/String;

    if-eqz v2, :cond_ce

    move v0, v1

    goto/16 :goto_4

    :cond_c1
    iget-object v2, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce

    move v0, v1

    goto/16 :goto_4

    :cond_ce
    iget-object v2, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 6

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/bbm/g/q;->a:Z

    if-eqz v0, :cond_5f

    move v0, v1

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/g/q;->b:Z

    if-eqz v0, :cond_61

    move v0, v1

    :goto_13
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    if-nez v0, :cond_63

    move v0, v3

    :goto_1b
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    if-nez v0, :cond_6a

    move v0, v3

    :goto_23
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/g/q;->e:Z

    if-eqz v4, :cond_71

    :goto_2a
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    if-nez v0, :cond_73

    move v0, v3

    :goto_32
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    if-nez v0, :cond_7a

    move v0, v3

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/bbm/g/q;->h:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    if-nez v0, :cond_81

    move v0, v3

    :goto_48
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/bbm/g/q;->j:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    if-nez v0, :cond_88

    move v0, v3

    :goto_56
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    if-nez v1, :cond_8f

    :goto_5d
    add-int/2addr v0, v3

    return v0

    :cond_5f
    move v0, v2

    goto :goto_a

    :cond_61
    move v0, v2

    goto :goto_13

    :cond_63
    iget-object v0, p0, Lcom/bbm/g/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_1b

    :cond_6a
    iget-object v0, p0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_23

    :cond_71
    move v1, v2

    goto :goto_2a

    :cond_73
    iget-object v0, p0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;

    invoke-virtual {v0}, Lcom/bbm/g/r;->hashCode()I

    move-result v0

    goto :goto_32

    :cond_7a
    iget-object v0, p0, Lcom/bbm/g/q;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3a

    :cond_81
    iget-object v0, p0, Lcom/bbm/g/q;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_48

    :cond_88
    iget-object v0, p0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_56

    :cond_8f
    iget-object v1, p0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v3

    goto :goto_5d
.end method
