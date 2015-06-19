.class public Lcom/pinguo/camera360/gallery/ui/SlotView;
.super Lcom/pinguo/camera360/gallery/ui/GLView;
.source "SlotView.java"
.field public static final FONT_COLOR_DATE:I = -0x34302e
.field public static final INDEX_NONE:I = -0x1
.field public static final OVERSCROLL_3D:I = 0x0
.field public static final OVERSCROLL_NONE:I = 0x2
.field public static final OVERSCROLL_SYSTEM:I = 0x1
.field public static final RENDER_MORE_FRAME:I = 0x2
.field public static final RENDER_MORE_PASS:I = 0x1
.field public static final SLOT_TYPE_CONTRACT_SLOT:I = 0x1
.field public static final SLOT_TYPE_EXPAND_SLOT:I
.field public static final WIDE_SCROLLING:Z
.field private mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
.field private mDownInScrolling:Z
.field private final mGestureDetector:Landroid/view/GestureDetector;
.field private final mHandler:Landroid/os/Handler;
.field private mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
.field private mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
.field private mMoreAnimation:Z
.field private mOverscrollEffect:I
.field private final mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
.field private mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
.field private mRequestRenderSlots:[I
.field private final mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
.field private mSortTagLineWidth:I
.field private mStartIndex:I
.field private final mTempRect:Landroid/graphics/Rect;
.field private mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;I)V
.registers 8
const/4 v1, 0x0
const/4 v3, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;-><init>()V
new-instance v0, Lcom/pinguo/camera360/gallery/ui/Paper;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/Paper;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mMoreAnimation:Z
iput-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
iput-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mStartIndex:I
const/4 v0, 0x2
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mOverscrollEffect:I
const/16 v0, 0x10
new-array v0, v0, [I
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRequestRenderSlots:[I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mSortTagLineWidth:I
if-nez p3, :cond_68
new-instance v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
:goto_30
:cond_30
new-instance v0, Landroid/view/GestureDetector;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getAndroidContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;
invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;-><init>(Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;)V
invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getAndroidContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;-><init>(Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mHandler:Landroid/os/Handler;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getAndroidContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->tagLineWidth:I
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mSortTagLineWidth:I
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotSpec(Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;)V
return-void
:cond_68
const/4 v0, 0x1
if-ne p3, v0, :cond_30
new-instance v0, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ContractSlotLayout;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
goto :goto_30
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/SlotView;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mOverscrollEffect:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/Paper;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/gallery/ui/SlotView;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mDownInScrolling:Z
return v0
.end method
.method private static expandIntArray([II)[I
.registers 3
:goto_0
array-length v0, p0
if-lt v0, p1, :cond_4
return-object p0
:cond_4
array-length v0, p0
mul-int/lit8 v0, v0, 0x2
new-array p0, v0, [I
goto :goto_0
.end method
.method private renderItem(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIZ)I
.registers 11
const/4 v2, 0x3
invoke-interface {p1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v2, p2, v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v0
if-eqz p4, :cond_40
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
int-to-float v3, v3
invoke-virtual {v2, v0, v3}, Lcom/pinguo/camera360/gallery/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F
move-result-object v2
const/4 v3, 0x0
invoke-interface {p1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyMatrix([FI)V
:goto_1b
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
if-eqz v2, :cond_2c
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->isActive()Z
move-result v2
if-eqz v2, :cond_2c
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
invoke-virtual {v2, p1, p2, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->apply(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILandroid/graphics/Rect;)V
:cond_2c
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
iget v3, v0, Landroid/graphics/Rect;->right:I
iget v4, v0, Landroid/graphics/Rect;->left:I
sub-int/2addr v3, v4
iget v4, v0, Landroid/graphics/Rect;->bottom:I
iget v5, v0, Landroid/graphics/Rect;->top:I
sub-int/2addr v4, v5
invoke-interface {v2, p1, p2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->renderSlot(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
move-result v1
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
return v1
:cond_40
iget v2, v0, Landroid/graphics/Rect;->left:I
int-to-float v2, v2
iget v3, v0, Landroid/graphics/Rect;->top:I
int-to-float v3, v3
const/4 v4, 0x0
invoke-interface {p1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FFF)V
goto :goto_1b
.end method
.method private renderSortTag(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILandroid/graphics/Rect;)V
.registers 8
const/4 v0, 0x3
invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
iget v0, p3, Landroid/graphics/Rect;->left:I
int-to-float v0, v0
iget v1, p3, Landroid/graphics/Rect;->top:I
int-to-float v1, v1
const/4 v2, 0x0
invoke-interface {p1, v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FFF)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
iget v1, p3, Landroid/graphics/Rect;->right:I
iget v2, p3, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
iget v2, p3, Landroid/graphics/Rect;->bottom:I
iget v3, p3, Landroid/graphics/Rect;->top:I
sub-int/2addr v2, v3
invoke-interface {v0, p1, p2, v1, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->renderSortTag(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
return-void
.end method
.method private updateScrollPosition(IZ)V
.registers 4
if-nez p2, :cond_7
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
if-ne p1, v0, :cond_7
:goto_6
return-void
:cond_7
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->setScrollPosition(I)V
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->onScrollPositionChanged(I)V
goto :goto_6
.end method
.method public addComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getGLContentLength()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getGLContentLength()I
move-result v0
return v0
.end method
.method public getScrollX()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollX:I
return v0
.end method
.method public getScrollY()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
return v0
.end method
.method public getSlotCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotCount()I
move-result v0
return v0
.end method
.method public getSlotPos()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
instance-of v0, v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getSlotPos()Ljava/util/ArrayList;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public getSlotRect(I)Landroid/graphics/Rect;
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v0
return-object v0
.end method
.method public getSortTags()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
instance-of v0, v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getSortTags()Ljava/util/ArrayList;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public getVisibleSlotEnd()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotEnd()I
move-result v0
return v0
.end method
.method public getVisibleSlotStart()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotStart()I
move-result v0
return v0
.end method
.method public getVisibleTagEnd()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getVisibleTagEnd()I
move-result v0
return v0
.end method
.method public getVisibleTagStart()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getVisibleTagStart()I
move-result v0
return v0
.end method
.method public makeSlotVisible(I)V
.registers 11
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v7, p1, v8}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v1
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getHeight()I
move-result v6
add-int v5, v4, v6
iget v2, v1, Landroid/graphics/Rect;->top:I
iget v3, v1, Landroid/graphics/Rect;->bottom:I
move v0, v4
sub-int v7, v3, v2
if-ge v6, v7, :cond_1e
move v0, v4
:goto_1a
:cond_1a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setScrollPosition(I)V
return-void
:cond_1e
if-ge v2, v4, :cond_22
move v0, v2
goto :goto_1a
:cond_22
if-le v3, v5, :cond_1a
sub-int v0, v3, v6
goto :goto_1a
.end method
.method protected onLayout(ZIIII)V
.registers 10
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotStart()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotEnd()I
move-result v2
add-int/2addr v1, v2
div-int/lit8 v0, v1, 0x2
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
sub-int v2, p4, p2
sub-int v3, p5, p3
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->setSize(II)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->makeSlotVisible(I)V
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mOverscrollEffect:I
if-nez v1, :cond_2
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
sub-int v2, p4, p2
sub-int v3, p5, p3
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/Paper;->setSize(II)V
goto :goto_2
.end method
.method protected onScrollPositionChanged(I)V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getScrollLimit()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
invoke-interface {v1, p1, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;->onScrollPositionChanged(II)V
return-void
.end method
.method protected onTouch(Landroid/view/MotionEvent;)Z
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;->onUserInteraction()V
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_34
:goto_16
return v1
:pswitch_17
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->isFinished()Z
move-result v0
if-eqz v0, :cond_28
const/4 v0, 0x0
:goto_20
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mDownInScrolling:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->forceFinished()V
goto :goto_16
:cond_28
move v0, v1
goto :goto_20
:pswitch_2a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/Paper;->onRelease()V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
goto :goto_16
nop
:pswitch_data_34
.packed-switch 0x0
:pswitch_17
:pswitch_2a
.end packed-switch
.end method
.method protected render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 32
invoke-super/range {p0 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
if-nez v4, :cond_a
:goto_9
return-void
:cond_a
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
invoke-interface {v4}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->prepareDrawing()V
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->get()J
move-result-wide v10
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
invoke-virtual {v4, v10, v11}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->advanceAnimation(J)Z
move-result v16
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v4, v10, v11}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->advanceAnimation(J)Z
move-result v4
or-int v16, v16, v4
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollX:I
move/from16 v20, v0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->getPosition()I
move-result v4
const/4 v5, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v4, v5}, Lcom/pinguo/camera360/gallery/ui/SlotView;->updateScrollPosition(IZ)V
const/16 v21, 0x0
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mOverscrollEffect:I
if-nez v4, :cond_85
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollX:I
move/from16 v19, v0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getScrollLimit()I
move-result v14
if-lez v20, :cond_55
if-eqz v19, :cond_5d
:cond_55
move/from16 v0, v20
if-ge v0, v14, :cond_7d
move/from16 v0, v19
if-ne v0, v14, :cond_7d
:cond_5d
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->getCurrVelocity()F
move-result v29
move/from16 v0, v19
if-ne v0, v14, :cond_6e
move/from16 v0, v29
neg-float v0, v0
move/from16 v29, v0
:cond_6e
invoke-static/range {v29 .. v29}, Ljava/lang/Float;->isNaN(F)Z
move-result v4
if-nez v4, :cond_7d
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
move/from16 v0, v29
invoke-virtual {v4, v0}, Lcom/pinguo/camera360/gallery/ui/Paper;->edgeReached(F)V
:cond_7d
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/Paper;->advanceAnimation()Z
move-result v21
:cond_85
or-int v16, v16, v21
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
if-eqz v4, :cond_97
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
invoke-virtual {v4, v10, v11}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->calculate(J)Z
move-result v4
or-int v16, v16, v4
:cond_97
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollX:I
neg-int v4, v4
int-to-float v4, v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
neg-int v5, v5
int-to-float v5, v5
move-object/from16 v0, p1
invoke-interface {v0, v4, v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
instance-of v4, v4, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
if-eqz v4, :cond_13f
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
check-cast v12, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getSortTags()Ljava/util/ArrayList;
move-result-object v28
if-eqz v28, :cond_13f
invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_13f
const/16 v23, 0x0
const/4 v4, 0x0
move-object/from16 v0, v28
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
iget-boolean v4, v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->isYearTag:Z
if-eqz v4, :cond_1aa
const/4 v4, 0x1
move-object/from16 v0, v28
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
iget-object v0, v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
move-object/from16 v23, v0
:goto_de
invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v4, v4, -0x1
move-object/from16 v0, v28
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
iget-object v0, v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
move-object/from16 v24, v0
new-instance v9, Lcom/pinguo/camera360/gallery/ui/GLPaint;
invoke-direct {v9}, Lcom/pinguo/camera360/gallery/ui/GLPaint;-><init>()V
const v4, -0x34302e
invoke-virtual {v9, v4}, Lcom/pinguo/camera360/gallery/ui/GLPaint;->setColor(I)V
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mSortTagLineWidth:I
int-to-float v4, v4
invoke-virtual {v9, v4}, Lcom/pinguo/camera360/gallery/ui/GLPaint;->setLineWidth(F)V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save()V
move-object/from16 v0, v24
iget v4, v0, Landroid/graphics/Rect;->bottom:I
move-object/from16 v0, v24
iget v5, v0, Landroid/graphics/Rect;->top:I
sub-int/2addr v4, v5
neg-int v4, v4
int-to-float v4, v4
const/high16 v5, 0x40e0
mul-float/2addr v4, v5
const/high16 v5, 0x41c0
div-float/2addr v4, v5
move-object/from16 v0, v23
iget v5, v0, Landroid/graphics/Rect;->top:I
int-to-float v5, v5
move-object/from16 v0, p1
invoke-interface {v0, v4, v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getGLContentLength()I
move-result v4
int-to-float v8, v4
move-object/from16 v4, p1
invoke-interface/range {v4 .. v9}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawLine(FFFFLcom/pinguo/camera360/gallery/ui/GLPaint;)V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getVisibleTagStart()I
move-result v13
:goto_139
invoke-virtual {v12}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getVisibleTagEnd()I
move-result v4
if-lt v13, v4, :cond_1b9
:cond_13f
const/16 v25, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRequestRenderSlots:[I
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotEnd()I
move-result v5
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotStart()I
move-result v6
sub-int/2addr v5, v6
invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/ui/SlotView;->expandIntArray([II)[I
move-result-object v27
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotEnd()I
move-result v4
add-int/lit8 v13, v4, -0x1
:goto_164
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotStart()I
move-result v4
if-ge v13, v4, :cond_1ce
const/16 v22, 0x1
:goto_170
if-nez v25, :cond_1ed
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollX:I
int-to-float v4, v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
int-to-float v5, v5
move-object/from16 v0, p1
invoke-interface {v0, v4, v5}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
if-eqz v16, :cond_186
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
:cond_186
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mMoreAnimation:Z
if-eqz v4, :cond_1a2
if-nez v16, :cond_1a2
if-eqz v15, :cond_1a2
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mHandler:Landroid/os/Handler;
new-instance v5, Lcom/pinguo/camera360/gallery/ui/SlotView$1;
move-object/from16 v0, p0
invoke-direct {v5, v0, v15}, Lcom/pinguo/camera360/gallery/ui/SlotView$1;-><init>(Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;)V
invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_1a2
move/from16 v0, v16
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/pinguo/camera360/gallery/ui/SlotView;->mMoreAnimation:Z
goto/16 :goto_9
:cond_1aa
const/4 v4, 0x0
move-object/from16 v0, v28
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
iget-object v0, v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
move-object/from16 v23, v0
goto/16 :goto_de
:cond_1b9
move-object/from16 v0, v28
invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
iget-object v4, v4, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->pos:Landroid/graphics/Rect;
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v13, v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;->renderSortTag(Lcom/pinguo/camera360/gallery/ui/GLCanvas;ILandroid/graphics/Rect;)V
add-int/lit8 v13, v13, 0x1
goto/16 :goto_139
:cond_1ce
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, v21
invoke-direct {v0, v1, v13, v4, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->renderItem(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIZ)I
move-result v23
and-int/lit8 v4, v23, 0x2
if-eqz v4, :cond_1df
const/16 v16, 0x1
:cond_1df
and-int/lit8 v4, v23, 0x1
if-eqz v4, :cond_1e9
add-int/lit8 v26, v25, 0x1
aput v13, v27, v25
move/from16 v25, v26
:cond_1e9
add-int/lit8 v13, v13, -0x1
goto/16 :goto_164
:cond_1ed
const/16 v17, 0x0
const/4 v13, 0x0
move/from16 v18, v17
:goto_1f2
move/from16 v0, v25
if-lt v13, v0, :cond_1fc
move/from16 v25, v18
add-int/lit8 v22, v22, 0x1
goto/16 :goto_170
:cond_1fc
aget v4, v27, v13
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, v22
move/from16 v3, v21
invoke-direct {v0, v1, v4, v2, v3}, Lcom/pinguo/camera360/gallery/ui/SlotView;->renderItem(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIZ)I
move-result v23
and-int/lit8 v4, v23, 0x2
if-eqz v4, :cond_210
const/16 v16, 0x1
:cond_210
and-int/lit8 v4, v23, 0x1
if-eqz v4, :cond_21d
add-int/lit8 v17, v18, 0x1
aput v13, v27, v18
:goto_218
add-int/lit8 v13, v13, 0x1
move/from16 v18, v17
goto :goto_1f2
:cond_21d
move/from16 v17, v18
goto :goto_218
.end method
.method public setCenterIndex(I)V
.registers 7
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotCount()I
move-result v2
if-ltz p1, :cond_a
if-lt p1, v2, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v3, p1, v4}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v1
iget v3, v1, Landroid/graphics/Rect;->top:I
iget v4, v1, Landroid/graphics/Rect;->bottom:I
add-int/2addr v3, v4
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getHeight()I
move-result v4
sub-int/2addr v3, v4
div-int/lit8 v0, v3, 0x2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setScrollPosition(I)V
goto :goto_a
.end method
.method public setListener(Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
return-void
.end method
.method public setOverscrollEffect(I)V
.registers 4
const/4 v0, 0x1
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mOverscrollEffect:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
if-ne p1, v0, :cond_b
:goto_7
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->setOverfling(Z)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method public setScrollPosition(I)V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getScrollLimit()I
move-result v0
invoke-static {p1, v1, v0}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I
move-result p1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->setPosition(I)V
invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->updateScrollPosition(IZ)V
return-void
.end method
.method public setSlotCount(I)Z
.registers 5
const/4 v2, -0x1
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->setSlotCount(I)Z
move-result v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mStartIndex:I
if-eq v1, v2, :cond_12
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mStartIndex:I
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setCenterIndex(I)V
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mStartIndex:I
:cond_12
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mScrollY:I
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setScrollPosition(I)V
return v0
.end method
.method public setSlotRenderer(Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;)V
.registers 6
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
if-eqz v1, :cond_46
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->setSlotRender(Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotWidth()I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotHeight()I
move-result v3
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotStart()I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getVisibleSlotEnd()I
move-result v3
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->onVisibleSlotRangeChanged(II)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
instance-of v1, v1, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
if-eqz v1, :cond_46
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mRenderer:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getVisibleTagStart()I
move-result v2
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getVisibleTagEnd()I
move-result v3
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;->onVisibleTagRangeChanged(II)V
:cond_46
return-void
.end method
.method public setSlotSpec(Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->setSlotSpec(Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;)V
return-void
.end method
.method public setSortTags(Ljava/util/ArrayList;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
instance-of v0, v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->setSortTags(Ljava/util/ArrayList;)V
:cond_d
return-void
.end method
.method public setStartIndex(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mStartIndex:I
return-void
.end method
.method public setUserInteractionListener(Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
return-void
.end method
.method public startRisingAnimation()V
.registers 2
new-instance v0, Lcom/pinguo/camera360/gallery/ui/SlotView$RisingAnimation;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$RisingAnimation;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->start()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotCount()I
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
:cond_17
return-void
.end method
.method public startScatteringAnimation(Lcom/pinguo/camera360/gallery/ui/RelativePosition;)V
.registers 3
new-instance v0, Lcom/pinguo/camera360/gallery/ui/SlotView$ScatteringAnimation;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView$ScatteringAnimation;-><init>(Lcom/pinguo/camera360/gallery/ui/RelativePosition;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mAnimation:Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$SlotAnimation;->start()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotCount()I
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
:cond_17
return-void
.end method