.class public Lcom/pinguo/lib/location/service/BaiduLocationService$ReverseGeocodingTask;
.super Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;
.source "BaiduLocationService.java"
.field final synthetic this$0:Lcom/pinguo/lib/location/service/BaiduLocationService;
.method protected constructor <init>(Lcom/pinguo/lib/location/service/BaiduLocationService;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService$ReverseGeocodingTask;->this$0:Lcom/pinguo/lib/location/service/BaiduLocationService;
invoke-direct {p0, p1}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;-><init>(Lcom/pinguo/lib/location/service/AbstractLocationService;)V
return-void
.end method
.method protected varargs doInBackground([Landroid/location/Location;)Ljava/lang/String;
.registers 12
const/4 v8, 0x0
if-eqz p1, :cond_7
array-length v6, p1
const/4 v7, 0x1
if-ge v6, v7, :cond_9
:cond_7
const/4 v0, 0x0
:goto_8
:cond_8
return-object v0
:cond_9
aget-object v4, p1, v8
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v6, "ak"
const-string/jumbo v7, "F0a4780a7b6c2f0716ca79eda1dc547f"
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v6, "callback"
const-string/jumbo v7, "renderReverse"
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v6, "location"
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v4}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, ","
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v4}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v8
invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v6, "output"
const-string/jumbo v7, "json"
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v6, "pois"
const-string/jumbo v7, "0"
invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
:try_start_5b
const-string/jumbo v6, "http://api.map.baidu.com/geocoder/v2/?"
const/4 v7, 0x0
invoke-static {v6, v5, v7}, Lcom/pinguo/lib/network/HttpUtils;->get(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
move-result-object v3
const-string/jumbo v6, "renderReverse&&renderReverse("
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v7
add-int/lit8 v7, v7, -0x1
invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
sget-object v6, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;
invoke-static {v6, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
if-eqz v2, :cond_8
const-string/jumbo v6, "result"
invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
const-string/jumbo v7, "formatted_address"
invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_8d
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8d} :catch_90
move-result-object v0
goto/16 :goto_8
:catch_90
move-exception v1
sget-object v6, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;
invoke-static {v6, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_8
.end method