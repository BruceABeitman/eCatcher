.class  Lcom/pinguo/camera360/shop/model/ShopDataManager$10;
.super Lcom/android/volley/toolbox/StringRequest;
.source "ShopDataManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
.field private final synthetic val$productId:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
.registers 7
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$10;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iput-object p6, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$10;->val$productId:Ljava/lang/String;
invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 11
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
const-string/jumbo v5, ""
if-eqz v1, :cond_13
iget-object v5, v1, Lcom/pinguo/camera360/login/model/User$Info;->userId:Ljava/lang/String;
:cond_13
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v7, "product"
iget-object v8, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$10;->val$productId:Ljava/lang/String;
invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v7, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$10;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
#getter for: Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;
invoke-static {v7}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$2(Lcom/pinguo/camera360/shop/model/ShopDataManager;)Landroid/content/Context;
move-result-object v7
invoke-static {v7, v2}, LvStudio/Android/Camera360/RemoteConstants;->prepareCommonParams(Landroid/content/Context;Ljava/util/Map;)V
invoke-static {v2}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v7, "sig"
invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v7
invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_40
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_62
invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Post order with params: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
return-object v2
:cond_62
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v9, Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "="
invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_40
.end method