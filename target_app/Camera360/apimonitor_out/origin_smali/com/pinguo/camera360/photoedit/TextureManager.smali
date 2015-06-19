.class public final Lcom/pinguo/camera360/photoedit/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTexturePath(Lcom/pinguo/camera360/effect/model/entity/Texture;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/pinguo/camera360/photoedit/TextureManager$1;

    invoke-direct {v5}, Lcom/pinguo/camera360/photoedit/TextureManager$1;-><init>()V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-object v3

    :cond_15
    array-length v1, v0

    if-eqz v1, :cond_14

    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_22
    sget-object v4, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->FIRST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;

    invoke-virtual {v4}, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->value()I

    move-result v4

    iget v5, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->type:I

    if-ne v4, v5, :cond_33

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_33
    sget-object v4, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->LIST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;

    invoke-virtual {v4}, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->value()I

    move-result v4

    iget v5, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->type:I

    if-ne v4, v5, :cond_44

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_44
    sget-object v4, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->RANDOM:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;

    invoke-virtual {v4}, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->value()I

    move-result v4

    iget v5, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->type:I

    if-ne v4, v5, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v1

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_14
.end method
