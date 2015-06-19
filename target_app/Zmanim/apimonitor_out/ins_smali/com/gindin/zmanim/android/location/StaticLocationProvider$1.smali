.class  Lcom/gindin/zmanim/android/location/StaticLocationProvider$1;
.super Landroid/os/AsyncTask;
.source "StaticLocationProvider.java"
.field final synthetic this$0:Lcom/gindin/zmanim/android/location/StaticLocationProvider;
.method constructor <init>(Lcom/gindin/zmanim/android/location/StaticLocationProvider;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider$1;->this$0:Lcom/gindin/zmanim/android/location/StaticLocationProvider;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/android/location/StaticLocationProvider$1;->doInBackground([Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
.registers 6
:try_start_0
iget-object v1, p0, Lcom/gindin/zmanim/android/location/StaticLocationProvider$1;->this$0:Lcom/gindin/zmanim/android/location/StaticLocationProvider;
iget-object v1, v1, Lcom/gindin/zmanim/android/location/StaticLocationProvider;->geocoder:Landroid/location/Geocoder;
const/4 v2, 0x0
aget-object v2, p1, v2
const/4 v3, 0x5
invoke-static {v1, v2, v3}, Ldroidbox/android/location/Geocoder;->getFromLocationName(Landroid/location/Geocoder;Ljava/lang/String;I)Ljava/util/List;
:try_end_b
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d
move-result-object v1
:goto_c
return-object v1
:catch_d
move-exception v1
move-object v0, v1
const/4 v1, 0x0
goto :goto_c
.end method