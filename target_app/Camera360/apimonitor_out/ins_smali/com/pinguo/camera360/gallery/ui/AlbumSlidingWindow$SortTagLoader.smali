.class  Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;
.super Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"
.implements Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$EntryUpdater;
.field private final mShowYear:Z
.field private final mSortTagIndex:I
.field private final mTime:Ljava/lang/String;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;Ljava/lang/String;ZI)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;-><init>()V
iput p4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->mSortTagIndex:I
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->mTime:Ljava/lang/String;
iput-boolean p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->mShowYear:Z
return-void
.end method
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader; onLoadComplete "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1, p0}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader; onLoadComplete"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagMaker:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->recycleSortTag(Landroid/graphics/Bitmap;)V
return-void
.end method
.method protected submitBitmapTask(Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/pinguo/camera360/gallery/util/JobLimiter;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/util/JobLimiter;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagMaker:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->mTime:Ljava/lang/String;
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->mShowYear:Z
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->requestTag(Ljava/lang/String;Z)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/gallery/util/JobLimiter;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v0
return-object v0
.end method
.method public updateEntry()V
.registers 7
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$9(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;
move-result-object v3
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->mSortTagIndex:I
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mSortTagEntry:[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;
invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$9(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)[Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;
move-result-object v5
array-length v5, v5
rem-int/2addr v4, v5
aget-object v1, v3, v4
new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-direct {v2, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;->setOpaque(Z)V
iput-object v2, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
iget-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
iput-object v3, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->mSortTagIndex:I
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->isActiveTag(I)Z
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;I)Z
move-result v3
if-eqz v3, :cond_67
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;
move-result-object v3
iget-object v4, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addFgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$11(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)I
move-result v4
add-int/lit8 v4, v4, -0x1
#setter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$12(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mActiveRequestTagCount:I
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$11(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)I
move-result v3
if-nez v3, :cond_55
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->requestNonactiveImagesTag()V
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$13(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)V
:cond_55
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
move-result-object v3
if-eqz v3, :cond_6
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;
move-result-object v3
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;->onContentChanged()V
goto :goto_6
:cond_67
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagLoader;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->mTextureUploader:Lcom/pinguo/camera360/gallery/ui/TextureUploader;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;)Lcom/pinguo/camera360/gallery/ui/TextureUploader;
move-result-object v3
iget-object v4, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/gallery/ui/TextureUploader;->addBgTexture(Lcom/pinguo/camera360/gallery/ui/UploadedTexture;)V
goto :goto_6
.end method