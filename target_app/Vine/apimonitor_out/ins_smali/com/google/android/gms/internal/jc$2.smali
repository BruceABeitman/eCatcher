.class  Lcom/google/android/gms/internal/jc$2;
.super Lcom/google/android/gms/internal/jc$a;
.field final synthetic Vt:Lcom/google/android/gms/location/LocationRequest;
.field final synthetic Vu:Lcom/google/android/gms/location/LocationListener;
.field final synthetic Vv:Lcom/google/android/gms/internal/jc;
.field final synthetic Vw:Landroid/os/Looper;
.method constructor <init>(Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/jc$2;->Vv:Lcom/google/android/gms/internal/jc;
iput-object p2, p0, Lcom/google/android/gms/internal/jc$2;->Vt:Lcom/google/android/gms/location/LocationRequest;
iput-object p3, p0, Lcom/google/android/gms/internal/jc$2;->Vu:Lcom/google/android/gms/location/LocationListener;
iput-object p4, p0, Lcom/google/android/gms/internal/jc$2;->Vw:Landroid/os/Looper;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc$a;-><init>(Lcom/google/android/gms/internal/jc$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/jh;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jc$2;->a(Lcom/google/android/gms/internal/jh;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/jh;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/jc$2;->Vt:Lcom/google/android/gms/location/LocationRequest;
iget-object v1, p0, Lcom/google/android/gms/internal/jc$2;->Vu:Lcom/google/android/gms/location/LocationListener;
iget-object v2, p0, Lcom/google/android/gms/internal/jc$2;->Vw:Landroid/os/Looper;
invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc$2;->b(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method