.class  Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;
.super Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.method constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
invoke-direct {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 3
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_3e
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_12
:goto_12
return-void
:pswitch_13
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$26(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$26(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;->onLoadingStarted()V
goto :goto_12
:pswitch_25
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$26(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#getter for: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->mDataListener:Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$26(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$DataListener;->onLoadingFinished()V
goto :goto_12
:pswitch_37
iget-object v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$1;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
#calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->updateImageRequests()V
invoke-static {v0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$21(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;)V
goto :goto_12
nop
:pswitch_data_3e
.packed-switch 0x1
:pswitch_13
:pswitch_25
:pswitch_b
:pswitch_37
.end packed-switch
.end method