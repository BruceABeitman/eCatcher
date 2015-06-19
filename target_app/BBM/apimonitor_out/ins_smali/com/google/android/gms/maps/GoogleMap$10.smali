.class  Lcom/google/android/gms/maps/GoogleMap$10;
.super Lcom/google/android/gms/maps/internal/f$a;
.field final synthetic ON:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic OY:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$10;->ON:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$10;->OY:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/f$a;-><init>()V
return-void
.end method
.method public e(Lcom/google/android/gms/maps/model/internal/d;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$10;->OY:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/d;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
return-void
.end method