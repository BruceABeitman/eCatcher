.class  Lcom/google/android/gms/internal/jg$a;
.super Landroid/os/Handler;
.field private final VK:Lcom/google/android/gms/location/LocationListener;
.method public constructor <init>(Lcom/google/android/gms/location/LocationListener;)V
.registers 2
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/jg$a;->VK:Lcom/google/android/gms/location/LocationListener;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
.registers 3
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object p1, p0, Lcom/google/android/gms/internal/jg$a;->VK:Lcom/google/android/gms/location/LocationListener;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_1c
const-string v0, "LocationClientHelper"
const-string v1, "unknown message in LocationHandler.handleMessage"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_c
return-void
:pswitch_d
new-instance v1, Landroid/location/Location;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/location/Location;
invoke-static {v0}, Ldroidbox/android/location/Location;->droidbox_cons(Landroid/location/Location;)V
invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
iget-object v0, p0, Lcom/google/android/gms/internal/jg$a;->VK:Lcom/google/android/gms/location/LocationListener;
invoke-interface {v0, v1}, Lcom/google/android/gms/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
goto :goto_c
:pswitch_data_1c
.packed-switch 0x1
:pswitch_d
.end packed-switch
.end method