.class final Lcom/bbm/compat/maps/g;
.super Ljava/lang/Object;
.source "GoogleMapView.java"
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.field final synthetic a:Lcom/bbm/compat/maps/GoogleMapView;
.method constructor <init>(Lcom/bbm/compat/maps/GoogleMapView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/compat/maps/g;->a:Lcom/bbm/compat/maps/GoogleMapView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
.registers 7
iget-object v0, p0, Lcom/bbm/compat/maps/g;->a:Lcom/bbm/compat/maps/GoogleMapView;
invoke-static {v0}, Lcom/bbm/compat/maps/GoogleMapView;->b(Lcom/bbm/compat/maps/GoogleMapView;)Lcom/bbm/compat/maps/d;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/bbm/compat/maps/g;->a:Lcom/bbm/compat/maps/GoogleMapView;
invoke-static {v0}, Lcom/bbm/compat/maps/GoogleMapView;->b(Lcom/bbm/compat/maps/GoogleMapView;)Lcom/bbm/compat/maps/d;
move-result-object v0
iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
invoke-interface {v0, v1, v2, v3, v4}, Lcom/bbm/compat/maps/d;->onMapClick(DD)V
:cond_15
return-void
.end method