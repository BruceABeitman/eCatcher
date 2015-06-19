.class  Lcom/twidroid/net/c/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/location/LocationListener;
.field final synthetic a:Lcom/twidroid/net/c/a;
.method private constructor <init>(Lcom/twidroid/net/c/a;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/c/b;->a:Lcom/twidroid/net/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/net/c/a;Lcom/twidroid/net/c/a$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/net/c/b;-><init>(Lcom/twidroid/net/c/a;)V
return-void
.end method
.method public onLocationChanged(Landroid/location/Location;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/net/c/b;->a:Lcom/twidroid/net/c/a;
invoke-static {v0}, Lcom/twidroid/net/c/a;->e(Lcom/twidroid/net/c/a;)V
const-string v0, "GPSUpdateTask"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "GPS Location changed:  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " / "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/location/Address;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLatitude(D)V
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLongitude(D)V
iget-object v1, p0, Lcom/twidroid/net/c/b;->a:Lcom/twidroid/net/c/a;
invoke-static {v1}, Lcom/twidroid/net/c/a;->d(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/net/c/b;->a:Lcom/twidroid/net/c/a;
invoke-virtual {v1, v2, v0}, Lcom/twidroid/net/c/c;->b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
invoke-static {p1}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v0
if-eqz v0, :cond_82
const-string v0, "GPSUpdateTask"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Location Accuracy: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v0
const/high16 v1, 0x41a0
cmpg-float v0, v0, v1
if-gez v0, :cond_82
iget-object v0, p0, Lcom/twidroid/net/c/b;->a:Lcom/twidroid/net/c/a;
invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V
:cond_82
return-void
.end method
.method public onProviderDisabled(Ljava/lang/String;)V
.registers 4
const-string v0, "GPSUpdateTask"
const-string v1, "GPS Provider disabled"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onProviderEnabled(Ljava/lang/String;)V
.registers 4
const-string v0, "GPSUpdateTask"
const-string v1, "GPS Provider enabled"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 6
const-string v0, "GPSUpdateTask"
const-string v1, "GPS Provider status changed"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method