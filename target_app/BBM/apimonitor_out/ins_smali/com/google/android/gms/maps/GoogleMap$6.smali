.class  Lcom/google/android/gms/maps/GoogleMap$6;
.super Lcom/google/android/gms/maps/internal/h$a;
.field final synthetic ON:Lcom/google/android/gms/maps/GoogleMap;
.field final synthetic OU:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$6;->ON:Lcom/google/android/gms/maps/GoogleMap;
iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$6;->OU:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/h$a;-><init>()V
return-void
.end method
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$6;->OU:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
return-void
.end method