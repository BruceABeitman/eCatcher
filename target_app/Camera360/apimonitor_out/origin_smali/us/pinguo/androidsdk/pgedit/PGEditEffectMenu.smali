.class public Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.source "PGEditEffectMenu.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;,
        Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;
    }
.end annotation


# static fields
.field private static final CHANGE_EFFECT:I = 0x1

.field private static final SHOW_CHILD_CHANGE:I = 0x2

.field private static final SHOW_FIRST_BUTTOM:I = 0x3


# instance fields
.field private effectKey:Ljava/lang/String;

.field private isNowActivity:Z

.field private mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

.field private mBottomMarginRight:I

.field private mBottomMenuHSVLinearLayoutThird:Landroid/view/ViewGroup;

.field private mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;

.field private mButtomChildMenu:Landroid/view/View;

.field private mCanChangeEffect:Z

.field private mContainerTop:Landroid/view/View;

.field private mCurrentHSV:Landroid/widget/HorizontalScrollView;

.field private mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

.field private mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

.field private mEffectFragmentAction:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;

.field private mEffectFragmentActionForReplace:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;

.field private mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

.field private mHandler:Landroid/os/Handler;

.field private mIsReplaceEffect:Z

.field private mIsShowEffectDialog:Z

.field private mLastRate:F

.field private mOrgText:Landroid/view/View;

.field private mPGEditTopColor:Landroid/view/View;

.field private mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

.field private mReplaceEffect:Landroid/view/View;

.field private mSeekBarLinearLayout:Landroid/view/View;

.field private mShowImageView:Landroid/widget/ImageView;

.field private mTopShowTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mTopViewHideTranslateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Lus/pinguo/androidsdk/pgedit/PGEditSDK;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p5}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentActionForReplace:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentAction:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;

    iput-boolean v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCanChangeEffect:Z

    iput-boolean v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->isNowActivity:Z

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    const/high16 v0, 0x3f80

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mLastRate:F

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->init()V

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCanChangeEffect:Z

    return-void
.end method

.method static synthetic access$10(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/animation/TranslateAnimation;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopViewHideTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$11(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/animation/TranslateAnimation;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopShowTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$12(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    return-object v0
.end method

.method static synthetic access$13(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->isNowActivity:Z

    return v0
.end method

.method static synthetic access$14(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Landroid/widget/HorizontalScrollView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCurrentHSV:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method static synthetic access$15(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->addExtraView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$16(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
    .registers 1

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideButtomSecondMenuAnimation()V

    return-void
.end method

.method static synthetic access$17(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$18(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mOrgText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$19(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mLastRate:F

    return v0
.end method

.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    return-object v0
.end method

.method static synthetic access$4(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;F)V
    .registers 2

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setAlphaForImageView(F)V

    return-void
.end method

.method static synthetic access$5(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
    .registers 1

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideAndShowChildEffectAnimation()V

    return-void
.end method

.method static synthetic access$6(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContainerTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsShowEffectDialog:Z

    return-void
.end method

.method static synthetic access$8(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditTopColor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsReplaceEffect:Z

    return v0
.end method

.method private addExtraView(Landroid/view/ViewGroup;)V
    .registers 6

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41d0

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private hideAndShowChildEffectAnimation()V
    .registers 7

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    :goto_a
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;

    :goto_14
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVLinearLayoutThird:Landroid/view/ViewGroup;

    :goto_1e
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mMenuAnimation:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;

    new-instance v4, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;

    invoke-direct {v4, p0, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->getShowButtomSecondMenusList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->hideAndShowViewTogetherForUpAndDownAnimation(Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;Ljava/util/List;)V

    return-void

    :cond_2d
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;

    goto :goto_a

    :cond_30
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    goto :goto_14

    :cond_33
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;

    goto :goto_1e
.end method

.method private init()V
    .registers 6

    const-wide/16 v3, 0xc8

    const/high16 v2, -0x3d38

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopViewHideTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopViewHideTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopShowTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopShowTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopShowTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$3;

    invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$3;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private measureMarginRight()V
    .registers 4

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMarginRight:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getViewWidth(Landroid/view/View;)I

    move-result v0

    const/high16 v1, 0x41a0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMarginRight:I

    :cond_1c
    return-void
.end method

.method private setAlphaForImageView(F)V
    .registers 6

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mLastRate:F

    const-string/jumbo v2, "X10i"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_25
    return-void

    :cond_26
    const/high16 v2, 0x437f

    mul-float/2addr v2, p1

    float-to-int v0, v2

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_25
.end method

.method private showEffectFragment()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsShowEffectDialog:Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->showEffectFragment()V

    return-void
.end method


# virtual methods
.method public changeEffect()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;

    invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->setActionListener(Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;)V

    goto :goto_f
.end method

.method protected getBottomMenuHSVForHide()Landroid/widget/HorizontalScrollView;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCurrentHSV:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_7

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCurrentHSV:Landroid/widget/HorizontalScrollView;

    goto :goto_6
.end method

.method public getEditRendererMethod()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getEffectValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->setEffectValue(Ljava/lang/String;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clone()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    move-result-object v0

    goto :goto_5
.end method

.method public getEffectKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->effectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_5
.end method

.method public getShowButtomSecondMenusList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->measureMarginRight()V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;

    move-result-object v2

    sget v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->phoneWidth:I

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMarginRight:I

    sub-int/2addr v3, v4

    sget v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->leastShowWidth:I

    invoke-static {v1, v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameFrameAndShowLastViews(Landroid/content/Context;Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->onClick(Landroid/view/View;)V

    return-object v0
.end method

.method public gotoSecondMenu()V
    .registers 1

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->showEffectFragment()V

    return-void
.end method

.method public hideButtomFirstMenuAnimation()V
    .registers 5

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;

    invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideButtomFirstMenuAnimation()V

    return-void
.end method

.method public hideButtomSecondMenuAnimation()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mButtomChildMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mButtomChildMenu:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x4461

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$6;

    invoke-direct {v2, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$6;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public hideViewForGotoSecondMenu()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mSeekBarLinearLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->measureMarginRight()V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mButtomChildMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMarginRight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mButtomChildMenu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setVisibility(I)V

    return-void
.end method

.method public keyBack()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsShowEffectDialog:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->getEffectFragmentActionListener()Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    move-result-object v0

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;->dialogCancel()V

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->keyBack()Z

    move-result v0

    goto :goto_e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsReplaceEffect:Z

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentActionForReplace:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentActionForReplace;

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->setEffectFragmentActionListener(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;)V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->showEffectFragment()V

    invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countReplaceEffectClick()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCanChangeEffect:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCanChangeEffect:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    iput-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    if-nez v2, :cond_54

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getEffectValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mRendererMethodAlphaActionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->setRendererMethodAlphaActionListener(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    :cond_54
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getTexturePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->setTexturePath(Ljava/lang/String;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getTextureIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->setTextureIndex(I)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getEffectValueNoOpacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod;->setEffectValue(Ljava/lang/String;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->effectKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->selectedView(Landroid/view/View;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getEffectOpacity()I

    move-result v3

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setProgress(I)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v2, p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countEffectItemClick(Ljava/lang/String;)V

    goto/16 :goto_1c
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->isNowActivity:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->isNowActivity:Z

    return-void
.end method

.method public onSeekValueChanged(F)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setRateTextView(F)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->setEffectOpacity(F)V

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setAlphaForImageView(F)V

    :cond_15
    return-void
.end method

.method public refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public setAutoHideTextView(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    return-void
.end method

.method public setBottomMenuHSVLinearLayoutThird(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVLinearLayoutThird:Landroid/view/ViewGroup;

    return-void
.end method

.method public setBottomMenuHSVThird(Landroid/widget/HorizontalScrollView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method public setButtomChildMenu(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mButtomChildMenu:Landroid/view/View;

    return-void
.end method

.method public setContainerTop(Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContainerTop:Landroid/view/View;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContainerTop:Landroid/view/View;

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;

    invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEditSeekBar(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    return-void
.end method

.method public setOrgText(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mOrgText:Landroid/view/View;

    return-void
.end method

.method public setPGEditEffectFragmentProxy(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentAction:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;

    invoke-virtual {p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->setEffectFragmentActionListener(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;)V

    return-void
.end method

.method public setPGEditTopColor(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditTopColor:Landroid/view/View;

    return-void
.end method

.method public setReplaceEffect(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSeekBarLinearLayout(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mSeekBarLinearLayout:Landroid/view/View;

    return-void
.end method

.method public showButtomSecondMenuAnimationFinish()V
    .registers 2

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showButtomSecondMenuAnimationFinish()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->addExtraView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->startHideAnimation()V

    return-void
.end method

.method public showViewForBackFirstMenu()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->endAnimation()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mSeekBarLinearLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->hideForAlpha()V

    return-void
.end method
