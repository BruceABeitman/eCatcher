.class public Lcom/pinguo/camera360/video/util/ThumbnailHelper;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;,
        Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;

.field private mThumbnailCreateThread:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/video/util/ThumbnailHelper;Lcom/pinguo/camera360/video/util/Thumbnail;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/video/util/ThumbnailHelper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createNewThumbnail(Ljava/lang/String;ILandroid/net/Uri;IZLcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;)V
    .registers 13

    new-instance v0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;-><init>(Lcom/pinguo/camera360/video/util/ThumbnailHelper;Ljava/lang/String;ILandroid/net/Uri;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnailCreateThread:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnailCreateThread:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;

    invoke-virtual {v0, p5}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->setNeedSaveThumbnail(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnailCreateThread:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;

    invoke-virtual {v0, p6}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->setOnThumbnailCreateCallback(Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnailCreateThread:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->start()V

    return-void
.end method


# virtual methods
.method public createNewThumbnail(Ljava/lang/String;ILandroid/net/Uri;ZLcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;)V
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->createNewThumbnail(Ljava/lang/String;ILandroid/net/Uri;IZLcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;)V

    return-void
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->load()V

    :cond_7
    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/util/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public load()V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getLastPhotoTakenTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_21

    sget-object v5, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;

    invoke-static {v5, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getSandBoxPath(Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v5, Lcom/pinguo/camera360/video/util/Thumbnail;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v1, v7}, Lcom/pinguo/camera360/video/util/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    iput-object v5, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;

    return-void
.end method

.method public set(Landroid/graphics/Bitmap;)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/video/util/Thumbnail;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/pinguo/camera360/video/util/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;

    return-void
.end method
