.class  Lcom/google/android/gms/drive/internal/bh;
.super Landroid/os/Handler;
.method private constructor <init>(Landroid/os/Looper;)V
.registers 2
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/drive/internal/bg$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/bh;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public a(Lcom/google/android/gms/drive/events/a;Lcom/google/android/gms/drive/events/DriveEvent;)V
.registers 5
const/4 v0, 0x1
new-instance v1, Landroid/util/Pair;
invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/internal/bh;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bh;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1e
const-string v0, "EventCallback"
const-string v1, "Don\'t know how to handle this event"
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
:goto_c
return-void
:pswitch_d
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/util/Pair;
iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;
check-cast v1, Lcom/google/android/gms/drive/events/a;
iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;
check-cast v0, Lcom/google/android/gms/drive/events/DriveEvent;
invoke-interface {v1, v0}, Lcom/google/android/gms/drive/events/a;->a(Lcom/google/android/gms/drive/events/DriveEvent;)V
goto :goto_c
nop
:pswitch_data_1e
.packed-switch 0x1
:pswitch_d
.end packed-switch
.end method