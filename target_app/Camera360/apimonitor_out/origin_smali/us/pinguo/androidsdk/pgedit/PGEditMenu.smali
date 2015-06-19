.class public abstract Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.super Ljava/lang/Object;
.source "PGEditMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isFinished:Z

.field protected mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;

.field protected mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;

.field protected mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;

.field protected mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

.field protected mContext:Landroid/content/Context;

.field protected mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

.field protected mEditPhotoFrameLayout:Landroid/view/ViewGroup;

.field protected mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

.field protected mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;

.field protected mEffectClickListener:Landroid/view/View$OnClickListener;

.field protected mFirstMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstTopMenu:Landroid/view/View;

.field protected mLastSelectedView:Landroid/view/View;

.field protected mMenuAnimation:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;

.field protected mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

.field protected mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

.field protected mSecondTopMenu:Landroid/view/View;

.field protected mSecondTopTitle:Landroid/widget/TextView;

.field protected mShowSecondAnimationFinish:Z


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
    .registers 7
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mMenuAnimation:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mFirstMenuList:Ljava/util/List;

    iput-object p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEffectClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    return-void
.end method


# virtual methods
.method public changeEffect()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->changeEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V

    return-void
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->isFinished:Z

    return-void
.end method

.method protected getBottomMenuHSVForHide()Landroid/widget/HorizontalScrollView;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public getEditRendererMethod()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->clone()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    move-result-object v0

    goto :goto_5
.end method

.method public getFirstMenu()Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    return-object v0
.end method

.method public abstract getItems()[Ljava/lang/String;
.end method

.method public abstract getShowButtomSecondMenusList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public gotoSecondMenu()V
    .registers 1

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideTopFirstMenuAnimation()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideButtomFirstMenuAnimation()V

    return-void
.end method

.method public hideButtomFirstMenuAnimation()V
    .registers 7

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mMenuAnimation:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v4, Lus/pinguo/androidsdk/pgedit/PGEditMenu$2;

    invoke-direct {v4, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu$2;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getShowButtomSecondMenusList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->hideAndShowViewTogetherForUpAndDownAnimation(Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;Ljava/util/List;)V

    return-void
.end method

.method public hideButtomSecondMenuAnimation()V
    .registers 8

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mMenuAnimation:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getBottomMenuHSVForHide()Landroid/widget/HorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;

    new-instance v4, Lus/pinguo/androidsdk/pgedit/PGEditMenu$4;

    invoke-direct {v4, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu$4;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mFirstMenuList:Ljava/util/List;

    invoke-static {v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->hideAndShowViewTogetherForUpAndDownAnimation(Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;Ljava/util/List;)V

    return-void
.end method

.method public hideTopFirstMenuAnimation()V
    .registers 5

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pg_sdk_edit_anim_top_hide"

    invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditMenu$1;

    invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mFirstTopMenu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public hideTopFirstMenuAnimationFinish()V
    .registers 1

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showTopSecondMenuAnimation()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideViewForGotoSecondMenu()V

    return-void
.end method

.method public hideTopSecondMenuAnimation()V
    .registers 5

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pg_sdk_edit_anim_top_hide"

    invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditMenu$3;

    invoke-direct {v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu$3;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mSecondTopMenu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public hideTopSecondMenuAnimationFinish()V
    .registers 1

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showTopFirstMenuAnimation()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showViewForBackFirstMenu()V

    return-void
.end method

.method public hideViewForGotoSecondMenu()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->showForAlpha()V

    return-void
.end method

.method public isFinished()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->isFinished:Z

    return v0
.end method

.method public isNeedMakePhoto()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public keyBack()Z
    .registers 5

    const-string/jumbo v0, "keyBack"

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mShowSecondAnimationFinish:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideButtomSecondMenuAnimation()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideTopSecondMenuAnimation()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v2

    sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showBitmap(Landroid/graphics/Bitmap;II)V

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public abstract refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public selectedView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mLastSelectedView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mLastSelectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mLastSelectedView:Landroid/view/View;

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->changeEffect()V

    return-void
.end method

.method public setButtomView(Landroid/view/ViewGroup;Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;)V
    .registers 5

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;

    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;

    iput-object p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;

    return-void
.end method

.method public setEditSurfaceView(Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;

    invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->startTouchListener()V

    return-void
.end method

.method public setOtherView(Lus/pinguo/androidsdk/pgedit/PGEditImageView;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setTopView(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .registers 4

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mFirstTopMenu:Landroid/view/View;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mSecondTopMenu:Landroid/view/View;

    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mSecondTopTitle:Landroid/widget/TextView;

    return-void
.end method

.method public showButtomFirstMenuAnimationFinish()V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mFirstMenuList:Ljava/util/List;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEffectClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->addViewsTagListener(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showButtomSecondMenuAnimationFinish()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->addViewsTagListener(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mShowSecondAnimationFinish:Z

    return-void
.end method

.method public showTopFirstMenuAnimation()V
    .registers 5

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mFirstTopMenu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mFirstTopMenu:Landroid/view/View;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pg_sdk_edit_anim_top_show"

    invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showTopSecondMenuAnimation()V
    .registers 5

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mSecondTopMenu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mSecondTopTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mSecondTopMenu:Landroid/view/View;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pg_sdk_edit_anim_top_show"

    invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showViewForBackFirstMenu()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->hideForAlpha()V

    return-void
.end method
