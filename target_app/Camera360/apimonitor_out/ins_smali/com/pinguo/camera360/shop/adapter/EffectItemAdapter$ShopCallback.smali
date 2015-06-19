.class  Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
.field private mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
.field private mParentView:Landroid/view/ViewGroup;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
.method public constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/ViewGroup;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iput-object p3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mParentView:Landroid/view/ViewGroup;
return-void
.end method
.method public onPostExecute(Z)V
.registers 6
const/4 v3, 0x0
if-eqz p1, :cond_72
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectLayInstall(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isNeedShowUninstallHintToastEffect()Z
move-result v0
if-eqz v0, :cond_25
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNeedShowUninstallHintToastEffect(Z)V
const v0, 0x7f080249
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mParentView:Landroid/view/ViewGroup;
const/16 v2, 0x5dc
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/view/View;II)V
:goto_25
:cond_25
invoke-static {}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$0()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Effect install finish result:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ",product key:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->notifyDataSetChanged()V
invoke-static {}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$0()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Effect install mCallbackMap size:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
#getter for: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->mCallbackMap:Ljava/util/Map;
invoke-static {v2}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$1(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)Ljava/util/Map;
move-result-object v2
invoke-interface {v2}, Ljava/util/Map;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_72
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
const/4 v1, 0x4
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iput v3, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installProgress:I
goto :goto_25
.end method
.method public onProgress(I)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$0()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Effect install onProgress:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iput p1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->installProgress:I
iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mParentView:Landroid/view/ViewGroup;
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->mItemProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$ShopCallback;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;
#getter for: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->INSTALLING_TAG:Ljava/lang/String;
invoke-static {v3}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$2(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
if-eqz v0, :cond_43
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setProgress(I)V
:cond_43
return-void
.end method