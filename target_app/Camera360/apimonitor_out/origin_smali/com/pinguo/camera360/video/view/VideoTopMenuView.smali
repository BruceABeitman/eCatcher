.class public Lcom/pinguo/camera360/video/view/VideoTopMenuView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "VideoTopMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseView;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:I = 0x66

.field private static final ENABLED_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String;

.field public static final mTextColorRes:[Landroid/content/res/ColorStateList;

.field public static final sOtherSettingSwitchImgRes:[I


# instance fields
.field private mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mCloudItemPopView:Landroid/view/View;

.field private mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

.field private mOrientation:I

.field private mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

.field private mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

.field private popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

.field private popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-class v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->TAG:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->sOtherSettingSwitchImgRes:[I

    new-array v0, v1, [Landroid/content/res/ColorStateList;

    sput-object v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

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

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    return-void
.end method

.method private enableFlashMode(Z)V
    .registers 4

    if-eqz p1, :cond_17

    const/16 v0, 0xff

    :goto_4
    iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setAlpha(I)V

    return-void

    :cond_17
    const/16 v0, 0x66

    goto :goto_4
.end method

.method private enableVideoQuality(Z)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0a0613

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0612

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_2a

    iget-object v2, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    sget-object v2, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v2, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v2, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setClickable(Z)V

    sget-object v2, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v2, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_29
.end method

.method private initFlashMode(Landroid/app/Activity;Z)V
    .registers 21

    if-eqz p2, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setEnabled(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->enableFlashMode(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/video/view/VideoTopMenuView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView$1;-><init>(Lcom/pinguo/camera360/video/view/VideoTopMenuView;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_28
    return-void

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "pref_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v9

    check-cast v9, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-eqz v9, :cond_f6

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_f6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->enableFlashMode(Z)V

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->updateFlashMode(I)V

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getIconIds()[I

    move-result-object v13

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_78
    array-length v3, v11

    if-lt v12, v3, :cond_b0

    new-instance v2, Lcom/pinguo/camera360/video/view/VideoTopMenuView$2;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f030048

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "text"

    aput-object v8, v7, v3

    const/4 v3, 0x1

    const-string/jumbo v8, "image"

    aput-object v8, v7, v3

    const/4 v3, 0x2

    new-array v8, v3, [I

    fill-array-data v8, :array_fe

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/pinguo/camera360/video/view/VideoTopMenuView$2;-><init>(Lcom/pinguo/camera360/video/view/VideoTopMenuView;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    invoke-virtual {v3, v2}, Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_28

    :cond_b0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    aget-object v17, v11, v12

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "string"

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v15, v17

    if-eqz v16, :cond_dc

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_dc
    const-string/jumbo v3, "text"

    invoke-virtual {v14, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_f0

    const-string/jumbo v3, "image"

    aget v4, v13, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f0
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_78

    :cond_f6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->enableFlashMode(Z)V

    goto/16 :goto_28

    :array_fe
    .array-data 0x4
        0x70t 0x1t 0xat 0x7ft
        0x6ft 0x1t 0xat 0x7ft
    .end array-data
.end method

.method private initPopupViews()V
    .registers 9

    const/4 v7, 0x5

    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getRight()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v2}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setAncorTopPoint(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setContentTopPoint(Landroid/graphics/Point;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getRight()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setAlign(Z)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setAncorTopPoint(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setContentTopPoint(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateFlashMode(I)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "pref_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

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
    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

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
.method public hideFlashPopMenu()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "pref_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201ce

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    const v3, 0x7f08031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d2

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_39

    :cond_54
    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d6

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_39

    :cond_6e
    const v3, 0x7f08031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201da

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_39
.end method

.method public hideOtherSettingPopMenu()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method public initTopViewListener(Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    return-void
.end method

.method public isMenuBarActivated()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    const/4 v11, -0x1

    invoke-interface {v10, v11, v12}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_128

    :cond_14
    :goto_14
    return-void

    :sswitch_15
    const v9, 0x7f0a0173

    invoke-static {v9}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    iget-object v9, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    if-eqz v9, :cond_24

    iget-object v9, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    invoke-interface {v9, v8, v12}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    :cond_24
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_14

    :sswitch_2b
    const v8, 0x7f0a0175

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    if-eqz v8, :cond_3a

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    invoke-interface {v8, v9, v12}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    :cond_3a
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_14

    :sswitch_41
    const v8, 0x7f0a0176

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->initPopupViews()V

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_56

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    goto :goto_14

    :cond_56
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->showFlashPopMenu()V

    goto :goto_14

    :sswitch_5a
    const v8, 0x7f0a0177

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->initPopupViews()V

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6f

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_14

    :cond_6f
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->showOtherSettingPopMenu()V

    goto :goto_14

    :sswitch_73
    const v10, 0x7f0a060d

    invoke-static {v10}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a4

    move v6, v8

    :goto_86
    iget-object v10, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v10, v6}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    if-eqz v6, :cond_a6

    move v7, v9

    :goto_8e
    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v9, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    const/16 v9, 0x9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto/16 :goto_14

    :cond_a4
    move v6, v9

    goto :goto_86

    :cond_a6
    move v7, v8

    goto :goto_8e

    :sswitch_a8
    const v8, 0x7f0a0611

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v8

    const-string/jumbo v9, "pref_video_quality_key"

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_14

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v8

    array-length v1, v8

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int v8, v0, v1

    invoke-virtual {v2, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    if-eqz v8, :cond_e5

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    const/16 v9, 0xa

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    :cond_e5
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "string"

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object v3, v5

    if-eqz v4, :cond_10b

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_10b
    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v8, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    goto/16 :goto_14

    :sswitch_112
    const v8, 0x7f0a04e6

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayTopBarBtnClick(I)V

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    if-eqz v8, :cond_123

    iget-object v8, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    const/16 v9, 0xb

    invoke-interface {v8, v9, v12}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    :cond_123
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    goto/16 :goto_14

    :sswitch_data_128
    .sparse-switch
        0x7f0a0173 -> :sswitch_15
        0x7f0a0175 -> :sswitch_2b
        0x7f0a0176 -> :sswitch_41
        0x7f0a0177 -> :sswitch_5a
        0x7f0a04e6 -> :sswitch_112
        0x7f0a060d -> :sswitch_73
        0x7f0a0611 -> :sswitch_a8
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 19

    invoke-super/range {p0 .. p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V

    :try_start_3
    sget-object v13, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0700c0

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v15

    aput-object v15, v13, v14

    sget-object v13, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTextColorRes:[Landroid/content/res/ColorStateList;

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0700c1

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v15

    aput-object v15, v13, v14
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_33} :catch_15f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_33} :catch_167

    :goto_33
    const v13, 0x7f0a0173

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v13, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-direct {v13, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v13, 0x7f0a0175

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v13, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-direct {v13, v7}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v13, 0x7f0a0176

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v13, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-direct {v13, v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v13, 0x7f0a0177

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    new-instance v13, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-direct {v13, v6}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Lcom/pinguo/camera360/lib/ui/RotateImageView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v13, 0x7f0a060d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0a060f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const v13, 0x7f0a0610

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    new-instance v13, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-direct {v13, v12, v10, v11}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v13, 0x7f0a0611

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v13, 0x7f0a0613

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v13, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-direct {v13, v8, v9}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    const v13, 0x7f0a04e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v13, 0x7f0a04e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v13, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-direct {v13, v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mAdvanceSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v13, 0x7f0a0179

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const v13, 0x7f0a0178

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const v13, 0x7f0a017b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mListFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarListView;

    const v13, 0x7f0a0174

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mCloudItemPopView:Landroid/view/View;

    return-void

    :catch_15f
    move-exception v4

    sget-object v13, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->TAG:Ljava/lang/String;

    invoke-static {v13, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    :catch_167
    move-exception v4

    sget-object v13, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->TAG:Ljava/lang/String;

    invoke-static {v13, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v9, 0x7f0a0170

    const v8, 0x7f0a016f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "pref_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V

    invoke-direct {p0, p3}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->updateFlashMode(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTopViewListener:Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    :cond_24
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_3d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    return-void

    :cond_3d
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method

.method public setOrientation(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;->setOrientation(IZ)V

    iput p1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOrientation:I

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public showFlashPopMenu()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popFlashMode:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "pref_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201cd

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    const v3, 0x7f08031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d1

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_3b

    :cond_56
    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d5

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_3b

    :cond_70
    const v3, 0x7f08031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mFlashItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    const v4, 0x7f0201d9

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    goto :goto_3b
.end method

.method public showOtherSettingPopMenu()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->popOtherSetting:Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mOtherSettingItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method public update(Landroid/app/Activity;ZZZZ)V
    .registers 15

    if-nez p4, :cond_c

    iget-object v6, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mSwitchCameraItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    :cond_c
    invoke-direct {p0, p1, p5}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->initFlashMode(Landroid/app/Activity;Z)V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v6

    const-string/jumbo v7, "pref_video_quality_key"

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_61

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->enableVideoQuality(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "string"

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object v3, v5

    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_4d
    iget-object v6, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v6, v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    :goto_52
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->updateTimerCamera(Z)V

    :goto_60
    return-void

    :cond_61
    iget-object v6, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mVideoQualityItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801f2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->enableVideoQuality(Z)V

    goto :goto_52

    :cond_76
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->updateTimerCamera(Z)V

    goto :goto_60
.end method

.method public updateCloudPopView(I)V
    .registers 4

    if-lez p1, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mCloudItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mCloudItemPopView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public updateTimerCamera(Z)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setChecked(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->mTimerItem:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    sget-object v2, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->sOtherSettingSwitchImgRes:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setImageResource(I)V

    return-void

    :cond_18
    const/4 v0, 0x1

    goto :goto_e
.end method
