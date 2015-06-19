.class public Lcom/bbm/d/dx;
.super Ljava/lang/Object;
.source "CallEvent.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:Lcom/bbm/d/dy;

.field public b:J

.field public c:Lcom/bbm/d/dz;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/d/dy;->c:Lcom/bbm/d/dy;

    iput-object v0, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/d/dx;->b:J

    sget-object v0, Lcom/bbm/d/dz;->i:Lcom/bbm/d/dz;

    iput-object v0, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/d/dx;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/d/dx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/d/dy;->c:Lcom/bbm/d/dy;

    iput-object v0, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/d/dx;->b:J

    sget-object v0, Lcom/bbm/d/dz;->i:Lcom/bbm/d/dz;

    iput-object v0, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/d/dx;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    iget-object v0, p1, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    iput-object v0, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    iget-wide v0, p1, Lcom/bbm/d/dx;->b:J

    iput-wide v0, p0, Lcom/bbm/d/dx;->b:J

    iget-object v0, p1, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    iput-object v0, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    iget-object v0, p1, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/d/dx;->e:Z

    iput-boolean v0, p0, Lcom/bbm/d/dx;->e:Z

    iget-object v0, p1, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "callType"

    iget-object v1, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    invoke-virtual {v1}, Lcom/bbm/d/dy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/dy;->a(Ljava/lang/String;)Lcom/bbm/d/dy;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "duration"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/bbm/d/dx;->b:J

    :cond_25
    const-string v0, "eventType"

    iget-object v1, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    invoke-virtual {v1}, Lcom/bbm/d/dz;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/dz;->a(Ljava/lang/String;)Lcom/bbm/d/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    const-string v0, "id"

    iget-object v1, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    const-string v0, "incoming"

    iget-boolean v1, p0, Lcom/bbm/d/dx;->e:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/dx;->e:Z

    const-string v0, "message"

    iget-object v1, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    const-string v0, "userUri"

    iget-object v1, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/d/dx;

    invoke-direct {v0, p0}, Lcom/bbm/d/dx;-><init>(Lcom/bbm/d/dx;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

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
    check-cast p1, Lcom/bbm/d/dx;

    iget-object v2, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    iget-object v3, p1, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    invoke-virtual {v2, v3}, Lcom/bbm/d/dy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-wide v2, p0, Lcom/bbm/d/dx;->b:J

    iget-wide v4, p1, Lcom/bbm/d/dx;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    if-eqz v2, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    iget-object v3, p1, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    invoke-virtual {v2, v3}, Lcom/bbm/d/dz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    if-nez v2, :cond_57

    iget-object v2, p1, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    if-eqz v2, :cond_63

    move v0, v1

    goto :goto_4

    :cond_57
    iget-object v2, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    move v0, v1

    goto :goto_4

    :cond_63
    iget-boolean v2, p0, Lcom/bbm/d/dx;->e:Z

    iget-boolean v3, p1, Lcom/bbm/d/dx;->e:Z

    if-eq v2, v3, :cond_6b

    move v0, v1

    goto :goto_4

    :cond_6b
    iget-object v2, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    if-nez v2, :cond_75

    iget-object v2, p1, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    if-eqz v2, :cond_81

    move v0, v1

    goto :goto_4

    :cond_75
    iget-object v2, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    move v0, v1

    goto :goto_4

    :cond_81
    iget-object v2, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    if-nez v2, :cond_8c

    iget-object v2, p1, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    if-eqz v2, :cond_99

    move v0, v1

    goto/16 :goto_4

    :cond_8c
    iget-object v2, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    move v0, v1

    goto/16 :goto_4

    :cond_99
    iget-object v2, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bbm/d/dx;->b:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    if-nez v0, :cond_46

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/dx;->e:Z

    if-eqz v0, :cond_54

    const/16 v0, 0x4cf

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    if-nez v0, :cond_57

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    if-nez v0, :cond_5e

    move v0, v1

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    if-nez v2, :cond_65

    :goto_3d
    add-int/2addr v0, v1

    return v0

    :cond_3f
    iget-object v0, p0, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;

    invoke-virtual {v0}, Lcom/bbm/d/dy;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_46
    iget-object v0, p0, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    invoke-virtual {v0}, Lcom/bbm/d/dz;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_4d
    iget-object v0, p0, Lcom/bbm/d/dx;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1d

    :cond_54
    const/16 v0, 0x4d5

    goto :goto_26

    :cond_57
    iget-object v0, p0, Lcom/bbm/d/dx;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_5e
    iget-object v0, p0, Lcom/bbm/d/dx;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_36

    :cond_65
    iget-object v1, p0, Lcom/bbm/d/dx;->h:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v1

    goto :goto_3d
.end method
