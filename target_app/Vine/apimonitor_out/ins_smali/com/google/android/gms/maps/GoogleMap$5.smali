.class  Lcom/google/android/gms/maps/GoogleMap$5;
.super Lcom/google/android/gms/maps/internal/s$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Zd:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$5;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Zd:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/s$a;-><init>()V
return-void
.end method
.method public g(Lcom/google/android/gms/dynamic/d;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Zd:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-interface {v1, v0}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Zd:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V
return-void
.end method