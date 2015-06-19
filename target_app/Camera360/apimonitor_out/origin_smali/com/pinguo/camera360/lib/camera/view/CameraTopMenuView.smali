.class public Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "CameraTopMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseView;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
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

.field public static final SHAKE_ITEM:I = 0x3

.field public static final SOUND_ITEM:I = 0x1

.field public static final SWITCH_ITEM:I = 0x8

.field private static final TAG:Ljava/lang/String; = null

.field public static final TIMER_ITEM:I = 0x2

.field public static final TOUCH_SHOT_ITEM:I

.field public static final mTextColorRes:[Landroid/content/res/ColorStateList;

.field public static final sOtherSettingSwitchImgRes:[I


# instance fields
.field private mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mCloudItemPopView:Landroid/view/View;

.field private mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

.field private mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mIsForceDisableFocusModeFunction:Z

.field private mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

.field private mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

.field private popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-class v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->TAG:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    new-array v0, v1, [Landroid/content/res/ColorStateList;

    sput-object v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

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

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mIsForceDisableFocusModeFunction:Z

    return-void
.end method

.method private initPopupViews()V
    .registers 9

    const/4 v7, 0x5

    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getRight()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setAncorTopPoint(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setContentTopPoint(Landroid/graphics/Point;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getRight()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setAlign(Z)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setAncorTopPoint(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setContentTopPoint(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateFlashMode(I)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "key_camera_flashmode"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getIconIds()[I

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v3, -0x1

    if-ne v3, p1, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getIconIds()[I

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_29
    aget v3, v1, p1

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_16

    :cond_2f
    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v3, v1, p1

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_16
.end method


# virtual methods
.method public disableSwithCameraView()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setEnabled(Z)V

    return-void
.end method

.method public enableFlashMode(Z)V
    .registers 4

    if-eqz p1, :cond_17

    const/16 v0, 0xff

    :goto_4
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setAlpha(I)V

    return-void

    :cond_17
    const/16 v0, 0x66

    goto :goto_4
.end method

.method public enableFocusMode(Z)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mIsForceDisableFocusModeFunction:Z

    if-eqz v2, :cond_7

    const/4 p1, 0x0

    :cond_7
    const v2, 0x7f0a04e5

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a04e4

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_2f

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2e
.end method

.method public enableTimerCamera(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v5, 0x7f0a04dc

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_21

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const/high16 v2, 0x42cc

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setAlpha(F)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const/high16 v2, 0x437f

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setAlpha(F)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_20
.end method

.method public enablemAvoidShake(Z)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v5, 0x7f0a04e0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_21

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const/high16 v2, 0x42cc

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setAlpha(F)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const/high16 v2, 0x437f

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setAlpha(F)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_20
.end method

.method public getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;
    .registers 3

    packed-switch p1, :pswitch_data_4c

    :cond_3
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_c
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_13
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_1a
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_21
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_28
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_2f
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_36
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_3d
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    :pswitch_44
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    goto :goto_4

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_c
        :pswitch_13
        :pswitch_1a
        :pswitch_3
        :pswitch_21
        :pswitch_28
        :pswitch_2f
        :pswitch_36
        :pswitch_3d
        :pswitch_44
    .end packed-switch
.end method

.method public hideAll()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V

    return-void
.end method

.method public hideFlashPopMenu()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    :cond_f
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onMenuBarActivated(Z)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "key_camera_flashmode"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201ce

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    const v3, 0x7f08031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d2

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_47

    :cond_62
    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d6

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_47

    :cond_7c
    const v3, 0x7f08031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201da

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_47
.end method

.method public hideOtherSettingPopMenu()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onMenuBarActivated(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method public initFlashMode()V
    .registers 18

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v2

    const-string/jumbo v3, "key_camera_flashmode"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v13

    check-cast v13, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-eqz v13, :cond_10b

    invoke-virtual {v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_10b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setEnabled(Z)V

    invoke-virtual {v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateFlashMode(I)V

    invoke-virtual {v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_92
    array-length v2, v9

    if-lt v11, v2, :cond_c9

    new-instance v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$1;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f030048

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v7, "text"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string/jumbo v7, "image"

    aput-object v7, v6, v2

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_118

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$1;-><init>(Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_c8
    return-void

    :cond_c9
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    aget-object v16, v9, v11

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v14, v16

    if-eqz v15, :cond_f3

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_f3
    const-string/jumbo v2, "text"

    invoke-virtual {v12, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_105

    const-string/jumbo v2, "image"

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_105
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_92

    :cond_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_c8

    :array_118
    .array-data 0x4
        0x70t 0x1t 0xat 0x7ft
        0x6ft 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public isMenuBarActivated()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-interface {v8}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onTopMenuClick()V

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_1e6

    :cond_12
    :goto_12
    return-void

    :sswitch_13
    const v8, 0x7f0a0173

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-interface {v8}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onCloudHomeClick()V

    goto :goto_12

    :sswitch_23
    const v8, 0x7f0a0175

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-interface {v8}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onSwitchCameraClick()V

    goto :goto_12

    :sswitch_33
    const v8, 0x7f0a0176

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->initPopupViews()V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_48

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V

    goto :goto_12

    :cond_48
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->showFlashPopMenu()V

    goto :goto_12

    :sswitch_4c
    const v8, 0x7f0a0177

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-interface {v8}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onAdvanceClick()V

    goto :goto_12

    :cond_6d
    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->initPopupViews()V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7c

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_12

    :cond_7c
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->showOtherSettingPopMenu()V

    goto :goto_12

    :sswitch_80
    const v8, 0x7f0a04d5

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v11, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b7

    move v8, v9

    :goto_95
    invoke-virtual {v11, v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-nez v8, :cond_b9

    move v7, v9

    :goto_a1
    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v9, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onTouchShotSwitch(Z)V

    goto/16 :goto_12

    :cond_b7
    move v8, v10

    goto :goto_95

    :cond_b9
    move v7, v10

    goto :goto_a1

    :sswitch_bb
    const v8, 0x7f0a04d8

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v11, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_f2

    move v8, v9

    :goto_d0
    invoke-virtual {v11, v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-nez v8, :cond_f4

    move v7, v9

    :goto_dc
    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v9, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onCameraSoundSwitch(Z)V

    goto/16 :goto_12

    :cond_f2
    move v8, v10

    goto :goto_d0

    :cond_f4
    move v7, v10

    goto :goto_dc

    :sswitch_f6
    const v8, 0x7f0a04db

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v11, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_12d

    move v8, v9

    :goto_10b
    invoke-virtual {v11, v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-nez v8, :cond_12f

    move v7, v9

    :goto_117
    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v9, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onCameraTimerSwitch(Z)V

    goto/16 :goto_12

    :cond_12d
    move v8, v10

    goto :goto_10b

    :cond_12f
    move v7, v10

    goto :goto_117

    :sswitch_131
    const v8, 0x7f0a04df

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v11, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_168

    move v8, v9

    :goto_146
    invoke-virtual {v11, v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v8

    if-nez v8, :cond_16a

    move v7, v9

    :goto_152
    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v9, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    iget-object v9, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onAvoidShakeSwitch(Z)V

    goto/16 :goto_12

    :cond_168
    move v8, v10

    goto :goto_146

    :cond_16a
    move v7, v10

    goto :goto_152

    :sswitch_16c
    const v8, 0x7f0a04e3

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v8

    const-string/jumbo v9, "key_camera_focusmode"

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_12

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v8

    array-length v2, v8

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int v8, v1, v2

    invoke-virtual {v3, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_1a7

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onFocusModeChange(Ljava/lang/String;)V

    :cond_1a7
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "string"

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v4, v6

    if-eqz v5, :cond_1cd

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1cd
    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8, v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    :sswitch_1d4
    const v8, 0x7f0a04e6

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-interface {v8}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onAdvanceClick()V

    goto/16 :goto_12

    nop

    :sswitch_data_1e6
    .sparse-switch
        0x7f0a0173 -> :sswitch_13
        0x7f0a0175 -> :sswitch_23
        0x7f0a0176 -> :sswitch_33
        0x7f0a0177 -> :sswitch_4c
        0x7f0a04d5 -> :sswitch_80
        0x7f0a04d8 -> :sswitch_bb
        0x7f0a04db -> :sswitch_f6
        0x7f0a04df -> :sswitch_131
        0x7f0a04e3 -> :sswitch_16c
        0x7f0a04e6 -> :sswitch_1d4
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 31

    invoke-super/range {p0 .. p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V

    :try_start_3
    sget-object v25, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0700c0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v27

    aput-object v27, v25, v26

    sget-object v25, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/16 v26, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0700c1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v27

    aput-object v27, v25, v26
    :try_end_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_35} :catch_299
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_35} :catch_2a5

    :goto_35
    const v25, 0x7f0a0174

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const v25, 0x7f0a0173

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a0175

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a0176

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a0177

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a04d5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0a04d6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    const v25, 0x7f0a04d7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a04d8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v25, 0x7f0a04d9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    const v25, 0x7f0a04da

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    invoke-direct {v0, v11, v9, v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a04db

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v25, 0x7f0a04dd

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    const v25, 0x7f0a04de

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    invoke-direct {v0, v14, v12, v13}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a04df

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v25, 0x7f0a04e1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const v25, 0x7f0a04e2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    invoke-direct {v0, v8, v6, v7}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a04e3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v25, 0x7f0a04e5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v25, 0x7f0a04e6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v25, 0x7f0a04e7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v25, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v25, 0x7f0a0179

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const v25, 0x7f0a0178

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const v25, 0x7f0a017b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    return-void

    :catch_299
    move-exception v16

    sget-object v25, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    :catch_2a5
    move-exception v16

    sget-object v25, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v8, 0x7f0a0170

    const v7, 0x7f0a016f

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "key_camera_flashmode"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V

    invoke-direct {p0, p3}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateFlashMode(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-interface {v3}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onFlashModeClick()V

    :cond_22
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V

    const/4 v0, 0x0

    :goto_26
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_3b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    return-void

    :cond_3b
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public setController(Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    return-void
.end method

.method public setIsForceDisableFocusModeFunction(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mIsForceDisableFocusModeFunction:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public showFlashPopMenu()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideOtherSettingPopMenu()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onMenuBarActivated(Z)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "key_camera_flashmode"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201cd

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    const v3, 0x7f08031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d1

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_41

    :cond_5c
    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d5

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_41

    :cond_76
    const v3, 0x7f08031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d9

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_41
.end method

.method public showOtherSettingPopMenu()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onMenuBarActivated(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method public updateAvoidShake(Z)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_8
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mShakeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public updateCloudPopView(I)V
    .registers 4

    if-lez p1, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public updateSoundState(Z)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez p1, :cond_14

    :cond_a
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_15

    if-nez p1, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3c

    const/4 v0, 0x0

    :goto_23
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSoundItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->onCameraSoundSwitch(Z)V

    goto :goto_14

    :cond_3c
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public updateTimerCamera(Z)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_8
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public updateView()V
    .registers 9

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    if-eqz v5, :cond_71

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mController:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;

    invoke-interface {v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView$ICameraMenuBarView;->couldSwitchCamera()Z

    move-result v5

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    :goto_17
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->initFlashMode()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z

    move-result v5

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mTouchShotItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v6, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    :cond_32
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v5

    const-string/jumbo v6, "key_camera_focusmode"

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_71

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v2, v4

    if-eqz v3, :cond_6c

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_6c
    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mFocusModeItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    :cond_71
    return-void

    :cond_72
    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    goto :goto_17
.end method
