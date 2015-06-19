.class public final Lcom/bbm/util/r;
.super Ljava/lang/Object;
.source "ChannelCloudImageUtils.java"


# direct methods
.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bbm/util/o;"
        }
    .end annotation

    if-eqz p0, :cond_45

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_f
    if-ltz v2, :cond_32

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_2e

    new-instance v1, Lcom/bbm/util/o;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0, p2, p1}, Lcom/bbm/util/o;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_2d
    return-object v0

    :cond_2e
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_f

    :cond_32
    new-instance v1, Lcom/bbm/util/o;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0, p2, p1}, Lcom/bbm/util/o;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2d

    :cond_45
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_2d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2d

    move v3, v0

    move v1, v0

    move-object v2, v4

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2c

    new-instance v5, Lcom/bbm/util/o;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v5, v0, v4, v4}, Lcom/bbm/util/o;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v5, Lcom/bbm/util/o;->b:I

    if-le v0, v1, :cond_2e

    iget v0, v5, Lcom/bbm/util/o;->b:I

    iget-object v1, v5, Lcom/bbm/util/o;->c:Ljava/lang/String;

    :goto_26
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_d

    :cond_2c
    move-object v4, v2

    :cond_2d
    return-object v4

    :cond_2e
    move v0, v1

    move-object v1, v2

    goto :goto_26
.end method
