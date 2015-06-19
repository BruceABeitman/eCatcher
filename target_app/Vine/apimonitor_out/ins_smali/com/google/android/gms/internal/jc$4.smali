.class  Lcom/google/android/gms/internal/jc$4;
.super Lcom/google/android/gms/internal/jc$a;
.field final synthetic Vu:Lcom/google/android/gms/location/LocationListener;
.field final synthetic Vv:Lcom/google/android/gms/internal/jc;
.method constructor <init>(Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/location/LocationListener;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/jc$4;->Vv:Lcom/google/android/gms/internal/jc;
iput-object p2, p0, Lcom/google/android/gms/internal/jc$4;->Vu:Lcom/google/android/gms/location/LocationListener;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc$a;-><init>(Lcom/google/android/gms/internal/jc$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/jh;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jc$4;->a(Lcom/google/android/gms/internal/jh;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/jh;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/jc$4;->Vu:Lcom/google/android/gms/location/LocationListener;
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jh;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc$4;->b(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method