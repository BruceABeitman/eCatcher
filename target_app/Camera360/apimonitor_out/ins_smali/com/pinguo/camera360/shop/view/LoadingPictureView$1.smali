.class  Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;
.super Ljava/lang/Object;
.source "LoadingPictureView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
.method constructor <init>(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;->this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/view/LoadingPictureView$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;->this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
#getter for: Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mListener:Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->access$0(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;->this$0:Lcom/pinguo/camera360/shop/view/LoadingPictureView;
#getter for: Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mListener:Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->access$0(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;->onReloadClick()V
:cond_11
const-string v1, " - Lcom/pinguo/camera360/shop/view/LoadingPictureView$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method