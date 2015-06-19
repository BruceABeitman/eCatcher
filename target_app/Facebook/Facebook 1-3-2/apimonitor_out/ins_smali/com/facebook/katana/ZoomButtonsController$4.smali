.class  Lcom/facebook/katana/ZoomButtonsController$4;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/facebook/katana/ZoomButtonsController;
.method constructor <init>(Lcom/facebook/katana/ZoomButtonsController;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/ZoomButtonsController$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;
invoke-static {}, Lcom/facebook/katana/ZoomButtonsController;->access$5()I
move-result v1
#calls: Lcom/facebook/katana/ZoomButtonsController;->dismissControlsDelayed(I)V
invoke-static {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->access$6(Lcom/facebook/katana/ZoomButtonsController;I)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#getter for: Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$7(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$4;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#getter for: Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$7(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;->onZoom(Z)V
:cond_1b
const-string v1, " - Lcom/facebook/katana/ZoomButtonsController$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method