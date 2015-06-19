.class Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;
.super Ljava/lang/Thread;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/video/util/ThumbnailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailCreateThread"
.end annotation


# instance fields
.field private mCallback:Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;

.field private mNeedSaveThumbnail:Z

.field private final orientation:I

.field private final targetWidth:I

.field final synthetic this$0:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

.field private final videoFileName:Ljava/lang/String;

.field private final videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/video/util/ThumbnailHelper;Ljava/lang/String;ILandroid/net/Uri;I)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->this$0:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->videoFileName:Ljava/lang/String;

    iput p3, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->targetWidth:I

    iput-object p4, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->videoUri:Landroid/net/Uri;

    iput p5, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->orientation:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;)Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->mCallback:Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->videoUri:Landroid/net/Uri;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->videoFileName:Ljava/lang/String;

    iget v3, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->targetWidth:I

    invoke-static {v2, v3}, Lcom/pinguo/camera360/video/util/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->mCallback:Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->mCallback:Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;

    invoke-interface {v2, v1}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;->onThumbnailCreateInAsyncThread(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->this$0:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    new-instance v3, Lcom/pinguo/camera360/video/util/Thumbnail;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/pinguo/camera360/video/util/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    #setter for: Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mThumbnail:Lcom/pinguo/camera360/video/util/Thumbnail;
    invoke-static {v2, v3}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->access$0(Lcom/pinguo/camera360/video/util/ThumbnailHelper;Lcom/pinguo/camera360/video/util/Thumbnail;)V

    :cond_24
    iget-object v2, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->this$0:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    #getter for: Lcom/pinguo/camera360/video/util/ThumbnailHelper;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->access$1(Lcom/pinguo/camera360/video/util/ThumbnailHelper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread$1;-><init>(Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method

.method public setNeedSaveThumbnail(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->mNeedSaveThumbnail:Z

    return-void
.end method

.method public setOnThumbnailCreateCallback(Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->mCallback:Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;

    return-void
.end method
