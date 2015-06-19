.class  Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;
.super Ljava/lang/Object;
.source "PreviewAdjustDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
move-result-object v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
move-result-object v0
const/4 v1, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I
invoke-static {v2}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)I
move-result v2
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;->finishAdjustPreview(ZI)V
:cond_18
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->dismiss()V
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method