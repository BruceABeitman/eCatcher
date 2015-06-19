.class  Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;
.super Lcom/pinguo/album/data/utils/BitmapLoader;
.source "ThumbnailDataWindow.java"
.field private final mItem:Lcom/pinguo/album/data/MediaItem;
.field private final mThumbnailIndex:I
.field final synthetic this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
.method public constructor <init>(Lcom/pinguo/album/adapters/ThumbnailDataWindow;ILcom/pinguo/album/data/MediaItem;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-direct {p0}, Lcom/pinguo/album/data/utils/BitmapLoader;-><init>()V
iput p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->mThumbnailIndex:I
iput-object p3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->mItem:Lcom/pinguo/album/data/MediaItem;
return-void
.end method
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader; onLoadComplete "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$1(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1, p0}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
const-string v1, " - Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader; onLoadComplete"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
.registers 3
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->putForDecodeReuse(Landroid/graphics/Bitmap;)Z
return-void
.end method
.method protected submitBitmapTask(Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
.registers 6
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mThreadPoolForSlot:Lcom/pinguo/album/common/JobLimiter;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$0(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/common/JobLimiter;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->mItem:Lcom/pinguo/album/data/MediaItem;
const/4 v2, 0x2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/data/MediaItem;->requestImage(IZ)Lcom/pinguo/album/AlbumThreadPool$Job;
move-result-object v1
invoke-virtual {v0, v1, p0}, Lcom/pinguo/album/common/JobLimiter;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
move-result-object v0
return-object v0
.end method
.method public updateEntry()V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->isRecycled()Z
move-result v2
if-eqz v2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_6
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$2(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
move-result-object v2
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->mThumbnailIndex:I
iget-object v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mImageData:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
invoke-static {v4}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$2(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)[Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;
move-result-object v4
array-length v4, v4
rem-int/2addr v3, v4
aget-object v1, v2, v3
new-instance v2, Lcom/pinguo/album/opengles/TiledTexture;
invoke-direct {v2, v0}, Lcom/pinguo/album/opengles/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V
iput-object v2, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
iget-object v2, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
iput-object v2, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->content:Lcom/pinguo/album/opengles/Texture;
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
iget v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->mThumbnailIndex:I
invoke-virtual {v2, v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->isActiveThumbnail(I)Z
move-result v2
if-eqz v2, :cond_69
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$3(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/opengles/MixTextureUploader;
move-result-object v2
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v2, v3}, Lcom/pinguo/album/opengles/MixTextureUploader;->addFgTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$4(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)I
move-result v3
add-int/lit8 v3, v3, -0x1
#setter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
invoke-static {v2, v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$5(Lcom/pinguo/album/adapters/ThumbnailDataWindow;I)V
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestCount:I
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$4(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)I
move-result v2
if-nez v2, :cond_57
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#calls: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestNonactiveImages()V
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$6(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)V
:cond_57
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$7(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
move-result-object v2
if-eqz v2, :cond_6
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$7(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
move-result-object v2
invoke-interface {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;->onContentChanged()V
goto :goto_6
:cond_69
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$ThumbnailLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-static {v2}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$3(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/opengles/MixTextureUploader;
move-result-object v2
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/album/opengles/TiledTexture;
invoke-virtual {v2, v3}, Lcom/pinguo/album/opengles/MixTextureUploader;->addBgTexture(Lcom/pinguo/album/opengles/TiledTexture;)V
goto :goto_6
.end method