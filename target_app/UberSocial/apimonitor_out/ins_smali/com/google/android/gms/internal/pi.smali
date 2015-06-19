.class  Lcom/google/android/gms/internal/pi;
.super Lcom/google/android/gms/location/o;
.field private a:Landroid/os/Handler;
.method constructor <init>(Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
.registers 4
invoke-direct {p0}, Lcom/google/android/gms/location/o;-><init>()V
if-nez p2, :cond_d
new-instance v0, Lcom/google/android/gms/internal/ph;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ph;-><init>(Lcom/google/android/gms/location/k;)V
:goto_a
iput-object v0, p0, Lcom/google/android/gms/internal/pi;->a:Landroid/os/Handler;
return-void
:cond_d
new-instance v0, Lcom/google/android/gms/internal/ph;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ph;-><init>(Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
goto :goto_a
.end method
.method public a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/pi;->a:Landroid/os/Handler;
return-void
.end method
.method public a(Landroid/location/Location;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/pi;->a:Landroid/os/Handler;
if-nez v0, :cond_c
const-string v0, "LocationClientHelper"
const-string v1, "Received a location in client after calling removeLocationUpdates."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_b
return-void
:cond_c
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
const/4 v1, 0x1
iput v1, v0, Landroid/os/Message;->what:I
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v1, p0, Lcom/google/android/gms/internal/pi;->a:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_b
.end method