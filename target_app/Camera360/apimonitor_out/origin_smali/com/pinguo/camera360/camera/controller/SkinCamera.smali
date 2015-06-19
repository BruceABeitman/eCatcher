.class Lcom/pinguo/camera360/camera/controller/SkinCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "SkinCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrightness:F

.field private mFillFlashView:Landroid/view/View;

.field private mFillInLightBtn:Landroid/widget/ImageView;

.field private mOwner:Landroid/app/Activity;

.field private mRotateGuideView:Lcom/pinguo/camera360/lib/ui/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/controller/SkinCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V

    sget-object v0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SkinCamera"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOwner:Landroid/app/Activity;

    return-void
.end method

.method private hideFillFlash(F)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOwner:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOwner:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillFlashView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setFillInLightUI(IZ)V
    .registers 5

    const/16 v1, 0x5dc

    packed-switch p1, :pswitch_data_2c

    if-eqz p2, :cond_d

    const v0, 0x7f08027f

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->showToast(II)V

    :cond_d
    :goto_d
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->setFillInLightBtn(I)V

    return-void

    :pswitch_11
    if-eqz p2, :cond_d

    const v0, 0x7f080280

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->showToast(II)V

    goto :goto_d

    :pswitch_1a
    if-eqz p2, :cond_d

    const v0, 0x7f080281

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->showToast(II)V

    goto :goto_d

    :pswitch_23
    if-eqz p2, :cond_d

    const v0, 0x7f080282

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->showToast(II)V

    goto :goto_d

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_11
        :pswitch_23
    .end packed-switch
.end method

.method private showFillFlash()V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I

    move-result v1

    invoke-static {v1}, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->posToColor(I)I

    move-result v0

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOwner:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOwner:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillFlashView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillFlashView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public hideFillInLightBtn()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public onEffectTypeChange(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public onModeFunctionClick()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->nextPosition(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->setFillInLightUI(IZ)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFillInLightIndex(I)V

    :cond_1b
    return-void
.end method

.method public onPause()V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPause()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2c

    move v0, v1

    :goto_10
    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraFacing()I

    move-result v2

    if-ne v2, v1, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillFlashView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2b

    iget v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mBrightness:F

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->hideFillFlash(F)V

    :cond_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
    .registers 10

    const/4 v1, 0x1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_24

    move v0, v1

    :goto_d
    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraFacing()I

    move-result v2

    if-ne v2, v1, :cond_20

    iget v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mBrightness:F

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->hideFillFlash(F)V

    :cond_20
    invoke-super/range {p0 .. p5}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->showFillInLightBtn()V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->hideFillInLightBtn()V

    goto :goto_e
.end method

.method public onShutter()V
    .registers 1

    return-void
.end method

.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    const v2, 0x7f0a0548

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillFlashView:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->getCameraNumber()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_27

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->hideFillInLightBtn()V

    :goto_26
    return-void

    :cond_27
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->setFillInLightBtn(I)V

    goto :goto_26
.end method

.method public onStop()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->hideFillInLightBtn()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V

    return-void
.end method

.method public onSwitchCamera(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->showFillInLightBtn()V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->hideFillInLightBtn()V

    goto :goto_5
.end method

.method public preTakePicture()V
    .registers 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFillInLightIndex()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2d

    move v0, v1

    :goto_d
    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraFacing()I

    move-result v2

    if-ne v2, v1, :cond_2f

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOwner:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mBrightness:F

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/SkinCamera;->showFillFlash()V

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_d

    :cond_2f
    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->preTakePicture()V

    goto :goto_2c
.end method

.method public setFillInLightBtn(I)V
    .registers 5

    packed-switch p1, :pswitch_data_22

    const v0, 0x7f02011f

    :goto_6
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    return-void

    :pswitch_16
    const v0, 0x7f02011e

    goto :goto_6

    :pswitch_1a
    const v0, 0x7f020120

    goto :goto_6

    :pswitch_1e
    const v0, 0x7f020121

    goto :goto_6

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

.method public showFillInLightBtn()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mFillInLightBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public showToast(II)V
    .registers 6

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOwner:Landroid/app/Activity;

    iget v2, p0, Lcom/pinguo/camera360/camera/controller/SkinCamera;->mOrientation:I

    invoke-direct {v0, v1, p1, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    return-void
.end method
