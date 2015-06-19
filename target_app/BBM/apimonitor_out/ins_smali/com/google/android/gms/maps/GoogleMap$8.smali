.class  Lcom/google/android/gms/maps/GoogleMap$8;
.super Lcom/google/android/gms/maps/internal/k$a;
.field final synthetic ON:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic OW:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$8;->ON:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$8;->OW:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/k$a;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/maps/model/internal/d;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$8;->OW:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/d;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
move-result v0
return v0
.end method