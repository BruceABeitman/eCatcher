.class  Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "EffectShopModel.java"
.field private mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
.method private constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;)V
return-void
.end method
.method protected varargs doInBackground([Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
aget-object v2, p1, v5
iput-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getTryEffectsByProductKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_29
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_29
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$0()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "Product has been try installed, does not do actually install"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
:goto_28
return-object v2
:cond_29
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
#getter for: Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;
invoke-static {v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$1(Lcom/pinguo/camera360/shop/model/EffectShopModel;)Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
move-result v1
if-nez v1, :cond_47
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$0()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "Effect model try install fail!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_28
:cond_47
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_28
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->doInBackground([Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Boolean;)V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->access$0()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Result: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->this$0:Lcom/pinguo/camera360/shop/model/EffectShopModel;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->mEffectPackage:Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->installTry:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
invoke-virtual {v0, v1, v2, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->notifyListenersOnFinish(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Ljava/lang/Boolean;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->onPostExecute(Ljava/lang/Boolean;)V
return-void
.end method