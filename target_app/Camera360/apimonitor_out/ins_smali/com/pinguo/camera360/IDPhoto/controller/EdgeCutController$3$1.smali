.class  Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3$1;
.super Ljava/lang/Object;
.source "EdgeCutController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const v0, 0x7f080190
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v1
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/app/Activity;
move-result-object v1
const/16 v2, 0x5dc
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$3;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->keyBack()V
return-void
.end method