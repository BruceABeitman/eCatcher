.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$15$1;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/sony/SonyCameraFragment$15;
.field private final synthetic val$flag:Z
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment$15;Z)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15$1;->this$1:Lcom/pinguo/camera360/sony/SonyCameraFragment$15;
iput-boolean p2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15$1;->val$flag:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15$1;->this$1:Lcom/pinguo/camera360/sony/SonyCameraFragment$15;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment$15;)Lcom/pinguo/camera360/sony/SonyCameraFragment;
move-result-object v0
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15$1;->val$flag:Z
#calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareActZoomButtonsUi(Z)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$17(Lcom/pinguo/camera360/sony/SonyCameraFragment;Z)V
return-void
.end method