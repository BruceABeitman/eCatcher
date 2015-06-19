.class public Lcom/pinguo/camera360/sony/view/SonyTopMenuView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "SonyTopMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;
    }
.end annotation


# static fields
.field public static final ADVANCE_SETTING_ITEM:I = 0x6

.field public static final CLOUD_ITEM:I = 0x7

.field private static final DISABLED_ALPHA:I = 0x66

.field private static final ENABLED_ALPHA:I = 0xff

.field public static final EXPOSURE_ITEM:I = 0x4

.field public static final FLASH_ITEM:I = 0x9

.field public static final FOCUS_MODE_ITEM:I = 0x5

.field public static final OTHER_SETTING_ITEM:I = 0xa

.field public static final POST_VIEW_SIZE:I = 0xc

.field public static final SHAKE_ITEM:I = 0x3

.field public static final SHOOT_MODE:I = 0xb

.field public static final SOUND_ITEM:I = 0x1

.field public static final SWITCH_ITEM:I = 0x8

.field private static final TAG:Ljava/lang/String; = null

.field public static final TIMER_ITEM:I = 0x2

.field public static final TOUCH_SHOT_ITEM:I

.field public static final mTextColorRes:[Landroid/content/res/ColorStateList;

.field public static final sOtherSettingSwitchImgRes:[I


# instance fields
.field private mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mCloudItemPopView:Landroid/view/View;

.field private mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

.field private mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mPostViewSizeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mShootModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-class v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->TAG:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->sOtherSettingSwitchImgRes:[I

    new-array v0, v1, [Landroid/content/res/ColorStateList;

    sput-object v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    return-void

    nop

    :array_16
    .array-data 0x4
        0x27t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    return-void
.end method

.method private initPopupViews()V
    .registers 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getRight()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setAncorTopPoint(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setContentTopPoint(Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
    .registers 3

    packed-switch p1, :pswitch_data_22

    :cond_3
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_c
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_13
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mShootModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mShootModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_1a
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mPostViewSizeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mPostViewSizeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_13
        :pswitch_1a
    .end packed-switch
.end method

.method public hideOtherSettingPopMenu()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onMenuBarActivated(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method public isMenuBarActivated()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 16

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    invoke-interface {v10}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onTopMenuClick()V

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_126

    :cond_12
    :goto_12
    return-void

    :sswitch_13
    invoke-direct {p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->initPopupViews()V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v10}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_22

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_12

    :cond_22
    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->showOtherSettingPopMenu()V

    goto :goto_12

    :sswitch_26
    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    invoke-interface {v10}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onCloudHomeClick()V

    goto :goto_12

    :sswitch_30
    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    if-eqz v10, :cond_12

    iget-object v13, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_60

    move v10, v11

    :goto_3f
    invoke-virtual {v13, v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v10

    if-nez v10, :cond_62

    move v9, v11

    :goto_4b
    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v11, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v11, v11, v9

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    iget-object v11, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onTouchShotSwitch(Z)V

    goto :goto_12

    :cond_60
    move v10, v12

    goto :goto_3f

    :cond_62
    move v9, v12

    goto :goto_4b

    :sswitch_64
    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v10

    const-string/jumbo v11, "shoot-mode"

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v10

    const-string/jumbo v11, "shoot-mode-values"

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getSupportShoot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    if-eqz v7, :cond_12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int v10, v0, v5

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mShootModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    invoke-interface {v10, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onShootModeChange(Ljava/lang/String;)V

    goto/16 :goto_12

    :sswitch_aa
    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    if-eqz v10, :cond_12

    iget-object v13, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_db

    move v10, v11

    :goto_b9
    invoke-virtual {v13, v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v10

    if-nez v10, :cond_dd

    move v9, v11

    :goto_c5
    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v11, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v11, v11, v9

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    iget-object v11, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onCameraTimerSwitch(Z)V

    goto/16 :goto_12

    :cond_db
    move v10, v12

    goto :goto_b9

    :cond_dd
    move v9, v12

    goto :goto_c5

    :sswitch_df
    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v10

    const-string/jumbo v11, "still-size"

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v10

    const-string/jumbo v11, "still-size-values"

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getSupportStillSize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v8, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int v10, v0, v3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mPostViewSizeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    invoke-interface {v10, v6, v2}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onTopBarPostViewSizeChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    nop

    :sswitch_data_126
    .sparse-switch
        0x7f0a057e -> :sswitch_26
        0x7f0a0582 -> :sswitch_13
        0x7f0a058c -> :sswitch_30
        0x7f0a058f -> :sswitch_df
        0x7f0a0592 -> :sswitch_aa
        0x7f0a0596 -> :sswitch_64
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 23

    invoke-super/range {p0 .. p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V

    :try_start_3
    sget-object v17, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0700c0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v19

    aput-object v19, v17, v18

    sget-object v17, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0700c1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v19

    aput-object v19, v17, v18

    sget-object v17, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v18, 0x0

    sget-object v19, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aput-object v19, v17, v18

    sget-object v17, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v18, 0x1

    sget-object v19, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aput-object v19, v17, v18
    :try_end_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_4d} :catch_208
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_4d} :catch_212

    :goto_4d
    const v17, 0x7f0a057f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const v17, 0x7f0a057e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v17, 0x7f0a0580

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v17, 0x7f0a0581

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v17, 0x7f0a0582

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v17, 0x7f0a058c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f0a058d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    const v17, 0x7f0a058e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v15}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v17, 0x7f0a0596

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v17, 0x7f0a0598

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v11, v12}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mShootModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v17, 0x7f0a0592

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v17, 0x7f0a0594

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v17, 0x7f0a0595

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v2, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v17, 0x7f0a058f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v17, 0x7f0a0591

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v17, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v9, v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mPostViewSizeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mShootModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mPostViewSizeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setEnabled(Z)V

    const v17, 0x7f0a0583

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    return-void

    :catch_208
    move-exception v6

    sget-object v17, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    :catch_212
    move-exception v6

    sget-object v17, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d
.end method

.method public setController(Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public showOtherSettingPopMenu()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;->onMenuBarActivated(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method public updateCloudPopView(I)V
    .registers 4

    if-lez p1, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public updateTimerCamera(Z)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_8
    iget-object v1, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v2, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public updateView()V
    .registers 8

    iget-object v4, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mController:Lcom/pinguo/camera360/sony/view/SonyTopMenuView$ICameraMenuBarView;

    if-eqz v4, :cond_37

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    if-eqz v3, :cond_38

    iget-object v4, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v5, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->sOtherSettingSwitchImgRes:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    :goto_21
    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v4

    const-string/jumbo v5, "still-size"

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mPostViewSizeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    :cond_37
    return-void

    :cond_38
    iget-object v4, p0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v5, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->sOtherSettingSwitchImgRes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    goto :goto_21
.end method
