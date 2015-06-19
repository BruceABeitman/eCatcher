.class  Lcom/google/android/gms/maps/StreetViewPanorama$2;
.super Lcom/google/android/gms/maps/internal/p$a;
.field final synthetic ZM:Lcom/google/android/gms/maps/StreetViewPanorama;
.field final synthetic ZN:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanorama$2;->ZM:Lcom/google/android/gms/maps/StreetViewPanorama;
iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanorama$2;->ZN:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/p$a;-><init>()V
return-void
.end method
.method public onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama$2;->ZN:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;->onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
return-void
.end method