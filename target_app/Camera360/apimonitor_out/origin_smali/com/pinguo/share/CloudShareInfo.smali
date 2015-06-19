.class public Lcom/pinguo/share/CloudShareInfo;
.super Ljava/lang/Object;
.source "CloudShareInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/CloudShareInfo$ShareItem;
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public cloudAlbumUrl:Ljava/lang/String;

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field private shareItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/share/CloudShareInfo$ShareItem;",
            ">;"
        }
    .end annotation
.end field

.field public shareType:Lcom/pinguo/share/ShareType;

.field public themeName:Ljava/lang/String;

.field private thumbnailBitmap:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/high16 v2, -0x4010

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/pinguo/share/CloudShareInfo;->longitude:D

    iput-wide v2, p0, Lcom/pinguo/share/CloudShareInfo;->latitude:D

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->address:Ljava/lang/String;

    sget-object v1, Lcom/pinguo/share/ShareType;->WEBSITE_SHARE:Lcom/pinguo/share/ShareType;

    iput-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->themeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addShareItem(Lcom/pinguo/share/CloudShareInfo$ShareItem;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public genImagePathFromThumbnailBitmap()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    :cond_c
    iget-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_25

    :try_start_18
    sget-object v1, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/share/CloudShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_29

    :goto_21
    sget-object v1, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->imagePath:Ljava/lang/String;

    :cond_25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPidsJsonString()Ljava/lang/String;
    .registers 4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_23

    move-result v2

    if-lt v0, v2, :cond_13

    :goto_e
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;

    iget-object v2, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->pid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_20} :catch_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_23
    move-exception v2

    goto :goto_e
.end method

.method public getShareItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/share/CloudShareInfo$ShareItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/CloudShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hasLocationInfo()Z
    .registers 5

    const-wide/high16 v2, -0x4010

    iget-wide v0, p0, Lcom/pinguo/share/CloudShareInfo;->longitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/pinguo/share/CloudShareInfo;->latitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isAudioPhoto()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/share/CloudShareInfo;->isMultiplePhotoes()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/share/CloudShareInfo$ShareItem;

    invoke-virtual {v1}, Lcom/pinguo/share/CloudShareInfo$ShareItem;->isHasAudio()Z

    move-result v0

    goto :goto_8
.end method

.method public isMultiplePhotoes()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/pinguo/share/CloudShareInfo;->getCount()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isNeedPhotoWall()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/pinguo/share/CloudShareInfo;->getCount()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/CloudShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ imageUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " imagePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/share/CloudShareInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/share/CloudShareInfo;->shareItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_42

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;

    const-string/jumbo v3, "\n["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "aid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->aid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->pid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "key:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "w:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hasAudio:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->hasAudio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dateTime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->dateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "date:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "location:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_31
.end method
