.class  Lcom/google/android/gms/maps/GoogleMap$7;
.super Lcom/google/android/gms/maps/internal/e$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Zh:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$7;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$7;->Zh:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/e$a;-><init>()V
return-void
.end method
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$7;->Zh:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
return-void
.end method