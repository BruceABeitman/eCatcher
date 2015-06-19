.class  Lcom/pinguo/camera360/shop/model/ShopDataManager$1;
.super Ljava/lang/Object;
.source "ShopDataManager.java"
.implements Lcom/android/volley/Response$Listener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
.field private final synthetic val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field private final synthetic val$executorService:Ljava/util/concurrent/ExecutorService;
.method constructor <init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/util/concurrent/ExecutorService;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iput-object p2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
iput-object p3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$executorService:Ljava/util/concurrent/ExecutorService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lorg/json/JSONObject;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->onResponse(Lorg/json/JSONObject;)V
return-void
.end method
.method public onResponse(Lorg/json/JSONObject;)V
.registers 11
const/4 v8, 0x0
if-nez p1, :cond_17
invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Json object is null"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-interface {v0, v8}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
:cond_16
:goto_16
return-void
:cond_17
const-string/jumbo v2, ""
const-string/jumbo v4, ""
const/4 v3, 0x0
const/4 v7, 0x0
:try_start_1f
const-string/jumbo v0, "data"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "url"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v0, "data"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "crc32"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v0, "data"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "version"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
const-string/jumbo v0, "status"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
:try_end_4f
.catch Lorg/json/JSONException; {:try_start_1f .. :try_end_4f} :catch_83
move-result v7
const/16 v0, 0xc8
if-ne v7, v0, :cond_62
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_62
if-eqz v3, :cond_62
invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a0
:cond_62
invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Get front image download url failed! Status="
invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-interface {v0, v8}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
goto :goto_16
:catch_83
move-exception v6
invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Parse url and signature from json object fail!"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-interface {v0, v8}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
goto/16 :goto_16
:cond_a0
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
iget-object v5, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;->val$executorService:Ljava/util/concurrent/ExecutorService;
#calls: Lcom/pinguo/camera360/shop/model/ShopDataManager;->doUpdateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ExecutorService;)V
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$1(Lcom/pinguo/camera360/shop/model/ShopDataManager;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ExecutorService;)V
goto/16 :goto_16
.end method