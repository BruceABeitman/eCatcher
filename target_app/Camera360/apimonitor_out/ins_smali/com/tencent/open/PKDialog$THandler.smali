.class  Lcom/tencent/open/PKDialog$THandler;
.super Landroid/os/Handler;
.source "ProGuard"
.field private mL:Lcom/tencent/open/PKDialog$OnTimeListener;
.method public constructor <init>(Lcom/tencent/open/PKDialog$OnTimeListener;Landroid/os/Looper;)V
.registers 3
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object p1, p0, Lcom/tencent/open/PKDialog$THandler;->mL:Lcom/tencent/open/PKDialog$OnTimeListener;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const-string/jumbo v0, "PKDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "msg = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_76
:goto_21
:cond_21
:pswitch_21
return-void
:pswitch_22
iget-object v1, p0, Lcom/tencent/open/PKDialog$THandler;->mL:Lcom/tencent/open/PKDialog$OnTimeListener;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
#calls: Lcom/tencent/open/PKDialog$OnTimeListener;->onComplete(Ljava/lang/String;)V
invoke-static {v1, v0}, Lcom/tencent/open/PKDialog$OnTimeListener;->access$700(Lcom/tencent/open/PKDialog$OnTimeListener;Ljava/lang/String;)V
goto :goto_21
:pswitch_2c
iget-object v0, p0, Lcom/tencent/open/PKDialog$THandler;->mL:Lcom/tencent/open/PKDialog$OnTimeListener;
invoke-virtual {v0}, Lcom/tencent/open/PKDialog$OnTimeListener;->onCancel()V
goto :goto_21
:pswitch_32
invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Ljava/lang/String;
#calls: Lcom/tencent/open/PKDialog;->showTips(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/tencent/open/PKDialog;->access$800(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_21
:pswitch_54
invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Ljava/lang/String;
#calls: Lcom/tencent/open/PKDialog;->showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/tencent/open/PKDialog;->access$900(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_21
:pswitch_data_76
.packed-switch 0x1
:pswitch_22
:pswitch_2c
:pswitch_32
:pswitch_21
:pswitch_54
.end packed-switch
.end method