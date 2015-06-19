.class public Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;
.super LvStudio/Android/Camera360/activity/CameraActivity;
.source "IntentCameraActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentCameraActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LvStudio/Android/Camera360/activity/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createEffectSelectFragment()Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;
    .registers 3

    const-string/jumbo v0, "IntentCameraActivity"

    const-string/jumbo v1, "createEffectSelectFragment"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;-><init>()V

    return-object v0
.end method

.method public createModePickerFragment()Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentModePickerFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IntentModePickerFragment;-><init>()V

    return-object v0
.end method

.method public createPGCameraFragment()Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;-><init>()V

    return-object v0
.end method

.method public createPicturePreviewFragment()Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    .registers 3

    const-string/jumbo v0, "IntentCameraActivity"

    const-string/jumbo v1, "createPicturePreviewFragment"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;-><init>()V

    return-object v0
.end method

.method public getAdsPath()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->mIsShowPartnerAd:Z

    invoke-super {p0, p1}, LvStudio/Android/Camera360/activity/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "IntentCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-void
.end method

.method public onCreateCameraOrVideoFragment(Landroid/support/v4/app/FragmentTransaction;)V
    .registers 9

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string/jumbo v4, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string/jumbo v4, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    :cond_23
    invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5d

    :goto_36
    if-nez v3, :cond_3b

    const-string/jumbo v3, "c205e3582b514d6fb5c21a953e1e901e"

    :cond_3b
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V

    :cond_42
    iget-object v4, p0, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->mVideoFragment:Lcom/pinguo/camera360/video/PGVideoFragment;

    :cond_4e
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->createPGCameraFragment()Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const v4, 0x7f0a02d8

    iget-object v5, p0, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;->mCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {p1, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void

    :cond_5d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    const-string/jumbo v5, "c205e3582b514d6fb5c21a953e1e901e"

    iget-object v6, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    iget-object v3, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    goto :goto_36

    :cond_71
    if-nez v3, :cond_30

    const-string/jumbo v5, "5d5bf5c848d112287903b26d5f388eaa"

    iget-object v6, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string/jumbo v5, "f4ab1ced32e2092c35bfa10cae9e836c"

    iget-object v6, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string/jumbo v5, "e46227d3cf94f4bbab8edb68d0c8d68e"

    iget-object v6, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    iget-object v3, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    goto :goto_30
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, LvStudio/Android/Camera360/activity/CameraActivity;->onDestroy()V

    const-string/jumbo v0, "IntentCameraActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, LvStudio/Android/Camera360/activity/CameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected shouldShowGradeDialogInThisVersion(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
