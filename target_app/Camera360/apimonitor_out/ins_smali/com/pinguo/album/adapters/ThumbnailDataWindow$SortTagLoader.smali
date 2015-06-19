.class  Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;
.super Lcom/pinguo/album/data/utils/BitmapLoader;
.source "ThumbnailDataWindow.java"
.field private final mSortTag:Lcom/pinguo/album/data/MediaSet$SortTag;
.field private final mSortTagIndex:I
.field final synthetic this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
.method public constructor <init>(Lcom/pinguo/album/adapters/ThumbnailDataWindow;Lcom/pinguo/album/data/MediaSet$SortTag;I)V
.registers 4
iput-object p1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
invoke-direct {p0}, Lcom/pinguo/album/data/utils/BitmapLoader;-><init>()V
iput p3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->mSortTagIndex:I
iput-object p2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->mSortTag:Lcom/pinguo/album/data/MediaSet$SortTag;
return-void
.end method
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader; onLoadComplete "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$1(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/SynchronizedHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1, p0}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
const-string v1, " - Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader; onLoadComplete"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected submitBitmapTask(Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
.registers 5
iget-object v0, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mThreadPoolForTag:Lcom/pinguo/album/common/JobLimiter;
invoke-static {v0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$8(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/common/JobLimiter;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagMaker:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
invoke-static {v1}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$9(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->mSortTag:Lcom/pinguo/album/data/MediaSet$SortTag;
invoke-virtual {v1, v2}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->requestTag(Lcom/pinguo/album/data/MediaSet$SortTag;)Lcom/pinguo/album/AlbumThreadPool$Job;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/pinguo/album/common/JobLimiter;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
move-result-object v0
return-object v0
.end method
.method public updateEntry()V
.registers 7
invoke-virtual {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->isRecycled()Z
move-result v3
if-eqz v3, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_6
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$10(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
move-result-object v3
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->mSortTagIndex:I
iget-object v5, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mSortTagEntry:[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
invoke-static {v5}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$10(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)[Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;
move-result-object v5
array-length v5, v5
rem-int/2addr v4, v5
aget-object v1, v3, v4
new-instance v2, Lcom/pinguo/album/opengles/BitmapTexture;
invoke-direct {v2, v0}, Lcom/pinguo/album/opengles/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/pinguo/album/opengles/BitmapTexture;->setOpaque(Z)V
iput-object v2, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
iget-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
iput-object v3, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->content:Lcom/pinguo/album/opengles/Texture;
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
iget v4, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->mSortTagIndex:I
#calls: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->isActiveTag(I)Z
invoke-static {v3, v4}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$11(Lcom/pinguo/album/adapters/ThumbnailDataWindow;I)Z
move-result v3
if-eqz v3, :cond_6d
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$3(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/opengles/MixTextureUploader;
move-result-object v3
iget-object v4, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
invoke-virtual {v3, v4}, Lcom/pinguo/album/opengles/MixTextureUploader;->addFgTexture(Lcom/pinguo/album/opengles/UploadedTexture;)V
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$12(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)I
move-result v4
add-int/lit8 v4, v4, -0x1
#setter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
invoke-static {v3, v4}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$13(Lcom/pinguo/album/adapters/ThumbnailDataWindow;I)V
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mActiveRequestTagCount:I
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$12(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)I
move-result v3
if-nez v3, :cond_5b
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#calls: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->requestNonactiveImagesTag()V
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$14(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)V
:cond_5b
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$7(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
move-result-object v3
if-eqz v3, :cond_6
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mDataListener:Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$7(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow$DataListener;->onContentChanged()V
goto :goto_6
:cond_6d
iget-object v3, p0, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagLoader;->this$0:Lcom/pinguo/album/adapters/ThumbnailDataWindow;
#getter for: Lcom/pinguo/album/adapters/ThumbnailDataWindow;->mTextureUploader:Lcom/pinguo/album/opengles/MixTextureUploader;
invoke-static {v3}, Lcom/pinguo/album/adapters/ThumbnailDataWindow;->access$3(Lcom/pinguo/album/adapters/ThumbnailDataWindow;)Lcom/pinguo/album/opengles/MixTextureUploader;
move-result-object v3
iget-object v4, v1, Lcom/pinguo/album/adapters/ThumbnailDataWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/album/opengles/BitmapTexture;
invoke-virtual {v3, v4}, Lcom/pinguo/album/opengles/MixTextureUploader;->addBgTexture(Lcom/pinguo/album/opengles/UploadedTexture;)V
goto :goto_6
.end method