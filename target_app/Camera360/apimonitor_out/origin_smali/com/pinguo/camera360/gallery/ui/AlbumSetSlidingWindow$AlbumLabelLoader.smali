.class Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;
.super Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelLoader"
.end annotation


# instance fields
.field private final mSlotIndex:I

.field private final mTitle:Ljava/lang/String;

.field private final mTotalCount:I

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;ILjava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;-><init>()V

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    iput p4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->recycleLabel(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected submitBitmapTask(Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
    .registers 6
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

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->picCountFormat:Ljava/lang/String;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    const-string/jumbo v1, "%d"

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->picCountFormat:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$9(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .registers 7

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v1, v3, v4

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->setOpaque(Z)V

    iput-object v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    #setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;I)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #calls: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)V

    :cond_4f
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_6

    :cond_61
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V

    goto :goto_6
.end method
