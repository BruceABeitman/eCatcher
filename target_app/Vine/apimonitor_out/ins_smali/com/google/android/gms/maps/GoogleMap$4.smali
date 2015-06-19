.class  Lcom/google/android/gms/maps/GoogleMap$4;
.super Lcom/google/android/gms/maps/internal/j$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$4;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$4;->Zc:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/j$a;-><init>()V
return-void
.end method
.method public onMapLoaded()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$4;->Zc:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;->onMapLoaded()V
return-void
.end method