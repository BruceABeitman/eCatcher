.class  Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "EffectShopModel.java"
.field private mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
.method private constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;[Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->publishProgress([Ljava/lang/Object;)V
return-void
.end method
.method protected varargs doInBackground([Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
.registers 8
const/4 v5, 0x0
aget-object v3, p1, v5
iput-object v3, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
new-instance v1, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;
const/4 v3, 0x0
invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;)V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
iget-object v3, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
invoke-virtual {v0, v3, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
move-result v2
if-nez v2, :cond_26
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$0()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "Effect model install fail!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
:goto_25
return-object v3
:cond_26
iget-object v3, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v3, v3, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
sget-object v5, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->effect:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v5}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateProductInstallation(Lcom/pinguo/camera360/shop/model/entity/Product;Ljava/lang/String;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
move-result v2
if-nez v2, :cond_42
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$0()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "EffectShop model update product installation fail!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_42
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
goto :goto_25
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->doInBackground([Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Boolean;)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$0()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Result: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
if-eqz v0, :cond_26
const/4 v1, 0x1
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
:cond_26
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
invoke-virtual {v1, v2, v3, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->notifyListenersOnFinish(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Ljava/lang/Boolean;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/shop/event/EffectProductChangeEvent;
invoke-direct {v2}, Lcom/pinguo/camera360/shop/event/EffectProductChangeEvent;-><init>()V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->onPostExecute(Ljava/lang/Boolean;)V
return-void
.end method
.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
.registers 7
const/4 v4, 0x0
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$0()Ljava/lang/String;
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
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
invoke-virtual {v1, v2, v3, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->notifyListenersInProgress(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;I)V
return-void
.end method
.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->onProgressUpdate([Ljava/lang/Integer;)V
return-void
.end method