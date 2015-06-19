.class public Lcom/pinguo/lib/location/service/GoogleLocationService$ReverseGeocodingTask;
.super Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
.source "GoogleLocationService.java"
.field final synthetic this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;
.method protected constructor <init>(Lcom/pinguo/lib/location/service/GoogleLocationService;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$ReverseGeocodingTask;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;
invoke-direct {p0, p1}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;-><init>(Lcom/pinguo/lib/location/service/AbstractLocationService;)V
return-void
.end method
.method protected varargs doInBackground([Landroid/location/Location;)Ljava/lang/String;
.registers 15
const/4 v11, 0x0
const/4 v2, 0x1
const/4 v12, 0x0
if-eqz p1, :cond_8
array-length v1, p1
if-ge v1, v2, :cond_a
:cond_8
move-object v1, v11
:goto_9
return-object v1
:cond_a
new-instance v0, Landroid/location/Geocoder;
iget-object v1, p0, Lcom/pinguo/lib/location/service/GoogleLocationService$ReverseGeocodingTask;->this$0:Lcom/pinguo/lib/location/service/GoogleLocationService;
#getter for: Lcom/pinguo/lib/location/service/GoogleLocationService;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/pinguo/lib/location/service/GoogleLocationService;->access$0(Lcom/pinguo/lib/location/service/GoogleLocationService;)Landroid/content/Context;
move-result-object v1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/location/Geocoder;->droidbox_cons(Landroid/content/Context;Ljava/util/Locale;)V
invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V
aget-object v10, p1, v12
const/4 v8, 0x0
:try_start_1c
invoke-static {v10}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
invoke-static {v10}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v3
const/4 v5, 0x1
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/Geocoder;->getFromLocation(Landroid/location/Geocoder;DDI)Ljava/util/List;
:try_end_28
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_62
.catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_28} :catch_69
move-result-object v8
:goto_29
if-eqz v8, :cond_70
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_70
invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/location/Address;
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v6}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_48
invoke-virtual {v6}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_4f
:cond_48
invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_4f
invoke-virtual {v6}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v6}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_9
:catch_62
move-exception v9
sget-object v1, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
invoke-static {v1, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_29
:catch_69
move-exception v9
sget-object v1, Lcom/pinguo/lib/location/service/GoogleLocationService;->TAG:Ljava/lang/String;
invoke-static {v1, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_29
:cond_70
move-object v1, v11
goto :goto_9
.end method