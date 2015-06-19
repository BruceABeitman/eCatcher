.class public Lcom/pinguo/share/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public address:Ljava/lang/String;

.field public cameraMode:Ljava/lang/String;

.field public cameraModeIndex:I

.field public effectAlias:Ljava/lang/String;

.field public imageBitmap:Landroid/graphics/Bitmap;

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public isAudioFile:Z

.field public latitude:D

.field public longitude:D

.field public shareType:Lcom/pinguo/share/ShareType;

.field public soundInfo:Ljava/lang/String;

.field public takenTime:J

.field public thumbnailBitmap:Landroid/graphics/Bitmap;

.field public uiContent:Ljava/lang/String;

.field public uiOrientation:I

.field public uiTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/high16 v0, -0x4010

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/pinguo/share/ShareInfo;->longitude:D

    iput-wide v0, p0, Lcom/pinguo/share/ShareInfo;->latitude:D

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/share/ShareInfo;->address:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/share/ShareInfo;->takenTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/share/ShareInfo;->isAudioFile:Z

    sget-object v0, Lcom/pinguo/share/ShareType;->OTHER:Lcom/pinguo/share/ShareType;

    iput-object v0, p0, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    return-void
.end method


# virtual methods
.method public buildThumbnailBitmap()V
    .registers 3

    const/16 v1, 0x50

    iget-object v0, p0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Lcom/pinguo/share/util/ShareModuleUtil;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pinguo/share/util/ShareModuleUtil;->getRotateBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/share/ShareInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    :cond_1c
    return-void
.end method

.method public genImagePathFromImageBitmap()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    :cond_c
    iget-object v1, p0, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_25

    :try_start_18
    sget-object v1, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    const/16 v3, 0x5f

    invoke-static {v1, v2, v3}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_29

    :goto_21
    sget-object v1, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    iput-object v1, p0, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    :cond_25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/share/ShareInfo;->imageBitmap:Landroid/graphics/Bitmap;

    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21
.end method

.method public hasLocationInfo()Z
    .registers 5

    const-wide/high16 v2, -0x4010

    iget-wide v0, p0, Lcom/pinguo/share/ShareInfo;->longitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/pinguo/share/ShareInfo;->latitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
