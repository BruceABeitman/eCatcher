.class  Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;
.super Ljava/lang/Object;
.source "CameraModeItemAdapter.java"
.implements Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;
.field private final synthetic val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onInstalledClick(Landroid/view/View;)V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
const-string/jumbo v3, "7b3b6b04486f12d95690f533f5253a74"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_20
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
check-cast v0, Landroid/app/Activity;
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/pinguo/camera360/sony/SonyGuideActivity;
invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v2, 0x3e8
invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:goto_1f
return-void
:cond_20
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->clearNewFlagInDB(Ljava/lang/String;)Z
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v3, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v2, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityFromStore(Landroid/content/Context;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeModeLayOpen(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public onInstallingClick(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public onUninstallClick(Landroid/view/View;)V
.registers 11
const/4 v2, 0x3
invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I
move-result v8
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->sdkMin:I
if-lt v8, v0, :cond_1d
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraModeTable;->canInstallCameraMode(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_34
:cond_1d
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f0801e0
const v2, 0x7f080184
const v3, 0x7f0802fd
new-instance v4, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1$1;
invoke-direct {v4, p0, p1}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1$1;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;Landroid/view/View;)V
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
:goto_33
return-void
:cond_34
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->canNotUseIDCamera()Z
move-result v0
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
const v0, 0x7f08018e
const/16 v1, 0xbb8
const/4 v2, 0x0
invoke-static {v0, p1, v1, v2}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/view/View;II)V
goto :goto_33
:cond_51
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iput v2, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
instance-of v0, p1, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
if-eqz v0, :cond_68
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setState(I)V
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setText(Ljava/lang/CharSequence;)V
:cond_68
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->INSTALLING_TAG:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->access$2(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/view/ViewGroup;
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->mCallbackMap:Ljava/util/Map;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->access$1(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;)Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_bf
new-instance v6, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ShopCallback;
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {v6, v0, v1, v7}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$ShopCallback;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/ViewGroup;)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->mCallbackMap:Ljava/util/Map;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;->access$1(Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;)Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;
invoke-virtual {v0, v1, v2, v6}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
:cond_bf
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
goto/16 :goto_33
.end method