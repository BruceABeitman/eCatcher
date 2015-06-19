.class  Lcom/google/android/gms/maps/StreetViewPanorama$1;
.super Lcom/google/android/gms/maps/internal/q$a;
.field final synthetic ZL:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;
.field final synthetic ZM:Lcom/google/android/gms/maps/StreetViewPanorama;
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanorama$1;->ZM:Lcom/google/android/gms/maps/StreetViewPanorama;
iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanorama$1;->ZL:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/q$a;-><init>()V
return-void
.end method
.method public onStreetViewPanoramaChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama$1;->ZL:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;->onStreetViewPanoramaChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V
return-void
.end method