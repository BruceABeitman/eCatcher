.class public abstract Lcom/pinguo/camera360/gallery/ui/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"
.implements Lcom/pinguo/camera360/gallery/util/FutureListener;
.field private static final STATE_ERROR:I = 0x3
.field private static final STATE_INIT:I = 0x0
.field private static final STATE_LOADED:I = 0x2
.field private static final STATE_RECYCLED:I = 0x4
.field private static final STATE_REQUESTED:I = 0x1
.field private static final TAG:Ljava/lang/String; = "BitmapLoader"
.field private mBitmap:Landroid/graphics/Bitmap;
.field private mState:I
.field private mTask:Lcom/pinguo/camera360/gallery/util/Future;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
return-void
.end method
.method public declared-synchronized cancelLoad()V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
const/4 v1, 0x1
if-ne v0, v1, :cond_12
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized isRecycled()Z
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_b
const/4 v1, 0x4
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_7
monitor-exit p0
return v0
:cond_9
const/4 v0, 0x0
goto :goto_7
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized isRequestInProgress()Z
.registers 3
const/4 v0, 0x1
monitor-enter p0
:try_start_2
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
:try_end_4
.catchall {:try_start_2 .. :try_end_4} :catchall_a
if-ne v1, v0, :cond_8
:goto_6
monitor-exit p0
return v0
:cond_8
const/4 v0, 0x0
goto :goto_6
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public onFutureDone(Lcom/pinguo/camera360/gallery/util/Future;)V
.registers 4
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/Future;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
const/4 v1, 0x4
if-ne v0, v1, :cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycleBitmap(Landroid/graphics/Bitmap;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
:cond_1d
monitor-exit p0
:goto_1e
return-void
:cond_1f
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/Future;->isCancelled()Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_39
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
const/4 v1, 0x1
if-ne v0, v1, :cond_34
invoke-virtual {p0, p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->submitBitmapTask(Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
:cond_34
monitor-exit p0
goto :goto_1e
:catchall_36
move-exception v0
monitor-exit p0
:try_end_38
.catchall {:try_start_2 .. :try_end_38} :catchall_36
throw v0
:cond_39
:try_start_39
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_47
const/4 v0, 0x3
:goto_3e
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
monitor-exit p0
:try_end_41
.catchall {:try_start_39 .. :try_end_41} :catchall_36
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->onLoadComplete(Landroid/graphics/Bitmap;)V
goto :goto_1e
:cond_47
const/4 v0, 0x2
goto :goto_3e
.end method
.method protected abstract onLoadComplete(Landroid/graphics/Bitmap;)V
.end method
.method public declared-synchronized recycle()V
.registers 2
monitor-enter p0
const/4 v0, 0x4
:try_start_2
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->recycleBitmap(Landroid/graphics/Bitmap;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V
:try_end_19
.catchall {:try_start_2 .. :try_end_19} :catchall_1b
:cond_19
monitor-exit p0
return-void
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected abstract recycleBitmap(Landroid/graphics/Bitmap;)V
.end method
.method public declared-synchronized startLoad()V
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
if-nez v0, :cond_12
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mState:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
if-nez v0, :cond_12
invoke-virtual {p0, p0}, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->submitBitmapTask(Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/BitmapLoader;->mTask:Lcom/pinguo/camera360/gallery/util/Future;
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected abstract submitBitmapTask(Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
.end method