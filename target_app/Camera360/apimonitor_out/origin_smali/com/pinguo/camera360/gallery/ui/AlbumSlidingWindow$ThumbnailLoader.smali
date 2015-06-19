.class Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;
.super Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private final mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

.field private final mSlotIndex:I

.field private mTime:J

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;ILcom/pinguo/camera360/gallery/data/MediaItem;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mTime:J

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getMicroThumbPool()Lcom/pinguo/camera360/gallery/data/BitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected submitBitmapTask(Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mTime:J

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/JobLimiter;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->requestImage(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/pinguo/camera360/gallery/util/JobLimiter;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSlotEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v1, v2, v3

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iget-object v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iput-object v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    move-result-object v2

    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)I

    move-result v2

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #calls: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)V

    :cond_51
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_6

    :cond_63
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    move-result-object v2

    iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    goto :goto_6
.end method
