.class  Lcom/google/android/gms/maps/GoogleMap$12;
.super Lcom/google/android/gms/maps/internal/g$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Zm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$12;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$12;->Zm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/g$a;-><init>()V
return-void
.end method
.method public e(Lcom/google/android/gms/maps/model/internal/f;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$12;->Zm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
return-void
.end method