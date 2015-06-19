.class  Lcom/pinguo/camera360/ui/TitleView$2;
.super Ljava/lang/Object;
.source "TitleView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/ui/TitleView;
.method constructor <init>(Lcom/pinguo/camera360/ui/TitleView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/TitleView$2;->this$0:Lcom/pinguo/camera360/ui/TitleView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/TitleView$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/TitleView$2;->this$0:Lcom/pinguo/camera360/ui/TitleView;
#getter for: Lcom/pinguo/camera360/ui/TitleView;->mClickListener:Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/ui/TitleView;->access$0(Lcom/pinguo/camera360/ui/TitleView;)Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/ui/TitleView$2;->this$0:Lcom/pinguo/camera360/ui/TitleView;
#getter for: Lcom/pinguo/camera360/ui/TitleView;->mClickListener:Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
invoke-static {v0}, Lcom/pinguo/camera360/ui/TitleView;->access$0(Lcom/pinguo/camera360/ui/TitleView;)Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;->onRightBtnClick()V
:cond_11
const-string v1, " - Lcom/pinguo/camera360/ui/TitleView$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method