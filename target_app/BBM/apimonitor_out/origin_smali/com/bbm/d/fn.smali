.class public Lcom/bbm/d/fn;
.super Ljava/lang/Object;
.source "PendingContact.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lcom/bbm/d/fo;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Lcom/bbm/d/fp;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/d/fn;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/d/fn;->d:Z

    sget-object v0, Lcom/bbm/d/fo;->e:Lcom/bbm/d/fo;

    iput-object v0, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    iput-boolean v1, p0, Lcom/bbm/d/fn;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/fp;->e:Lcom/bbm/d/fp;

    iput-object v0, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    iput-wide v2, p0, Lcom/bbm/d/fn;->i:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/d/fn;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/d/fn;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/d/fn;->d:Z

    sget-object v0, Lcom/bbm/d/fo;->e:Lcom/bbm/d/fo;

    iput-object v0, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    iput-boolean v1, p0, Lcom/bbm/d/fn;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/fp;->e:Lcom/bbm/d/fp;

    iput-object v0, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    iput-wide v2, p0, Lcom/bbm/d/fn;->i:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    iget-wide v0, p1, Lcom/bbm/d/fn;->a:J

    iput-wide v0, p0, Lcom/bbm/d/fn;->a:J

    iget-object v0, p1, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/d/fn;->d:Z

    iput-boolean v0, p0, Lcom/bbm/d/fn;->d:Z

    iget-object v0, p1, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    iput-object v0, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    iget-boolean v0, p1, Lcom/bbm/d/fn;->f:Z

    iput-boolean v0, p0, Lcom/bbm/d/fn;->f:Z

    iget-object v0, p1, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    iput-object v0, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    iget-wide v0, p1, Lcom/bbm/d/fn;->i:J

    iput-wide v0, p0, Lcom/bbm/d/fn;->i:J

    iget-object v0, p1, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "categoryId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "categoryId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/bbm/d/fn;->a:J

    :cond_13
    const-string v0, "greeting"

    iget-object v1, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    const-string v0, "id"

    iget-object v1, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    const-string v0, "incoming"

    iget-boolean v1, p0, Lcom/bbm/d/fn;->d:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/fn;->d:Z

    const-string v0, "inviteMethod"

    iget-object v1, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    invoke-virtual {v1}, Lcom/bbm/d/fo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/fo;->a(Ljava/lang/String;)Lcom/bbm/d/fo;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    const-string v0, "read"

    iget-boolean v1, p0, Lcom/bbm/d/fn;->f:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/fn;->f:Z

    const-string v0, "securityQuestion"

    iget-object v1, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    const-string v0, "status"

    iget-object v1, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    invoke-virtual {v1}, Lcom/bbm/d/fp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/fp;->a(Ljava/lang/String;)Lcom/bbm/d/fp;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "timestamp"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8e

    const-wide/16 v0, 0x0

    :goto_81
    iput-wide v0, p0, Lcom/bbm/d/fn;->i:J

    :cond_83
    const-string v0, "userUri"

    iget-object v1, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    return-void

    :cond_8e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_81
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/d/fn;

    invoke-direct {v0, p0}, Lcom/bbm/d/fn;-><init>(Lcom/bbm/d/fn;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

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
    check-cast p1, Lcom/bbm/d/fn;

    iget-wide v2, p0, Lcom/bbm/d/fn;->a:J

    iget-wide v4, p1, Lcom/bbm/d/fn;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object v2, p1, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    if-eqz v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-object v2, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    if-eqz v2, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_4d
    iget-boolean v2, p0, Lcom/bbm/d/fn;->d:Z

    iget-boolean v3, p1, Lcom/bbm/d/fn;->d:Z

    if-eq v2, v3, :cond_55

    move v0, v1

    goto :goto_4

    :cond_55
    iget-object v2, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    if-nez v2, :cond_5f

    iget-object v2, p1, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    if-eqz v2, :cond_6b

    move v0, v1

    goto :goto_4

    :cond_5f
    iget-object v2, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    iget-object v3, p1, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    invoke-virtual {v2, v3}, Lcom/bbm/d/fo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    move v0, v1

    goto :goto_4

    :cond_6b
    iget-boolean v2, p0, Lcom/bbm/d/fn;->f:Z

    iget-boolean v3, p1, Lcom/bbm/d/fn;->f:Z

    if-eq v2, v3, :cond_73

    move v0, v1

    goto :goto_4

    :cond_73
    iget-object v2, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    if-nez v2, :cond_7d

    iget-object v2, p1, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    if-eqz v2, :cond_8a

    move v0, v1

    goto :goto_4

    :cond_7d
    iget-object v2, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    move v0, v1

    goto/16 :goto_4

    :cond_8a
    iget-object v2, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    if-nez v2, :cond_95

    iget-object v2, p1, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    if-eqz v2, :cond_a2

    move v0, v1

    goto/16 :goto_4

    :cond_95
    iget-object v2, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    iget-object v3, p1, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    invoke-virtual {v2, v3}, Lcom/bbm/d/fp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    move v0, v1

    goto/16 :goto_4

    :cond_a2
    iget-wide v2, p0, Lcom/bbm/d/fn;->i:J

    iget-wide v4, p1, Lcom/bbm/d/fn;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_ad

    move v0, v1

    goto/16 :goto_4

    :cond_ad
    iget-object v2, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    if-nez v2, :cond_b8

    iget-object v2, p1, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    if-eqz v2, :cond_c5

    move v0, v1

    goto/16 :goto_4

    :cond_b8
    iget-object v2, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c5

    move v0, v1

    goto/16 :goto_4

    :cond_c5
    iget-object v2, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

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

    iget-wide v4, p0, Lcom/bbm/d/fn;->a:J

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    if-nez v0, :cond_57

    move v0, v1

    :goto_11
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    if-nez v0, :cond_5e

    move v0, v1

    :goto_19
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/fn;->d:Z

    if-eqz v0, :cond_65

    move v0, v2

    :goto_21
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    if-nez v0, :cond_67

    move v0, v1

    :goto_29
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/d/fn;->f:Z

    if-eqz v4, :cond_6e

    :goto_30
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    if-nez v0, :cond_70

    move v0, v1

    :goto_38
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    if-nez v0, :cond_77

    move v0, v1

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bbm/d/fn;->i:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    if-nez v0, :cond_7e

    move v0, v1

    :goto_4e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    if-nez v2, :cond_85

    :goto_55
    add-int/2addr v0, v1

    return v0

    :cond_57
    iget-object v0, p0, Lcom/bbm/d/fn;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_11

    :cond_5e
    iget-object v0, p0, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_19

    :cond_65
    move v0, v3

    goto :goto_21

    :cond_67
    iget-object v0, p0, Lcom/bbm/d/fn;->e:Lcom/bbm/d/fo;

    invoke-virtual {v0}, Lcom/bbm/d/fo;->hashCode()I

    move-result v0

    goto :goto_29

    :cond_6e
    move v2, v3

    goto :goto_30

    :cond_70
    iget-object v0, p0, Lcom/bbm/d/fn;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_38

    :cond_77
    iget-object v0, p0, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;

    invoke-virtual {v0}, Lcom/bbm/d/fp;->hashCode()I

    move-result v0

    goto :goto_40

    :cond_7e
    iget-object v0, p0, Lcom/bbm/d/fn;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4e

    :cond_85
    iget-object v1, p0, Lcom/bbm/d/fn;->k:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v1

    goto :goto_55
.end method
