.class  Lcom/google/android/gms/maps/GoogleMap$13;
.super Lcom/google/android/gms/maps/internal/d$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Zn:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$13;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$13;->Zn:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/d$a;-><init>()V
return-void
.end method
.method public f(Lcom/google/android/gms/maps/model/internal/f;)Lcom/google/android/gms/dynamic/d;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$13;->Zn:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v0
return-object v0
.end method
.method public g(Lcom/google/android/gms/maps/model/internal/f;)Lcom/google/android/gms/dynamic/d;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$13;->Zn:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
new-instance v1, Lcom/google/android/gms/maps/model/Marker;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/f;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v0
return-object v0
.end method