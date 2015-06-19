.class  Lcom/pinguo/camera360/IDPhoto/controller/SkinController$3;
.super Ljava/lang/Object;
.source "SkinController.java"
.implements Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public glCreated()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method public glDestroyed()V
.registers 1
return-void
.end method