.class  Lcom/pinguo/camera360/order/model/IdPassportSort$1;
.super Lcom/pinguo/Camera360Lib/network/HttpStringRequest;
.source "IdPassportSort.java"
.field final synthetic this$0:Lcom/pinguo/camera360/order/model/IdPassportSort;
.method constructor <init>(Lcom/pinguo/camera360/order/model/IdPassportSort;ILjava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/order/model/IdPassportSort$1;->this$0:Lcom/pinguo/camera360/order/model/IdPassportSort;
invoke-direct {p0, p2, p3}, Lcom/pinguo/Camera360Lib/network/HttpStringRequest;-><init>(ILjava/lang/String;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 5
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v2, "platform"
const-string/jumbo v3, "android"
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "locale"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "version"
const-string/jumbo v3, "0"
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "sig"
invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method protected onErrorResponse(Ljava/lang/Exception;)V
.registers 3
const-string/jumbo v0, "IdPassportSort"
invoke-static {v0, p1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/order/model/IdPassportSort$1;->onResponse(Ljava/lang/String;)V
return-void
.end method
.method protected onResponse(Ljava/lang/String;)V
.registers 10
const/4 v4, 0x0
const-string/jumbo v1, ""
:try_start_4
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "status"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
const-string/jumbo v5, "message"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_16
.catch Lorg/json/JSONException; {:try_start_4 .. :try_end_16} :catch_59
move-result-object v1
:goto_17
const/16 v5, 0xc8
if-ne v4, v5, :cond_69
:try_start_1b
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v6
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/passportsort.json"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v5
invoke-static {v5, v2}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
:try_end_42
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_42} :catch_61
:goto_42
const-string/jumbo v5, "IdPassportSort"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "remoteLoad: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_58
return-void
:catch_59
move-exception v0
const-string/jumbo v5, "IdPassportSort"
invoke-static {v5, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_17
:catch_61
move-exception v0
const-string/jumbo v5, "IdPassportSort"
invoke-static {v5, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_42
:cond_69
const-string/jumbo v5, "IdPassportSort"
invoke-static {v5, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_58
.end method