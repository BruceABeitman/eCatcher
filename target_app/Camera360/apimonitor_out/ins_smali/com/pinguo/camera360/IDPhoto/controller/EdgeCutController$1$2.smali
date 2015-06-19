.class  Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;
.super Ljava/lang/Object;
.source "EdgeCutController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const v2, 0x7f080190
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->isEdgeCutMode()Z
move-result v0
if-nez v0, :cond_36
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mContext:Landroid/content/Context;
invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->keyBack()V
:goto_35
return-void
:cond_36
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mContext:Landroid/content/Context;
invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;
#getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$1;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialog()V
goto :goto_35
.end method