.class  Lcom/pinguo/camera360/video/PGVideoFragment$1;
.super Ljava/lang/Object;
.source "PGVideoFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
.method constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$1;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$1;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->onShutterBtnClick()V
return-void
.end method