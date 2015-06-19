.class public Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "SubEffectSelectView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

.field private mEasyCameraSwitchViews:Landroid/view/ViewGroup;

.field private mEffectIndicatorContainer:Landroid/view/View;

.field private mEffectIndicatorContainerAnim:Landroid/view/View;

.field private mEffectIndicatorHolder:Landroid/view/View;

.field private mEffectIndicatorIcon:Landroid/widget/ImageView;

.field private mEffectTextIndicator:Landroid/widget/TextView;

.field private mEnterGuideIndicator:Landroid/widget/ImageView;

.field private mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mItemCountPerScreen:I

.field private mLayChildEffect:Landroid/widget/RelativeLayout;

.field private mLayChildEffectAndTitle:Landroid/view/View;

.field private mSoundIndicatorIcon:Landroid/widget/ImageView;

.field private mSubEffectView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->moveToCurrentItem()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffectAndTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private moveToCurrentItem()V
    .registers 14

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    if-nez v9, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->getCount()I

    move-result v6

    const/4 v9, 0x1

    if-le v6, v9, :cond_5

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaydensity()F

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b006d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v9, 0x4120

    mul-float/2addr v9, v0

    float-to-int v4, v9

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mItemCountPerScreen:I

    int-to-float v10, v10

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    int-to-float v11, v3

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mItemCountPerScreen:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-int/lit8 v10, v6, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v7, v9

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->getSelectEffectIndex()I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    mul-int/2addr v9, v3

    add-int/2addr v9, v4

    mul-int v10, v2, v7

    add-int/lit8 v11, v6, -0x1

    div-int/2addr v10, v11

    add-int/2addr v9, v10

    div-int/lit8 v10, v3, 0x2

    sub-int v1, v9, v10

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v5

    const v9, 0x7f0a03bd

    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/HorizontalScrollView;

    div-int/lit8 v9, v5, 0x2

    if-gt v1, v9, :cond_6a

    invoke-virtual {v8, v12, v12}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_5

    :cond_6a
    div-int/lit8 v9, v5, 0x2

    sub-int v9, v1, v9

    invoke-virtual {v8, v9, v12}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_5
.end method


# virtual methods
.method public animHideChildEffectView()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-ne v3, v1, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$2;-><init>(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffectAndTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_38
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showDownEffectIndicatorIcon()V

    goto :goto_f

    :cond_3c
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffectAndTitle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_38
.end method

.method public animShowChildEffectView()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z

    move-result v1

    if-eqz v1, :cond_40

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$1;-><init>(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffectAndTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3c
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showUpEffectIndicatorIcon()V

    goto :goto_e

    :cond_40
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->moveToCurrentItem()V

    goto :goto_3c
.end method

.method public getAdapter()Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSubEffectView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    return-object v0
.end method

.method public getEasyCameraSwitchViews()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEasyCameraSwitchViews:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getEffectIndicatorContainer()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainerAnim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showDownEffectIndicatorIcon()V

    return-void
.end method

.method public hideEffectIndicatorIcon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideIdPhotoGuideIcon()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEnterGuideIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideSoundIndicatorIcon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_13
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v0, "Test"

    const-string/jumbo v1, "Sound GONE!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    :goto_7
    return-void

    :pswitch_8
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    const/16 v0, 0x8

    :goto_12
    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animShowChildEffectView()V

    goto :goto_7

    :cond_18
    const/4 v0, 0x0

    goto :goto_12

    :cond_1a
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V

    goto :goto_7

    :pswitch_data_1e
    .packed-switch 0x7f0a054d
        :pswitch_8
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mItemCountPerScreen:I

    const v0, 0x7f0a0550

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectTextIndicator:Landroid/widget/TextView;

    const v0, 0x7f0a054d

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054f

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a03e1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03e0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffectAndTitle:Landroid/view/View;

    const v0, 0x7f0a03e2

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSubEffectView:Landroid/widget/GridView;

    const v0, 0x7f0a054e

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    const v1, 0x7f040005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    const v0, 0x7f0a03e3

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainerAnim:Landroid/view/View;

    const v0, 0x7f0a054c

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorHolder:Landroid/view/View;

    const v0, 0x7f0a028e

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEasyCameraSwitchViews:Landroid/view/ViewGroup;

    const v0, 0x7f0a0551

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEnterGuideIndicator:Landroid/widget/ImageView;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public restoreEffectIndicatorListener()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public setAdapter(Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;)V
    .registers 13

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSubEffectView:Landroid/widget/GridView;

    invoke-virtual {p1}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v7, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSubEffectView:Landroid/widget/GridView;

    invoke-virtual {v7, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    invoke-virtual {p1}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->getCount()I

    move-result v5

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaydensity()F

    move-result v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b006d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int v0, v2, v5

    const/high16 v7, 0x4120

    mul-float/2addr v7, v1

    float-to-int v3, v7

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mItemCountPerScreen:I

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mItemCountPerScreen:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-int/lit8 v8, v5, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v6, v7

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    add-int v7, v0, v6

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v10, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSubEffectView:Landroid/widget/GridView;

    invoke-virtual {v7, v4}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->moveToCurrentItem()V

    return-void
.end method

.method public setExpandable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSubEffectView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mAdapter:Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->setOrientation(IZ)V

    :cond_c
    return-void
.end method

.method public setTextIndicator(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTextIndicator(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a03e5

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectTextIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffectAndTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public showDownEffectIndicatorIcon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1a
    return-void
.end method

.method public showIdPhotoGuideIcon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEnterGuideIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showSoundIndicatorIcon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    const v1, 0x7f040005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    :cond_25
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_32
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mGramoFrameAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mSoundIndicatorIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v0, "Test"

    const-string/jumbo v1, "Sound VISIBLE!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public showUpEffectIndicatorIcon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorIcon:Landroid/widget/ImageView;

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_12
    return-void
.end method

.method public switchViews(Z)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEasyCameraSwitchViews:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEffectIndicatorHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mEasyCameraSwitchViews:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_f
.end method
