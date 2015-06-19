.class  Lcom/pinguo/camera360/shop/model/ShopDataManager$3;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "ShopDataManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
.field private final synthetic val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field private final synthetic val$signature:Ljava/lang/String;
.field private final synthetic val$url:Ljava/lang/String;
.field private final synthetic val$version:I
.method constructor <init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Ljava/lang/String;Ljava/lang/String;ILcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
.registers 6
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->this$0:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iput-object p2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$url:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$signature:Ljava/lang/String;
iput p4, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$version:I
iput-object p5, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.registers 6
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$url:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$signature:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/effect/model/EffectModel;->updateFrontImage(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_56
invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Update front image success, and put version: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$version:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "  into preference"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getShaderDir()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadResource(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_51
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$version:I
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putFrontImageVersion(I)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
const-string/jumbo v2, "key_front_image_crc32"
iget-object v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$signature:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_51
:cond_51
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
return-object v1
:cond_56
invoke-static {}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->access$0()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "Update front image fail!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_51
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Boolean;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->val$callback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
:cond_d
invoke-super {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->onPostExecute(Ljava/lang/Boolean;)V
return-void
.end method