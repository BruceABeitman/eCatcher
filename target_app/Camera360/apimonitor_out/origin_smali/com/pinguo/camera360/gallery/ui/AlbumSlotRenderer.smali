.class public Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
.super Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;,
        Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

.field private mAnimatePressedUp:Z

.field private mData:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

.field private mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

.field private mHighlightItemPath:Ljava/lang/String;

.field private mInSelectionMode:Z

.field private final mPhotoSound:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

.field private mPressedIndex:I

.field protected mSelectionManager:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

.field private mSlotFilter:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

.field private mSortTagOffsetX:I

.field protected final mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

.field private mTagHeight:I

.field private mTagWidth:I

.field private final mVideoIcon:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/RootActivity;Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/PhotoSelector;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagOffsetX:I

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    iput-object p4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    invoke-static {p1}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;

    move-result-object v2

    iget-object v1, v2, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget v2, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I

    neg-int v2, v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagOffsetX:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020424

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPhotoSound:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020199

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pinguo/camera360/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/pinguo/camera360/gallery/ui/Texture;)Lcom/pinguo/camera360/gallery/ui/Texture;
    .registers 2

    instance-of v0, p0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    :cond_e
    return-object p0
.end method

.method private renderOverlay(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .registers 9

    const/4 v0, 0x0

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_1f

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawPressedUpFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawPressedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_1a

    :cond_1f
    iget-object v1, p3, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/pinguo/camera360/gallery/data/Path;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Ljava/lang/String;

    iget-object v2, p3, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_1a

    :cond_39
    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    iget-object v2, p3, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v1, v2, p2}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->isItemSelected(Lcom/pinguo/camera360/gallery/data/Path;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_1a

    :cond_4b
    invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawPreSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_1a
.end method

.method private renderVideoIcon(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->videoWidth:I

    sub-int v0, p2, v0

    div-int/lit8 v6, v0, 0x2

    int-to-float v0, v6

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v4, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->videoWidth:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v5, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->videoWidth:I

    move-object v0, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V

    :cond_25
    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V

    return-void
.end method

.method private renderVideoIconInSelectionMode(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->musicWidth:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v6, v0, 0x5

    sub-int v0, p2, v6

    int-to-float v0, v0

    sub-int v1, p3, v6

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mVideoIcon:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v4, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->musicWidth:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v5, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->musicWidth:I

    move-object v0, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V

    :cond_29
    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V

    return-void
.end method


# virtual methods
.method protected drawPhotoSound(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPhotoSound:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPhotoSound:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    move-object v0, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V

    :cond_e
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .registers 3

    return-void
.end method

.method public onVisibleSlotRangeChanged(II)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->setActiveSlotWindow(II)V

    :cond_9
    return-void
.end method

.method public onVisibleTagRangeChanged(II)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->setActiveTagWindow(II)V

    :cond_9
    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->pause()V

    return-void
.end method

.method public prepareDrawing()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method protected renderExpand(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)I
    .registers 7

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v1, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->musicWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v0, v1, 0x5

    sub-int v1, p2, v0

    int-to-float v1, v1

    sub-int v2, p3, v0

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v1, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->musicWidth:I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v2, v2, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;->musicWidth:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawPhotoSound(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V

    const/4 v1, 0x0

    return v1
.end method

.method public renderSlot(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
    .registers 19

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v13, 0x0

    :goto_f
    return v13

    :cond_10
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->getSlotEntry(I)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v11

    if-nez v11, :cond_1c

    const/4 v13, 0x0

    goto :goto_f

    :cond_1c
    const/4 v13, 0x0

    iget-object v4, v11, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;

    if-nez v4, :cond_5c

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    :cond_26
    :goto_26
    iget v7, v11, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mData:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mData:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;

    move-result-object v12

    if-eqz v12, :cond_68

    invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/data/MediaItem;->IsPhotoWitchSound()Z

    move-result v2

    if-eqz v2, :cond_68

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->renderExpand(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)I

    :cond_4d
    :goto_4d
    move-object v5, p0

    move-object v6, p1

    move/from16 v7, p2

    move-object v8, v11

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->renderOverlay(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v2

    or-int/2addr v13, v2

    goto :goto_f

    :cond_5c
    iget-boolean v2, v11, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    iget-object v4, v11, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    iput-object v4, v11, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;

    goto :goto_26

    :cond_68
    if-eqz v12, :cond_4d

    invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/data/MediaItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v2, :cond_7c

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->renderVideoIconInSelectionMode(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_4d

    :cond_7c
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->renderVideoIcon(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_4d
.end method

.method public renderSortTag(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
    .registers 15

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v9

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->getSortTagEntry(I)Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, v6, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$SortTagEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;

    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->checkTexture(Lcom/pinguo/camera360/gallery/ui/Texture;)Lcom/pinguo/camera360/gallery/ui/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->getSortTag(I)Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;

    move-result-object v8

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/Texture;->getHeight()I

    move-result v5

    iget-boolean v1, v8, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagWidth:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, p4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V

    :cond_3d
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagOffsetX:I

    sub-int v3, p4, v5

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagWidth:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagHeight:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/Texture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V

    :cond_4d
    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v8, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z

    if-nez v1, :cond_5

    mul-int/lit8 v1, p4, 0x2

    div-int/lit8 p4, v1, 0x3

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p4

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x3

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V

    iget-boolean v1, v8, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->checked:Z

    if-eqz v1, :cond_6f

    invoke-virtual {p0, p1, p4, p4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawCheckedBox(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_5

    :cond_6f
    invoke-virtual {p0, p1, p4, p4}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->drawUncheckedBox(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V

    goto :goto_5
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->resume()V

    return-void
.end method

.method public setHighlightItemPath(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mHighlightItemPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    goto :goto_c
.end method

.method public setModel(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v8}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->setListener(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotCount(I)Z

    iput-object v8, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    :cond_12
    if-eqz p1, :cond_6d

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mData:Lcom/pinguo/camera360/gallery/AlbumDataLoader;

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;

    move-result-object v0

    iget-object v7, v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v7, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingRight:I

    sub-int/2addr v0, v1

    iget v1, v7, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagWidth:I

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v7, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingBottom:I

    sub-int/2addr v0, v1

    iget v1, v7, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagHeight:I

    new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagWidth:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mTagHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v7, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->tagHeight:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/AlbumDataLoader;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;II)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v8}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$MyDataModelListener;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow;->setListener(Lcom/pinguo/camera360/gallery/ui/AlbumSlidingWindow$Listener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotCount(I)Z

    :cond_6d
    return-void
.end method

.method public setPressedIndex(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    goto :goto_4
.end method

.method public setPressedUp()V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    goto :goto_5
.end method

.method public setSlotFilter(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;

    return-void
.end method
