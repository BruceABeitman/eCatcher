.class  Lcom/gindin/zmanim/android/location/LocationProvider$1;
.super Landroid/os/AsyncTask;
.source "LocationProvider.java"
.field final synthetic this$0:Lcom/gindin/zmanim/android/location/LocationProvider;
.field final synthetic val$location:Landroid/location/Location;
.method constructor <init>(Lcom/gindin/zmanim/android/location/LocationProvider;Landroid/location/Location;)V
.registers 3
iput-object p1, p0, Lcom/gindin/zmanim/android/location/LocationProvider$1;->this$0:Lcom/gindin/zmanim/android/location/LocationProvider;
iput-object p2, p0, Lcom/gindin/zmanim/android/location/LocationProvider$1;->val$location:Landroid/location/Location;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/location/Location;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/location/LocationProvider$1;->doInBackground([Landroid/location/Location;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Landroid/location/Location;)Ljava/lang/String;
.registers 12
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider$1;->val$location:Landroid/location/Location;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider$1;->val$location:Landroid/location/Location;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v3
:try_start_c
iget-object v0, p0, Lcom/gindin/zmanim/android/location/LocationProvider$1;->this$0:Lcom/gindin/zmanim/android/location/LocationProvider;
iget-object v0, v0, Lcom/gindin/zmanim/android/location/LocationProvider;->geocoder:Landroid/location/Geocoder;
const/4 v5, 0x1
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/Geocoder;->getFromLocation(Landroid/location/Geocoder;DDI)Ljava/util/List;
move-result-object v7
if-eqz v7, :cond_44
invoke-interface {v7}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_44
const/4 v0, 0x0
invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/location/Address;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ", "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
:goto_43
return-object v9
:cond_44
const-string v0, "%.1f lat %.1f long"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_5a
.catch Ljava/io/IOException; {:try_start_c .. :try_end_5a} :catch_5c
move-result-object v9
goto :goto_43
:catch_5c
move-exception v0
move-object v8, v0
const-string v0, "%.1f lat %.1f long"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
aput-object v1, v5, v6
const/4 v1, 0x1
invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
aput-object v2, v5, v1
invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
goto :goto_43
.end method