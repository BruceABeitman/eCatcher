.class public Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;
.super Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
.source "IntentPicturePreviewFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentPicturePreviewFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;-><init>()V

    return-void
.end method

.method private saveAndFinish(Landroid/graphics/Bitmap;)V
    .registers 11

    const-string/jumbo v0, "IntentPicturePreviewFragment"

    const-string/jumbo v1, "saveAndFinish"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/camera/activity/IntentCameraActivity;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->createCaptureIntentManager()Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->setIntentBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->makeResult()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getPicturePreviewModel()Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getCurPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getCurPictureData()[B

    move-result-object v3

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->save(Landroid/content/Context;Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V

    const-string/jumbo v0, "IntentPicturePreviewFragment"

    const-string/jumbo v1, "clear the picture data"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->recycleCurPictureData()V
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_3a} :catch_42

    :goto_3a
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :catch_42
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_3a
.end method


# virtual methods
.method protected createCaptureIntentManager()Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v1, "IntentPicturePreviewFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->enableSharing(Z)V

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->enablePictureAdjustment(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->getSaveButton()Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0802c9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    return-object v0
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "IntentPicturePreviewFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;-><init>()V

    invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->onResume()V

    const-string/jumbo v0, "IntentPicturePreviewFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;-><init>()V

    invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    return-void
.end method

.method public save(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6

    const-string/jumbo v1, "IntentPicturePreviewFragment"

    const-string/jumbo v2, "use"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->saveAndFinish(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->setFromTag(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public showPicturePreviewFragment(Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;)V
    .registers 4

    const-string/jumbo v0, "IntentPicturePreviewFragment"

    const-string/jumbo v1, "onEvent ShowPicturePreviewEvent"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->showPicturePreviewFragment(Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getPicturePreviewView()Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideSubPreviewImage()V

    :cond_24
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;->getPicturePreviewView()Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->enableSharing(Z)V

    return-void
.end method
