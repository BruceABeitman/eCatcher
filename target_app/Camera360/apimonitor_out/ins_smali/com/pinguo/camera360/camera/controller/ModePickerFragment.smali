.class public Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "ModePickerFragment.java"
.implements Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
.field private static final REQUEST_CODE_SONY_GUIDE:I = 0x3e8
.field private static final TAG:Ljava/lang/String;
.field private mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
.field private mIsNeedShowModeView:Z
.field private mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
.field private mModePickerResult:Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;
.field private mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
.field private mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mIsNeedShowModeView:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)Lcom/pinguo/camera360/camera/view/ModePickerView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;Ljava/lang/String;IILandroid/view/View;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleModeChangeCompletion(Ljava/lang/String;IILandroid/view/View;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->notifyModeChangeEvent(Ljava/lang/String;)V
return-void
.end method
.method private handleModeChangeCompletion(Ljava/lang/String;IILandroid/view/View;)V
.registers 7
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v1, p4, p2, p3}, Lcom/pinguo/camera360/camera/view/ModePickerView;->hideWithAnimation(Landroid/view/View;II)V
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->clearNewFlagInDB(Ljava/lang/String;)Z
const v1, 0x7f0a0429
invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v1
if-nez v1, :cond_20
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_20
return-void
.end method
.method private notifyModeChangeEvent(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerResult:Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerResult:Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;->onModeChanged(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public changeMode(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;IILandroid/view/View;)V
.registers 15
iget-object v2, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Set render type on item click 111:"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "mode_addnew_item"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_44
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->startCameraStoreActivity(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isShowMoreCameraNewPoint()Z
move-result v0
if-eqz v0, :cond_40
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->hideShowMoreCameraNewPoint()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->notifyDataSetChanged()V
:cond_40
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraEnterCameraStore()V
:goto_43
:cond_43
return-void
:cond_44
const-string/jumbo v0, "Test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Set render type on item click 222:"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "mode_recomendation_item"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_82
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getRecommendAppItem()Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
move-result-object v8
iget-object v0, v8, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;
iget-object v1, v8, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$AppAd;->appAdIconClick(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraApp()V
new-instance v6, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-class v1, Lcom/pinguo/camera360/camera/activity/AdsActivity;
invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v6}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->startActivity(Landroid/content/Intent;)V
goto :goto_43
:cond_82
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_94
invoke-direct {p0, v2, p2, p3, p4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleModeChangeCompletion(Ljava/lang/String;IILandroid/view/View;)V
goto :goto_43
:cond_94
iget-object v0, p1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b3
invoke-direct {p0, v2, p2, p3, p4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleModeChangeCompletion(Ljava/lang/String;IILandroid/view/View;)V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v3, Lcom/pinguo/camera360/sony/SonyGuideActivity;
invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v1, 0x3e8
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_43
:cond_b3
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "changeMode:"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d9
invoke-direct {p0, v2}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->notifyModeChangeEvent(Ljava/lang/String;)V
invoke-direct {p0, v2, p2, p3, p4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleModeChangeCompletion(Ljava/lang/String;IILandroid/view/View;)V
goto/16 :goto_43
:cond_d9
const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f5
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v9
new-instance v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;
move-object v1, p0
move v3, p2
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$3;-><init>(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;Ljava/lang/String;IILandroid/view/View;)V
invoke-static {v9, v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->initDefaultScene(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;)Z
move-result v7
if-nez v7, :cond_43
:cond_f5
invoke-direct {p0, v2, p2, p3, p4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->handleModeChangeCompletion(Ljava/lang/String;IILandroid/view/View;)V
invoke-direct {p0, v2}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->notifyModeChangeEvent(Ljava/lang/String;)V
goto/16 :goto_43
.end method
.method protected createDndPagerdCameraModeAdapter()Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
.registers 4
new-instance v0, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v2, v2, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V
return-object v0
.end method
.method protected createInteractionFactory(Landroid/app/Activity;)Lcom/pinguo/camera360/shop/activity/InteractionFactory;
.registers 3
new-instance v0, Lcom/pinguo/camera360/shop/activity/InteractionFactory;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/shop/activity/InteractionFactory;-><init>(Landroid/app/Activity;)V
return-object v0
.end method
.method protected getModePickerView()Lcom/pinguo/camera360/camera/view/ModePickerView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
return-object v0
.end method
.method public handleHardKeyEvent(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mIsPausing:Z
if-eqz v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getVisibility()I
move-result v2
if-nez v2, :cond_6
const/4 v2, 0x4
if-ne p1, v2, :cond_35
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/ModePickerView;->isEditMode()Z
move-result v2
if-eqz v2, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->stopEditMode()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->updateOriData()V
move v0, v1
goto :goto_6
:cond_26
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/ModePickerView;->isHiding()Z
move-result v2
if-nez v2, :cond_6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->hideWithAnimation()V
move v0, v1
goto :goto_6
:cond_35
const/16 v2, 0x1b
if-eq p1, v2, :cond_41
const/16 v2, 0x19
if-eq p1, v2, :cond_41
const/16 v2, 0x18
if-ne p1, v2, :cond_6
:cond_41
move v0, v1
goto :goto_6
.end method
.method public hide()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setVisibility(I)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/16 v0, 0x3e8
if-ne p1, v0, :cond_20
const/4 v0, -0x1
if-ne p2, v0, :cond_20
const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->notifyModeChangeEvent(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->hide()V
:cond_16
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v0
const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->clearNewFlagInDB(Ljava/lang/String;)Z
:cond_20
invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 7
sget-object v2, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v3, "onAttach"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onAttach(Landroid/app/Activity;)V
:try_start_b
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;
move-object v2, v0
iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerResult:Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;
:try_end_11
.catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_11} :catch_12
return-void
:catch_12
move-exception v1
new-instance v2, Ljava/lang/ClassCastException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, " must implement ModePickerResult"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onCreate"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getInstance()Lcom/pinguo/camera360/adv/AdvertisementModel;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
sget-object v4, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v5, "onCreateView"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const v4, 0x7f03008e
const/4 v5, 0x0
invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/camera/view/ModePickerView;
iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v4, p0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->createDndPagerdCameraModeAdapter()Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->addAll(Ljava/util/Collection;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getCount()I
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getOnePageCount()I
move-result v5
if-ge v4, v5, :cond_95
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getCount()I
move-result v2
:goto_40
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
invoke-virtual {v4}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getRecommendAppItem()Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v4, v2, v3}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->addRecommendationItemToPostion(ILcom/pinguo/camera360/adv/AdvertisementModel$Item;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->addNewItem()V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getBanner()Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v0
new-instance v4, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
const v5, 0x400851ec
invoke-direct {v4, v5}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;-><init>(F)V
iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
const-string/jumbo v5, "b794d9510b54453c87bb3177e170c05a"
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getItems(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->addAll(Ljava/util/Collection;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V
new-instance v4, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$1;-><init>(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v4, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment$2;-><init>(Lcom/pinguo/camera360/camera/controller/ModePickerFragment;)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
sget-object v4, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v5, "onCreateView end"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
return-object v4
:cond_95
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getOnePageCount()I
move-result v4
add-int/lit8 v2, v4, -0x1
goto :goto_40
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDetach()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerResult:Lcom/pinguo/camera360/camera/controller/ModePickerFragment$ModePickerResult;
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDetach()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/UpdateModeIndicatorCountEvent;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->updateIndicatorCount()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/shop/event/CameraProductChangeEvent;)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
move-result-object v0
if-nez v0, :cond_30
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_30
const/4 v3, 0x0
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
iget-object v4, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V
:cond_30
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->clear()V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->addAll(Ljava/util/Collection;)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getCount()I
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getOnePageCount()I
move-result v4
if-ge v3, v4, :cond_68
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getCount()I
move-result v2
:goto_56
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->addRecommendationItemToPostion(I)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->addNewItem()V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
return-void
:cond_68
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->getOnePageCount()I
move-result v3
add-int/lit8 v2, v3, -0x1
goto :goto_56
.end method
.method public onGridItemClick(IIILandroid/view/View;)V
.registers 12
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/ModePickerView;->isEditMode()Z
move-result v4
if-eqz v4, :cond_e
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/ModePickerView;->stopEditMode()V
:cond_d
:goto_d
return-void
:cond_e
invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
iget-object v4, v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
const-string/jumbo v5, "mode_addnew_item"
if-eq v4, v5, :cond_33
iget-object v4, v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
const-string/jumbo v5, "mode_recomendation_item"
if-eq v4, v5, :cond_33
invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
const/4 v1, 0x0
:goto_29
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v4
if-lt v1, v4, :cond_5f
const/4 v4, 0x1
invoke-virtual {p4, v4}, Landroid/view/View;->setSelected(Z)V
:cond_33
if-eqz v2, :cond_d
iget-object v3, v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
const-string/jumbo v4, "Test"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Set render type on item click:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraModeSelect(Ljava/lang/String;)V
invoke-virtual {p0, v2, p2, p3, p4}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->changeMode(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;IILandroid/view/View;)V
goto :goto_d
:cond_5f
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_29
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPause"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getBanner()Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getBanner()Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setAutoScroll(Z)V
:cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->isEditMode()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->stopEditMode()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->updateOriData()V
:cond_2c
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPause end"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onResume"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getBanner()Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getBanner()Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/BannerView;->setAutoScroll(Z)V
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getVisibility()I
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->refreshRecommendAppIcon(Z)V
:cond_30
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mIsNeedShowModeView:Z
if-eqz v0, :cond_3a
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mIsNeedShowModeView:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->showModePickerFragment()V
:cond_3a
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onResume end"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ModePickerFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public refreshModePickerView()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
return-void
.end method
.method public refreshRecommendAppIcon(Z)V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
if-eqz v2, :cond_28
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
if-eqz v2, :cond_28
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getRecommendAppItem()Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->refreshRecommendationItemIfAdded(Lcom/pinguo/camera360/adv/AdvertisementModel$Item;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v2, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;
iget-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$AppAd;->appAdIconShow(Ljava/lang/String;Ljava/lang/String;)V
:cond_1d
if-eqz v0, :cond_28
if-eqz p1, :cond_28
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v2, v2, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->notifyDataSetChanged()V
:cond_28
return-void
.end method
.method public setOrientation(IZ)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseFragment;->setOrientation(IZ)V
return-void
.end method
.method public showModePickerFragment()V
.registers 4
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "showModePickerFragment mIsPausing ="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mIsPausing:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mIsPausing:Z
if-eqz v0, :cond_1f
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mIsNeedShowModeView:Z
:goto_1e
return-void
:cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getVisibility()I
move-result v0
if-nez v0, :cond_34
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "showModePickerFragment already show picker fragment"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1e
:cond_34
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
if-eqz v0, :cond_63
sget-object v0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "showModePickerFragment mModePickerView ="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getVisibility()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->refreshRecommendAppIcon(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModeAdapter:Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->showWithAnimation()V
:cond_63
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel;->update()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->clear()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
const-string/jumbo v2, "b794d9510b54453c87bb3177e170c05a"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getItems(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->addAll(Ljava/util/Collection;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mModePickerView:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getBanner()Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V
goto :goto_1e
.end method