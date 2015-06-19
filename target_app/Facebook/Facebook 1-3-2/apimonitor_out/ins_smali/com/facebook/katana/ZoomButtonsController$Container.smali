.class  Lcom/facebook/katana/ZoomButtonsController$Container;
.super Landroid/widget/FrameLayout;
.source "ZoomButtonsController.java"
.field final synthetic this$0:Lcom/facebook/katana/ZoomButtonsController;
.method public constructor <init>(Lcom/facebook/katana/ZoomButtonsController;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController$Container;->this$0:Lcom/facebook/katana/ZoomButtonsController;
invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$Container;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#calls: Lcom/facebook/katana/ZoomButtonsController;->onContainerKey(Landroid/view/KeyEvent;)Z
invoke-static {v0, p1}, Lcom/facebook/katana/ZoomButtonsController;->access$4(Lcom/facebook/katana/ZoomButtonsController;Landroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
goto :goto_9
.end method