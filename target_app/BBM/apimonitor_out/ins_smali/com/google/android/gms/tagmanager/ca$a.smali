.class public Lcom/google/android/gms/tagmanager/ca$a;
.super Landroid/os/Handler;
.method public constructor <init>()V
.registers 2
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ca$a;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Looper;)V
.registers 2
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
.registers 5
const/4 v0, 0x1
new-instance v1, Landroid/util/Pair;
invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/ca$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca$a;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/ca;J)V
.registers 5
const/4 v0, 0x2
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/ca$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/tagmanager/ca$a;->sendMessageDelayed(Landroid/os/Message;J)Z
return-void
.end method
.method protected b(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
.registers 3
invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method
.method public dw()V
.registers 2
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca$a;->removeMessages(I)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_2a
const-string v0, "Don\'t know how to handle this message."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
:goto_a
return-void
:pswitch_b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/util/Pair;
iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;
check-cast v1, Lcom/google/android/gms/common/api/ResultCallback;
iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/common/api/Result;
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tagmanager/ca$a;->b(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
goto :goto_a
:pswitch_1b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/tagmanager/ca;
sget-object v1, Lcom/google/android/gms/common/api/Status;->zS:Lcom/google/android/gms/common/api/Status;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/ca;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/common/api/Result;)V
goto :goto_a
nop
:pswitch_data_2a
.packed-switch 0x1
:pswitch_b
:pswitch_1b
.end packed-switch
.end method