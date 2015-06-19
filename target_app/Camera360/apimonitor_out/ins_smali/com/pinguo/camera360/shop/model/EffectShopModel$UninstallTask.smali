.class  Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "EffectShopModel.java"
.field private mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
.method private constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;)V
return-void
.end method
.method protected varargs doInBackground([Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
.registers 4
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
#calls: Lcom/pinguo/camera360/shop/model/EffectShopModel;->doUninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$2(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->doInBackground([Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
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
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v0
if-eqz v0, :cond_26
const/4 v1, 0x0
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
:cond_26
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->uninstall:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
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
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->onPostExecute(Ljava/lang/Boolean;)V
return-void
.end method