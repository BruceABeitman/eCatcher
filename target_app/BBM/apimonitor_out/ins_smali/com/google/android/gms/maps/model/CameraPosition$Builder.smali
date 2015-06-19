.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.field private PF:Lcom/google/android/gms/maps/model/LatLng;
.field private PG:F
.field private PH:F
.field private PI:F
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;
iput-object v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PF:Lcom/google/android/gms/maps/model/LatLng;
iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F
iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PG:F
iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F
iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PH:F
iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F
iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PI:F
return-void
.end method
.method public final bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PI:F
return-object p0
.end method
.method public final build()Lcom/google/android/gms/maps/model/CameraPosition;
.registers 6
new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;
iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PF:Lcom/google/android/gms/maps/model/LatLng;
iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PG:F
iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PH:F
iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PI:F
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V
return-object v0
.end method
.method public final target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PF:Lcom/google/android/gms/maps/model/LatLng;
return-object p0
.end method
.method public final tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PH:F
return-object p0
.end method
.method public final zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->PG:F
return-object p0
.end method