.class public Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.source "PGEditTiltShiftMenu.java"

# interfaces
.implements Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;


# instance fields
.field private mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

.field private mRangeSeekBarListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

.field private mStrengthSeekBarListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

.field private mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

.field private mTiltShiftSeekBarLinearLayout:Landroid/view/View;

.field private mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

.field private mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;


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

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mStrengthSeekBarListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu$2;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mRangeSeekBarListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    return-object v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    return-object v0
.end method


# virtual methods
.method public changeEffect()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getEffectValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->setEffectValue(Ljava/lang/String;)V

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->changeEffect()V

    return-void
.end method

.method public getItems()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_5
.end method

.method public getShowButtomSecondMenusList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createViewsForTitleShift(Landroid/util/DisplayMetrics;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->onClick(Landroid/view/View;)V

    return-object v0
.end method

.method public hideButtomFirstMenuAnimation()V
    .registers 6

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->setWidthHeight(IIII)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->setTilfShiftViewListener(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;)V

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideButtomFirstMenuAnimation()V

    return-void
.end method

.method public hideViewForGotoSecondMenu()V
    .registers 3

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideViewForGotoSecondMenu()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public move()V
    .registers 1

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->changeEffect()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    if-nez v1, :cond_2c

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTiltShiftRendererMethod;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getEffectValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTiltShiftRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    :cond_2c
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->showTiltShift(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v1, v6}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v1, v6}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getTiltShiftStrengthForSeekBar()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setProgress(I)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getTiltShiftRangeForSeekBar()I

    move-result v2

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setProgress(I)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mStrengthSeekBarListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mRangeSeekBarListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->selectedView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countTiltShiftItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    return-void
.end method

.method public refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setTiltShiftSeekBarLinearLayout(Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pg_sdk_edit_tilt_shift_strength_seek_bar"

    invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pg_sdk_edit_tilt_shift_range_seek_bar"

    invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    return-void
.end method

.method public showButtomSecondMenuAnimationFinish()V
    .registers 2

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showButtomSecondMenuAnimationFinish()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->startHideAnimation()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->startHideAnimation()V

    return-void
.end method

.method public showViewForBackFirstMenu()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showViewForBackFirstMenu()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->cancelHandler()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->endAnimation()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->endAnimation()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftRangeSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->mTiltShiftStrengthSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    return-void
.end method
