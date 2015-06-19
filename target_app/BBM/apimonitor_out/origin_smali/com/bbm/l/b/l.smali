.class public abstract Lcom/bbm/l/b/l;
.super Ljava/lang/Object;
.source "WebStickerPackBase.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;)Lcom/bbm/l/b/l;
    .registers 4

    const-string v0, "id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    const-string v0, "sku"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    const-string v0, "licenseType"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    const-string v0, "timeUpdated"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/l;->f:Ljava/lang/String;

    const-string v0, "timePublished"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/l;->e:Ljava/lang/String;

    return-object p0
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
    check-cast p1, Lcom/bbm/l/b/j;

    iget-object v2, p0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    if-eqz v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    if-nez v2, :cond_4d

    iget-object v2, p1, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    if-eqz v2, :cond_59

    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p0, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    if-nez v2, :cond_63

    iget-object v2, p1, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    if-eqz v2, :cond_6f

    move v0, v1

    goto :goto_4

    :cond_63
    iget-object v2, p0, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    move v0, v1

    goto :goto_4

    :cond_6f
    iget-object v2, p0, Lcom/bbm/l/b/l;->f:Ljava/lang/String;

    if-nez v2, :cond_79

    iget-object v2, p1, Lcom/bbm/l/b/l;->f:Ljava/lang/String;

    if-eqz v2, :cond_85

    move v0, v1

    goto :goto_4

    :cond_79
    iget-object v2, p0, Lcom/bbm/l/b/l;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/l/b/l;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    move v0, v1

    goto :goto_4

    :cond_85
    iget-object v2, p0, Lcom/bbm/l/b/l;->e:Ljava/lang/String;

    if-nez v2, :cond_90

    iget-object v2, p1, Lcom/bbm/l/b/l;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto/16 :goto_4

    :cond_90
    iget-object v2, p0, Lcom/bbm/l/b/l;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/l/b/l;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    if-nez v0, :cond_30

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    if-nez v0, :cond_37

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    if-nez v0, :cond_3e

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    if-nez v0, :cond_45

    move v0, v1

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/l/b/l;->f:Ljava/lang/String;

    if-nez v0, :cond_4c

    move v0, v1

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/l/b/l;->e:Ljava/lang/String;

    if-nez v2, :cond_53

    :goto_2e
    add-int/2addr v0, v1

    return v0

    :cond_30
    iget-object v0, p0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_37
    iget-object v0, p0, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_3e
    iget-object v0, p0, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_17

    :cond_45
    iget-object v0, p0, Lcom/bbm/l/b/l;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1f

    :cond_4c
    iget-object v0, p0, Lcom/bbm/l/b/l;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_27

    :cond_53
    iget-object v1, p0, Lcom/bbm/l/b/l;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StickerPackId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
