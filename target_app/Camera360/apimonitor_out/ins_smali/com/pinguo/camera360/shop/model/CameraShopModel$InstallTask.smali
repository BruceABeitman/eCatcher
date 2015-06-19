.class  Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "CameraShopModel.java"
.field private mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/CameraShopModel;
.method private constructor <init>(Lcom/pinguo/camera360/shop/model/CameraShopModel;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/CameraShopModel;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/shop/model/CameraShopModel;Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;-><init>(Lcom/pinguo/camera360/shop/model/CameraShopModel;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;[Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->publishProgress([Ljava/lang/Object;)V
return-void
.end method
.method protected varargs doInBackground([Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Boolean;
.registers 10
const/4 v6, 0x0
const/4 v7, 0x0
aget-object v5, p1, v7
iput-object v5, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
new-instance v3, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask$InstallProgressCallback;
invoke-direct {v3, p0, v6}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask$InstallProgressCallback;-><init>(Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask$InstallProgressCallback;)V
iget-object v5, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v5, v5, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v5}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->getEffectDownloadPath(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v5
if-nez v5, :cond_29
new-instance v1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v5, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {v1, v5}, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;-><init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V
iput-object v0, v1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->downloadPath:Ljava/lang/String;
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v5
invoke-virtual {v5, v1, v6}, Lcom/pinguo/camera360/effect/model/EffectModel;->install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
:cond_29
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v2
new-instance v5, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
iget-object v6, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {v5, v6}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V
invoke-virtual {v2, v5, v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->install(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
move-result v4
if-nez v4, :cond_49
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->access$0()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "Camera plugin manager install fail!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
:goto_48
return-object v5
:cond_49
iget-object v5, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/CameraShopModel;
iget-object v5, v5, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v6, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
sget-object v7, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v7}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7, v3}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateProductInstallation(Lcom/pinguo/camera360/shop/model/entity/Product;Ljava/lang/String;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
move-result v4
if-nez v4, :cond_65
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->access$0()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "CameraShop model update product installation fail!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_65
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
goto :goto_48
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->doInBackground([Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Boolean;)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->access$0()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Result: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/CameraShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
if-eqz v0, :cond_26
const/4 v1, 0x1
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
:cond_26
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->access$0()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "product: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/CameraShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
invoke-virtual {v1, v2, v3, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->notifyListenersOnFinish(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Ljava/lang/Boolean;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/shop/event/CameraProductChangeEvent;
invoke-direct {v2}, Lcom/pinguo/camera360/shop/event/CameraProductChangeEvent;-><init>()V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->onPostExecute(Ljava/lang/Boolean;)V
return-void
.end method
.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
.registers 7
const/4 v4, 0x0
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->access$0()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Progress: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v3, p1, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
aget-object v1, p1, v4
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/CameraShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
invoke-virtual {v1, v2, v3, v0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->notifyListenersInProgress(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;I)V
return-void
.end method
.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->onProgressUpdate([Ljava/lang/Integer;)V
return-void
.end method