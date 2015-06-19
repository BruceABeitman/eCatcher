.class  Lcom/google/android/gms/maps/GoogleMap$12;
.super Lcom/google/android/gms/maps/internal/n$a;
.field final synthetic ON:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Pa:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$12;->ON:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$12;->Pa:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/n$a;-><init>()V
return-void
.end method
.method public d(Lcom/google/android/gms/dynamic/b;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap$12;->Pa:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/Location;
invoke-interface {v1, v0}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V
return-void
.end method