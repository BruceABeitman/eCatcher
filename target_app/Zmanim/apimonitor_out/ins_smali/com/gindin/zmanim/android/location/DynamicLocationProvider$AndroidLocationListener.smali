.class  Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;
.super Ljava/lang/Object;
.source "DynamicLocationProvider.java"
.implements Landroid/location/LocationListener;
.field private firstFix:Z
.field public final providerName:Ljava/lang/String;
.field final synthetic this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
.method constructor <init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;Ljava/lang/String;)V
.registers 9
iput-object p1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->firstFix:Z
iput-object p2, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->providerName:Ljava/lang/String;
#getter for: Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
invoke-static {p1}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->access$000(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;)Landroid/location/LocationManager;
move-result-object v0
const-wide/16 v2, 0x0
const/4 v4, 0x0
move-object v1, p2
move-object v5, p0
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
return-void
.end method
.method public cancel()V
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
#getter for: Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
invoke-static {v0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->access$000(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;)Landroid/location/LocationManager;
move-result-object v0
invoke-static {v0, p0}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
return-void
.end method
.method  cancelFirstFix()V
.registers 7
iget-boolean v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->firstFix:Z
if-eqz v0, :cond_1a
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->firstFix:Z
invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->cancel()V
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
#getter for: Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->locationManager:Landroid/location/LocationManager;
invoke-static {v0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->access$000(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;)Landroid/location/LocationManager;
move-result-object v0
iget-object v1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->providerName:Ljava/lang/String;
const-wide/32 v2, 0x124f80
const/4 v4, 0x0
move-object v5, p0
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
:cond_1a
return-void
.end method
.method public onLocationChanged(Landroid/location/Location;)V
.registers 3
invoke-virtual {p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->cancelFirstFix()V
iget-object v0, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;->this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
invoke-virtual {v0, p1, p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;->onReceivedFix(Landroid/location/Location;Lcom/gindin/zmanim/android/location/DynamicLocationProvider$AndroidLocationListener;)V
return-void
.end method
.method public onProviderDisabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onProviderEnabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 4
return-void
.end method