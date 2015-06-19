.class  Lcom/google/android/gms/maps/GoogleMap$1;
.super Lcom/google/android/gms/maps/internal/f$a;
.field final synthetic YY:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$1;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$1;->YY:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/f$a;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/maps/model/internal/d;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$1;->YY:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;
new-instance v1, Lcom/google/android/gms/maps/model/IndoorBuilding;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/maps/model/internal/d;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorLevelActivated(Lcom/google/android/gms/maps/model/IndoorBuilding;)V
return-void
.end method
.method public onIndoorBuildingFocused()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$1;->YY:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;
invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorBuildingFocused()V
return-void
.end method