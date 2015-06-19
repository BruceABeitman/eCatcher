.class  Lcom/facebook/katana/ZoomButtonsController$5;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/katana/ZoomButtonsController;
.method constructor <init>(Lcom/facebook/katana/ZoomButtonsController;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController$5;->this$0:Lcom/facebook/katana/ZoomButtonsController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$5;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#calls: Lcom/facebook/katana/ZoomButtonsController;->refreshPositioningVariables()V
invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$8(Lcom/facebook/katana/ZoomButtonsController;)V
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$5;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#getter for: Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$7(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$5;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#getter for: Lcom/facebook/katana/ZoomButtonsController;->mCallback:Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$7(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V
:cond_17
return-void
.end method