.class public final Lcom/google/android/gms/common/api/v;
.super Landroid/os/Handler;
.method public constructor <init>()V
.registers 2
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/v;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Looper;)V
.registers 2
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/o;)V
.registers 5
const/4 v0, 0x1
new-instance v1, Landroid/util/Pair;
invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/v;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/v;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_24
const-string v0, "GoogleApi"
const-string v1, "Don\'t know how to handle this message."
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
:goto_c
return-void
:pswitch_d
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/util/Pair;
iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;
check-cast v1, Lcom/google/android/gms/common/api/p;
iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;
invoke-interface {v1}, Lcom/google/android/gms/common/api/p;->a()V
goto :goto_c
:pswitch_1b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/common/api/t;
invoke-static {v0}, Lcom/google/android/gms/common/api/t;->a(Lcom/google/android/gms/common/api/t;)V
goto :goto_c
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_d
:pswitch_1b
.end packed-switch
.end method