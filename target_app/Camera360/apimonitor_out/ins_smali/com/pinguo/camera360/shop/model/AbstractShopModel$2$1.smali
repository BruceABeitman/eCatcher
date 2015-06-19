.class  Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "AbstractShopModel.java"
.field final synthetic this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
.field private final synthetic val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.method constructor <init>(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
iput-object p2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.registers 5
const/4 v2, 0x0
aget-object v0, p1, v2
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
#getter for: Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-static {v1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
move-result-object v1
#calls: Lcom/pinguo/camera360/shop/model/AbstractShopModel;->writeJsonFile(Ljava/lang/String;Z)Z
invoke-static {v1, v0, v2}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel;Ljava/lang/String;Z)Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
return-object v1
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Boolean;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_1c
invoke-static {}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Write json file fail!"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-interface {v0, v2}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
:cond_1b
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
#getter for: Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->load(Z)Z
move-result v0
if-nez v0, :cond_3e
invoke-static {}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Load shop json object from file to cache fail!"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-interface {v0, v2}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
goto :goto_1b
:cond_3e
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
#getter for: Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->switchLib()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
#getter for: Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
move-result-object v1
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
#getter for: Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopInfo(Z)Lcom/pinguo/camera360/shop/model/entity/Shop;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Shop;->shopJsons:Ljava/util/Map;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
#getter for: Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-static {v2}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->data:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iput-object v0, v1, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->this$1:Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
#getter for: Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->this$0:Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-static {v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;->access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;)Lcom/pinguo/camera360/shop/model/AbstractShopModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->onShopUpdated()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-interface {v0, v3}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
goto :goto_1b
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2$1;->onPostExecute(Ljava/lang/Boolean;)V
return-void
.end method