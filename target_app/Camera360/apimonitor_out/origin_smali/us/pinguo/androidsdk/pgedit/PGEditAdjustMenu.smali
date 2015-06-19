.class public Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.source "PGEditAdjustMenu.java"


# instance fields
.field private isNeedMake:Z

.field private mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

.field private mAdjustSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

.field private mOnSeekChangedListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

.field private mSeekBarLinearLayout:Landroid/view/View;


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

    invoke-direct/range {p0 .. p5}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mOnSeekChangedListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    return-object v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    return-object v0
.end method

.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3(Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->isNeedMake:Z

    return-void
.end method


# virtual methods
.method public changeEffect()V
    .registers 1

    return-void
.end method

.method public getItems()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustSet:Ljava/util/Set;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShowButtomSecondMenusList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameAndShowLastViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->onClick(Landroid/view/View;)V

    return-object v0
.end method

.method public hideViewForGotoSecondMenu()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideViewForGotoSecondMenu()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mSeekBarLinearLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mBackgroundImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mBackgroundImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mBackgroundImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setVisibility(I)V

    return-void
.end method

.method public isNeedMakePhoto()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->isNeedMake:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    if-nez v1, :cond_2c

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;

    sget-object v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v2

    sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;-><init>(IILandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V

    :cond_2c
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getAdjustForSeekBar()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setProgress(I)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getRate()F

    move-result v2

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setRateTextView(F)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mOnSeekChangedListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAdjustMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getDefaultRate()F

    move-result v2

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setDefaultValueRate(F)V

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->selectedView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditAdjustMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countAdjustItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    return-void
.end method

.method public refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public setAutoHideTextView(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    return-void
.end method

.method public setEditSeekBar(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    return-void
.end method

.method public setSeekBarLinearLayout(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mSeekBarLinearLayout:Landroid/view/View;

    return-void
.end method

.method public showButtomSecondMenuAnimationFinish()V
    .registers 2

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showButtomSecondMenuAnimationFinish()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->startHideAnimation()V

    return-void
.end method

.method public showViewForBackFirstMenu()V
    .registers 4

    const/16 v2, 0x8

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showViewForBackFirstMenu()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->clearDefaultValueRate()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->endAnimation()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mSeekBarLinearLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;->hideForAlpha()V

    return-void
.end method
