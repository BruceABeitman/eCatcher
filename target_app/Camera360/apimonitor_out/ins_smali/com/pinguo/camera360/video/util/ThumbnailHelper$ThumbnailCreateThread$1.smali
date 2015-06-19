.class  Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread$1;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;
.method constructor <init>(Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread$1;->this$1:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread$1;->this$1:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;
#getter for: Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->mCallback:Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;
invoke-static {v0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->access$0(Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;)Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread$1;->this$1:Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;
#getter for: Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->mCallback:Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;
invoke-static {v0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;->access$0(Lcom/pinguo/camera360/video/util/ThumbnailHelper$ThumbnailCreateThread;)Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;->onThumbnailCreateInUIThread()V
:cond_11
return-void
.end method