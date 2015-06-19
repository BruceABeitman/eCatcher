.class  Lcom/pinguo/camera360/camera/controller/PGCameraFragment$1;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onShutterBtnClick()V
return-void
.end method