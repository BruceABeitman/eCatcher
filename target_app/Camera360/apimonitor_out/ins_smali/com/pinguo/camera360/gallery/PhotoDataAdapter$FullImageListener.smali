.class  Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"
.implements Ljava/lang/Runnable;
.implements Lcom/pinguo/camera360/gallery/util/FutureListener;
.field private mFuture:Lcom/pinguo/camera360/gallery/util/Future;
.field private final mPath:Lcom/pinguo/camera360/gallery/data/Path;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->mPath:Lcom/pinguo/camera360/gallery/data/Path;
return-void
.end method
.method public onFutureDone(Lcom/pinguo/camera360/gallery/util/Future;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/pinguo/camera360/gallery/util/Future;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$2(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$2(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Landroid/os/Handler;
move-result-object v1
const/4 v2, 0x3
invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->mPath:Lcom/pinguo/camera360/gallery/data/Path;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/pinguo/camera360/gallery/util/Future;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateFullImage(Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$3(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/Path;Lcom/pinguo/camera360/gallery/util/Future;)V
return-void
.end method