.class  Lcom/google/android/gms/maps/GoogleMap$3;
.super Lcom/google/android/gms/maps/internal/n$a;
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic Zb:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$3;->YZ:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$3;->Zb:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/n$a;-><init>()V
return-void
.end method
.method public onMyLocationButtonClick()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$3;->Zb:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;
invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;->onMyLocationButtonClick()Z
move-result v0
return v0
.end method