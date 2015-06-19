.class  Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;
.super Ljava/lang/Object;
.source "ButtomItemView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;
#getter for: Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mClickListener:Landroid/view/View$OnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->access$0(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)Landroid/view/View$OnClickListener;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;
#getter for: Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mClickListener:Landroid/view/View$OnClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->access$0(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)Landroid/view/View$OnClickListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;->this$0:Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;
invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_13
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method