.class public Lcom/bbm/g/t;
.super Ljava/lang/Object;
.source "GroupInvitation.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Lcom/bbm/g/u;

.field public o:J

.field public p:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/g/t;->a:J

    iput-wide v2, p0, Lcom/bbm/g/t;->b:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/g/t;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/g/t;->k:Z

    iput-boolean v1, p0, Lcom/bbm/g/t;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    sget-object v0, Lcom/bbm/g/u;->g:Lcom/bbm/g/u;

    iput-object v0, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    iput-wide v2, p0, Lcom/bbm/g/t;->o:J

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/g/t;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/bbm/g/t;->a:J

    iput-wide v2, p0, Lcom/bbm/g/t;->b:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/g/t;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/g/t;->k:Z

    iput-boolean v1, p0, Lcom/bbm/g/t;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    sget-object v0, Lcom/bbm/g/u;->g:Lcom/bbm/g/u;

    iput-object v0, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    iput-wide v2, p0, Lcom/bbm/g/t;->o:J

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    iget-wide v0, p1, Lcom/bbm/g/t;->a:J

    iput-wide v0, p0, Lcom/bbm/g/t;->a:J

    iget-wide v0, p1, Lcom/bbm/g/t;->b:J

    iput-wide v0, p0, Lcom/bbm/g/t;->b:J

    iget-object v0, p1, Lcom/bbm/g/t;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/g/t;->d:Z

    iput-boolean v0, p0, Lcom/bbm/g/t;->d:Z

    iget-object v0, p1, Lcom/bbm/g/t;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/t;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/t;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/t;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/t;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/t;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/g/t;->k:Z

    iput-boolean v0, p0, Lcom/bbm/g/t;->k:Z

    iget-boolean v0, p1, Lcom/bbm/g/t;->l:Z

    iput-boolean v0, p0, Lcom/bbm/g/t;->l:Z

    iget-object v0, p1, Lcom/bbm/g/t;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    iput-object v0, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    iget-wide v0, p1, Lcom/bbm/g/t;->o:J

    iput-wide v0, p0, Lcom/bbm/g/t;->o:J

    iget-object v0, p1, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    const-wide/16 v2, 0x0

    const-string v0, "attemptsMax"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "attemptsMax"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/bbm/g/t;->a:J

    :cond_13
    const-string v0, "attemptsRemaining"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "attemptsRemaining"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/bbm/g/t;->b:J

    :cond_24
    const-string v0, "groupDescription"

    iget-object v1, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    const-string v0, "groupIsProtected"

    iget-boolean v1, p0, Lcom/bbm/g/t;->d:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/t;->d:Z

    const-string v0, "groupName"

    iget-object v1, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    const-string v0, "groupUniqueName"

    iget-object v1, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    const-string v0, "invitationId"

    iget-object v1, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    const-string v0, "inviterDisplayName"

    iget-object v1, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    const-string v0, "inviterPin"

    iget-object v1, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    const-string v0, "inviterUri"

    iget-object v1, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    const-string v0, "isForRestore"

    iget-boolean v1, p0, Lcom/bbm/g/t;->k:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/t;->k:Z

    const-string v0, "isUnread"

    iget-boolean v1, p0, Lcom/bbm/g/t;->l:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/t;->l:Z

    const-string v0, "securityQuestion"

    iget-object v1, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    const-string v0, "state"

    iget-object v1, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    invoke-virtual {v1}, Lcom/bbm/g/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/g/u;->a(Ljava/lang/String;)Lcom/bbm/g/u;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "timestamp"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_bf

    const-wide/16 v0, 0x0

    :goto_bc
    iput-wide v0, p0, Lcom/bbm/g/t;->o:J

    :cond_be
    return-void

    :cond_bf
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_bc
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/g/t;

    invoke-direct {v0, p0}, Lcom/bbm/g/t;-><init>(Lcom/bbm/g/t;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

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
    check-cast p1, Lcom/bbm/g/t;

    iget-wide v2, p0, Lcom/bbm/g/t;->a:J

    iget-wide v4, p1, Lcom/bbm/g/t;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-wide v2, p0, Lcom/bbm/g/t;->b:J

    iget-wide v4, p1, Lcom/bbm/g/t;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2b

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-object v2, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    if-nez v2, :cond_35

    iget-object v2, p1, Lcom/bbm/g/t;->c:Ljava/lang/String;

    if-eqz v2, :cond_41

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    move v0, v1

    goto :goto_4

    :cond_41
    iget-boolean v2, p0, Lcom/bbm/g/t;->d:Z

    iget-boolean v3, p1, Lcom/bbm/g/t;->d:Z

    if-eq v2, v3, :cond_49

    move v0, v1

    goto :goto_4

    :cond_49
    iget-object v2, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    if-nez v2, :cond_53

    iget-object v2, p1, Lcom/bbm/g/t;->e:Ljava/lang/String;

    if-eqz v2, :cond_5f

    move v0, v1

    goto :goto_4

    :cond_53
    iget-object v2, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    move v0, v1

    goto :goto_4

    :cond_5f
    iget-object v2, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    if-nez v2, :cond_69

    iget-object v2, p1, Lcom/bbm/g/t;->f:Ljava/lang/String;

    if-eqz v2, :cond_75

    move v0, v1

    goto :goto_4

    :cond_69
    iget-object v2, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    move v0, v1

    goto :goto_4

    :cond_75
    iget-object v2, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    if-nez v2, :cond_7f

    iget-object v2, p1, Lcom/bbm/g/t;->g:Ljava/lang/String;

    if-eqz v2, :cond_8c

    move v0, v1

    goto :goto_4

    :cond_7f
    iget-object v2, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    move v0, v1

    goto/16 :goto_4

    :cond_8c
    iget-object v2, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    if-nez v2, :cond_97

    iget-object v2, p1, Lcom/bbm/g/t;->h:Ljava/lang/String;

    if-eqz v2, :cond_a4

    move v0, v1

    goto/16 :goto_4

    :cond_97
    iget-object v2, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    move v0, v1

    goto/16 :goto_4

    :cond_a4
    iget-object v2, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    if-nez v2, :cond_af

    iget-object v2, p1, Lcom/bbm/g/t;->i:Ljava/lang/String;

    if-eqz v2, :cond_bc

    move v0, v1

    goto/16 :goto_4

    :cond_af
    iget-object v2, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    move v0, v1

    goto/16 :goto_4

    :cond_bc
    iget-object v2, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    if-nez v2, :cond_c7

    iget-object v2, p1, Lcom/bbm/g/t;->j:Ljava/lang/String;

    if-eqz v2, :cond_d4

    move v0, v1

    goto/16 :goto_4

    :cond_c7
    iget-object v2, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    move v0, v1

    goto/16 :goto_4

    :cond_d4
    iget-boolean v2, p0, Lcom/bbm/g/t;->k:Z

    iget-boolean v3, p1, Lcom/bbm/g/t;->k:Z

    if-eq v2, v3, :cond_dd

    move v0, v1

    goto/16 :goto_4

    :cond_dd
    iget-boolean v2, p0, Lcom/bbm/g/t;->l:Z

    iget-boolean v3, p1, Lcom/bbm/g/t;->l:Z

    if-eq v2, v3, :cond_e6

    move v0, v1

    goto/16 :goto_4

    :cond_e6
    iget-object v2, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    if-nez v2, :cond_f1

    iget-object v2, p1, Lcom/bbm/g/t;->m:Ljava/lang/String;

    if-eqz v2, :cond_fe

    move v0, v1

    goto/16 :goto_4

    :cond_f1
    iget-object v2, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/t;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    move v0, v1

    goto/16 :goto_4

    :cond_fe
    iget-object v2, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    if-nez v2, :cond_109

    iget-object v2, p1, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    if-eqz v2, :cond_116

    move v0, v1

    goto/16 :goto_4

    :cond_109
    iget-object v2, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    iget-object v3, p1, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    invoke-virtual {v2, v3}, Lcom/bbm/g/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_116

    move v0, v1

    goto/16 :goto_4

    :cond_116
    iget-wide v2, p0, Lcom/bbm/g/t;->o:J

    iget-wide v4, p1, Lcom/bbm/g/t;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_121

    move v0, v1

    goto/16 :goto_4

    :cond_121
    iget-object v2, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

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

    iget-wide v4, p0, Lcom/bbm/g/t;->a:J

    long-to-int v0, v4

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/g/t;->b:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    if-nez v0, :cond_7d

    move v0, v1

    :goto_17
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/g/t;->d:Z

    if-eqz v0, :cond_84

    move v0, v2

    :goto_1f
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    if-nez v0, :cond_86

    move v0, v1

    :goto_27
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    if-nez v0, :cond_8d

    move v0, v1

    :goto_2f
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    if-nez v0, :cond_94

    move v0, v1

    :goto_37
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    if-nez v0, :cond_9b

    move v0, v1

    :goto_3f
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    if-nez v0, :cond_a2

    move v0, v1

    :goto_47
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    if-nez v0, :cond_a9

    move v0, v1

    :goto_4f
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/g/t;->k:Z

    if-eqz v0, :cond_b0

    move v0, v2

    :goto_57
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/g/t;->l:Z

    if-eqz v4, :cond_b2

    :goto_5e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    if-nez v0, :cond_b4

    move v0, v1

    :goto_66
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    if-nez v0, :cond_bb

    move v0, v1

    :goto_6e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bbm/g/t;->o:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    if-nez v2, :cond_c2

    :goto_7b
    add-int/2addr v0, v1

    return v0

    :cond_7d
    iget-object v0, p0, Lcom/bbm/g/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_17

    :cond_84
    move v0, v3

    goto :goto_1f

    :cond_86
    iget-object v0, p0, Lcom/bbm/g/t;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_27

    :cond_8d
    iget-object v0, p0, Lcom/bbm/g/t;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_94
    iget-object v0, p0, Lcom/bbm/g/t;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_37

    :cond_9b
    iget-object v0, p0, Lcom/bbm/g/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3f

    :cond_a2
    iget-object v0, p0, Lcom/bbm/g/t;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_47

    :cond_a9
    iget-object v0, p0, Lcom/bbm/g/t;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4f

    :cond_b0
    move v0, v3

    goto :goto_57

    :cond_b2
    move v2, v3

    goto :goto_5e

    :cond_b4
    iget-object v0, p0, Lcom/bbm/g/t;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_66

    :cond_bb
    iget-object v0, p0, Lcom/bbm/g/t;->n:Lcom/bbm/g/u;

    invoke-virtual {v0}, Lcom/bbm/g/u;->hashCode()I

    move-result v0

    goto :goto_6e

    :cond_c2
    iget-object v1, p0, Lcom/bbm/g/t;->p:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v1

    goto :goto_7b
.end method
