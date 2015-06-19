.class public Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;
.super Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"
.field private static final PLACEHOLDER_COLOR:I = 0x222222
.field private final mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
.field private mAnimatePressedUp:Z
.field private final mCoverTexture:Lcom/pinguo/camera360/gallery/ui/ColorTexture;
.field protected mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
.field private mInSelectionMode:Z
.field protected final mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
.field private mPressedIndex:I
.field protected mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
.field private mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
.field private final mWaitLoadingTexture:Lcom/pinguo/camera360/gallery/ui/ColorTexture;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/RootActivity;Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/SelectionManager;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V
.registers 8
const/4 v2, 0x1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
iput-object p4, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/ColorTexture;
const v1, 0x222222
invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/ColorTexture;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/pinguo/camera360/gallery/ui/ColorTexture;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/pinguo/camera360/gallery/ui/ColorTexture;
invoke-virtual {v0, v2, v2}, Lcom/pinguo/camera360/gallery/ui/ColorTexture;->setSize(II)V
new-instance v0, Lcom/pinguo/camera360/gallery/ui/ColorTexture;
const v1, -0x77ddddde
invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/ColorTexture;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mCoverTexture:Lcom/pinguo/camera360/gallery/ui/ColorTexture;
iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;)Lcom/pinguo/camera360/gallery/ui/SlotView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
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
.method public onSlotSizeChanged(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V
:cond_9
return-void
.end method
.method public onVisibleSlotRangeChanged(II)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V
:cond_9
return-void
.end method
.method public onVisibleTagRangeChanged(II)V
.registers 3
return-void
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->pause()V
return-void
.end method
.method public prepareDrawing()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z
return-void
.end method
.method protected renderContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
.registers 15
const/4 v9, 0x0
const/4 v8, 0x0
if-nez p2, :cond_5
:goto_4
return v9
:cond_5
iget-object v0, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->checkTexture(Lcom/pinguo/camera360/gallery/ui/Texture;)Lcom/pinguo/camera360/gallery/ui/Texture;
move-result-object v7
if-nez v7, :cond_5d
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/pinguo/camera360/gallery/ui/ColorTexture;
const/4 v0, 0x1
iput-boolean v0, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z
:cond_12
:goto_12
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetFrameBg:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
iget v5, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
div-int/lit8 v6, v0, 0x2
move-object v0, p0
move-object v1, p1
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->drawContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
div-int/lit8 v0, v0, 0x2
sub-int v3, p3, v0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
div-int/lit8 v0, v0, 0x2
sub-int v4, p4, v0
iget v5, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v6, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
move-object v0, p0
move-object v1, p1
move-object v2, v7
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->drawContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mCoverTexture:Lcom/pinguo/camera360/gallery/ui/ColorTexture;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
div-int/lit8 v0, v0, 0x2
sub-int v3, p3, v0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
div-int/lit8 v0, v0, 0x2
sub-int v4, p4, v0
iget v5, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v6, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->drawContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/Texture;IIII)V
goto :goto_4
:cond_5d
iget-boolean v0, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z
if-eqz v0, :cond_12
iput-boolean v9, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z
iget-object v7, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
iput-object v7, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/pinguo/camera360/gallery/ui/Texture;
goto :goto_12
.end method
.method protected renderExpand(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)I
.registers 5
const/4 v0, 0x0
return v0
.end method
.method protected renderLabel(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
.registers 12
iget-object v1, p2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/pinguo/camera360/gallery/ui/BitmapTexture;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->checkTexture(Lcom/pinguo/camera360/gallery/ui/Texture;)Lcom/pinguo/camera360/gallery/ui/Texture;
move-result-object v0
if-eqz v0, :cond_1d
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->getBorderSize()I
move-result v6
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/Texture;->getHeight()I
move-result v5
neg-int v2, v6
sub-int v1, p4, v5
add-int v3, v1, v6
add-int v1, p3, v6
add-int v4, v1, v6
move-object v1, p1
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/Texture;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
:cond_1d
const/4 v1, 0x0
return v1
.end method
.method protected renderOverlay(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
.registers 9
const/4 v0, 0x0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I
if-ne v1, p2, :cond_1b
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z
if-eqz v1, :cond_1a
invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->drawPressedUpFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
or-int/lit8 v0, v0, 0x2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z
move-result v1
if-eqz v1, :cond_1a
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z
const/4 v1, -0x1
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I
:goto_1a
:cond_1a
return v0
:cond_1b
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
iget-object v2, p3, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->isItemSelected(Lcom/pinguo/camera360/gallery/data/Path;)Z
move-result v1
if-eqz v1, :cond_39
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v1, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
sub-int v1, p4, v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v2, v2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
sub-int v2, p5, v2
invoke-virtual {p0, p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->drawAlbumSetSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
goto :goto_1a
:cond_39
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v1, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
sub-int v1, p4, v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v2, v2, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
sub-int v2, p5, v2
invoke-virtual {p0, p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->drawAlbumSetPreSelectedFrame(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)V
goto :goto_1a
.end method
.method public renderSlot(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
.registers 12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
move-result-object v3
if-eqz p1, :cond_a
if-nez v3, :cond_c
:cond_a
const/4 v6, 0x0
:goto_b
return v6
:cond_c
const/4 v6, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
sub-int v0, p3, v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v1, v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelPadding:I
sub-int v1, p4, v1
invoke-virtual {p0, p1, v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->renderContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
move-result v0
or-int/2addr v6, v0
invoke-virtual {p0, p1, p3, p4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->renderExpand(Lcom/pinguo/camera360/gallery/ui/GLCanvas;II)I
move-result v0
or-int/2addr v6, v0
invoke-virtual {p0, p1, v3, p3, p4}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
move-result v0
or-int/2addr v6, v0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelHeight:I
sub-int v5, p4, v0
move-object v0, p0
move-object v1, p1
move v2, p2
move v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
move-result v0
or-int/2addr v6, v0
goto :goto_b
.end method
.method public renderSortTag(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
.registers 6
const/4 v0, 0x0
return v0
.end method
.method public resume()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->resume()V
return-void
.end method
.method public setModel(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->setListener(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;)V
iput-object v3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotCount(I)Z
:cond_12
if-eqz p1, :cond_34
new-instance v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
invoke-direct {v0, v1, p1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;
invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->setListener(Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow$Listener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlidingWindow;->size()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotCount(I)Z
:cond_34
return-void
.end method
.method public setPressedIndex(I)V
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
goto :goto_4
.end method
.method public setPressedUp()V
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I
const/4 v1, -0x1
if-ne v0, v1, :cond_6
:goto_5
return-void
:cond_6
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
goto :goto_5
.end method