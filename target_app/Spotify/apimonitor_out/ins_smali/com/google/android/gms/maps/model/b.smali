.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;
.field private a:Lcom/google/android/gms/maps/model/LatLng;
.field private b:F
.field private c:F
.field private d:F
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Lcom/google/android/gms/maps/model/CameraPosition;
.registers 6
new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;
iget-object v1, p0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/LatLng;
iget v2, p0, Lcom/google/android/gms/maps/model/b;->b:F
iget v3, p0, Lcom/google/android/gms/maps/model/b;->c:F
iget v4, p0, Lcom/google/android/gms/maps/model/b;->d:F
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V
return-object v0
.end method
.method public final a(F)Lcom/google/android/gms/maps/model/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/b;->b:F
return-object p0
.end method
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/b;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/maps/model/LatLng;
return-object p0
.end method
.method public final b(F)Lcom/google/android/gms/maps/model/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/b;->c:F
return-object p0
.end method
.method public final c(F)Lcom/google/android/gms/maps/model/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/maps/model/b;->d:F
return-object p0
.end method