.class  Lcom/facebook/katana/ZoomButtonsController$2;
.super Landroid/os/Handler;
.source "ZoomButtonsController.java"
.field final synthetic this$0:Lcom/facebook/katana/ZoomButtonsController;
.method constructor <init>(Lcom/facebook/katana/ZoomButtonsController;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController$2;->this$0:Lcom/facebook/katana/ZoomButtonsController;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_2e
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#calls: Lcom/facebook/katana/ZoomButtonsController;->onPostConfigurationChanged()V
invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$2(Lcom/facebook/katana/ZoomButtonsController;)V
goto :goto_5
:pswitch_c
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->this$0:Lcom/facebook/katana/ZoomButtonsController;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->setVisible(Z)V
goto :goto_5
:pswitch_13
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->this$0:Lcom/facebook/katana/ZoomButtonsController;
#getter for: Lcom/facebook/katana/ZoomButtonsController;->mOwnerView:Landroid/view/View;
invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$3(Lcom/facebook/katana/ZoomButtonsController;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v0
if-nez v0, :cond_27
const-string v0, "ZoomButtonsController"
const-string v1, "Cannot make the zoom controller visible if the owner view is not attached to a window."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_5
:cond_27
iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$2;->this$0:Lcom/facebook/katana/ZoomButtonsController;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->setVisible(Z)V
goto :goto_5
:pswitch_data_2e
.packed-switch 0x2
:pswitch_6
:pswitch_c
:pswitch_13
.end packed-switch
.end method