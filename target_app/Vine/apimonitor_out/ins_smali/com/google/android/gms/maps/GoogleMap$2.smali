.class  Lcom/google/android/gms/maps/GoogleMap$2;
.super Lcom/google/android/gms/maps/internal/o$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Za:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$2;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$2;->Za:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/o$a;-><init>()V
return-void
.end method
.method public f(Lcom/google/android/gms/dynamic/d;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap$2;->Za:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/Location;
invoke-interface {v1, v0}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V
return-void
.end method