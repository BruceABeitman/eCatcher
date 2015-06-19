.class  Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;
.super Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"
.implements Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;
.field private mMediaItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
.field private final mSlotIndex:I
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;ILcom/pinguo/camera360/gallery/data/MediaItem;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;-><init>()V
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I
iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
return-void
.end method
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader; onLoadComplete "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1, p0}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader; onLoadComplete"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
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
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/util/ThreadPool;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcom/pinguo/camera360/gallery/data/MediaItem;
const/4 v2, 0x2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->requestImage(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v0
return-object v0
.end method
.method public updateEntry()V
.registers 7
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
move-result-object v3
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
move-result-object v5
array-length v5, v5
rem-int/2addr v4, v5
aget-object v1, v3, v4
new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-direct {v2, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
iput-object v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z
move-result v3
if-eqz v3, :cond_5f
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)I
move-result v4
add-int/lit8 v4, v4, -0x1
#setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)I
move-result v3
if-nez v3, :cond_4d
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)V
:cond_4d
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
move-result-object v3
if-eqz v3, :cond_6
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V
goto :goto_6
:cond_5f
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V
goto :goto_6
.end method