.class  Lcom/google/android/gms/maps/GoogleMap$11;
.super Lcom/google/android/gms/maps/internal/m$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Zl:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$11;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zl:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/m$a;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/maps/model/internal/f;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zl:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
return-void
.end method
.method public c(Lcom/google/android/gms/maps/model/internal/f;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zl:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
return-void
.end method
.method public d(Lcom/google/android/gms/maps/model/internal/f;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->Zl:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
return-void
.end method