.class public Lcom/bbm/d/fl;
.super Ljava/lang/Object;
.source "PartnerApp.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/d/fl;->g:Z

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/d/fl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/d/fl;->g:Z

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    iget-object v0, p1, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/d/fl;->g:Z

    iput-boolean v0, p0, Lcom/bbm/d/fl;->g:Z

    iget-object v0, p1, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "appId"

    iget-object v1, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    const-string v0, "description"

    iget-object v1, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    const-string v0, "displayName"

    iget-object v1, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    const-string v0, "imagePath"

    iget-object v1, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    const-string v0, "installUrl"

    iget-object v1, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    const-string v0, "invokeUrl"

    iget-object v1, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    const-string v0, "isRegistered"

    iget-boolean v1, p0, Lcom/bbm/d/fl;->g:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/fl;->g:Z

    return-void
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/d/fl;

    invoke-direct {v0, p0}, Lcom/bbm/d/fl;-><init>(Lcom/bbm/d/fl;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

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
    check-cast p1, Lcom/bbm/d/fl;

    iget-object v2, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    if-eqz v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    if-nez v2, :cond_4d

    iget-object v2, p1, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    if-eqz v2, :cond_59

    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    if-nez v2, :cond_63

    iget-object v2, p1, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    if-eqz v2, :cond_6f

    move v0, v1

    goto :goto_4

    :cond_63
    iget-object v2, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    move v0, v1

    goto :goto_4

    :cond_6f
    iget-object v2, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    if-nez v2, :cond_79

    iget-object v2, p1, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    if-eqz v2, :cond_85

    move v0, v1

    goto :goto_4

    :cond_79
    iget-object v2, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    move v0, v1

    goto :goto_4

    :cond_85
    iget-object v2, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    if-nez v2, :cond_90

    iget-object v2, p1, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    if-eqz v2, :cond_9d

    move v0, v1

    goto/16 :goto_4

    :cond_90
    iget-object v2, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    move v0, v1

    goto/16 :goto_4

    :cond_9d
    iget-boolean v2, p0, Lcom/bbm/d/fl;->g:Z

    iget-boolean v3, p1, Lcom/bbm/d/fl;->g:Z

    if-eq v2, v3, :cond_a6

    move v0, v1

    goto/16 :goto_4

    :cond_a6
    iget-object v2, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    if-nez v0, :cond_41

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    if-nez v0, :cond_48

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    if-nez v0, :cond_4f

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    if-nez v0, :cond_56

    move v0, v1

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    if-nez v0, :cond_5d

    move v0, v1

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    if-nez v0, :cond_64

    move v0, v1

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/fl;->g:Z

    if-eqz v0, :cond_6b

    const/16 v0, 0x4cf

    :goto_38
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    if-nez v2, :cond_6e

    :goto_3f
    add-int/2addr v0, v1

    return v0

    :cond_41
    iget-object v0, p0, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_48
    iget-object v0, p0, Lcom/bbm/d/fl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_4f
    iget-object v0, p0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_17

    :cond_56
    iget-object v0, p0, Lcom/bbm/d/fl;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1f

    :cond_5d
    iget-object v0, p0, Lcom/bbm/d/fl;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_27

    :cond_64
    iget-object v0, p0, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_6b
    const/16 v0, 0x4d5

    goto :goto_38

    :cond_6e
    iget-object v1, p0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v1

    goto :goto_3f
.end method
