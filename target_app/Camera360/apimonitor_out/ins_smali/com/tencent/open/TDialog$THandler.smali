.class  Lcom/tencent/open/TDialog$THandler;
.super Landroid/os/Handler;
.source "ProGuard"
.field private mL:Lcom/tencent/open/TDialog$OnTimeListener;
.method public constructor <init>(Lcom/tencent/open/TDialog$OnTimeListener;Landroid/os/Looper;)V
.registers 3
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object p1, p0, Lcom/tencent/open/TDialog$THandler;->mL:Lcom/tencent/open/TDialog$OnTimeListener;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const-string/jumbo v0, "TAG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "--handleMessage--msg.WHAT = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_96
:goto_21
:cond_21
return-void
:pswitch_22
iget-object v1, p0, Lcom/tencent/open/TDialog$THandler;->mL:Lcom/tencent/open/TDialog$OnTimeListener;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
#calls: Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Ljava/lang/String;)V
invoke-static {v1, v0}, Lcom/tencent/open/TDialog$OnTimeListener;->access$000(Lcom/tencent/open/TDialog$OnTimeListener;Ljava/lang/String;)V
goto :goto_21
:pswitch_2c
iget-object v0, p0, Lcom/tencent/open/TDialog$THandler;->mL:Lcom/tencent/open/TDialog$OnTimeListener;
invoke-virtual {v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onCancel()V
goto :goto_21
:pswitch_32
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Ljava/lang/String;
invoke-static {v0, v1}, Lcom/tencent/open/TDialog;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_21
:pswitch_54
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/TDialog;->b()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_21
:pswitch_74
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/tencent/open/TDialog;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Ljava/lang/String;
invoke-static {v0, v1}, Lcom/tencent/open/TDialog;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_21
:pswitch_data_96
.packed-switch 0x1
:pswitch_22
:pswitch_2c
:pswitch_32
:pswitch_54
:pswitch_74
.end packed-switch
.end method