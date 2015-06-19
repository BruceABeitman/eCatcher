.class public Lcom/google/android/gms/common/api/s;
.super Landroid/os/Handler;
.method public constructor <init>()V
.registers 2
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/s;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Looper;)V
.registers 2
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public a()V
.registers 2
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/s;->removeMessages(I)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V
.registers 5
const/4 v0, 0x1
new-instance v1, Landroid/util/Pair;
invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/s;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/s;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/r;J)V
.registers 5
const/4 v0, 0x2
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/s;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/common/api/s;->sendMessageDelayed(Landroid/os/Message;J)Z
return-void
.end method
.method protected b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V
.registers 3
invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_2c
const-string v0, "GoogleApi"
const-string v1, "Don\'t know how to handle this message."
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
:goto_c
return-void
:pswitch_d
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/util/Pair;
iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;
check-cast v1, Lcom/google/android/gms/common/api/n;
iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/common/api/m;
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/s;->b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/m;)V
goto :goto_c
:pswitch_1d
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/common/api/r;
sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;
invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/r;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/m;)V
goto :goto_c
nop
:pswitch_data_2c
.packed-switch 0x1
:pswitch_d
:pswitch_1d
.end packed-switch
.end method