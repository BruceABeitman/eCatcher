.class  Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;
.super Landroid/os/Handler;
.source "GlobalUpdateManager.java"
.field final synthetic this$1:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
.method constructor <init>(Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;->this$1:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;->this$1:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
invoke-virtual {v1}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->getUpdateInterface()Lcom/pinguo/camera360/updateOnline/UpdateInterface;
move-result-object v0
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_36
:cond_c
:goto_c
:pswitch_c
return-void
:pswitch_d
if-eqz v0, :cond_c
invoke-interface {v0}, Lcom/pinguo/camera360/updateOnline/UpdateInterface;->beforeShow()V
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/updateOnline/UpdateInterface;->updateOutThread(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;->this$1:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->setUpdateInterface(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
goto :goto_c
:pswitch_1f
if-eqz v0, :cond_c
invoke-interface {v0}, Lcom/pinguo/camera360/updateOnline/UpdateInterface;->noUpdateOutThread()V
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;->this$1:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->setUpdateInterface(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
goto :goto_c
:pswitch_2a
if-eqz v0, :cond_c
invoke-interface {v0}, Lcom/pinguo/camera360/updateOnline/UpdateInterface;->fail()V
iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager$1;->this$1:Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager$AbsUpdateManager;->setUpdateInterface(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
goto :goto_c
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_d
:pswitch_1f
:pswitch_c
:pswitch_2a
.end packed-switch
.end method