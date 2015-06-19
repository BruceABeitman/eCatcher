.class public Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;
.super Landroid/view/ViewGroup;
.source "DragDropGrid.java"
.implements Landroid/view/View$OnLongClickListener;
.field private static ANIMATION_DURATION:I = 0x0
.field public static final DRAGGED_SCALE_RATE:F = 1.15f
.field private static EGDE_DETECTION_MARGIN:I = 0x0
.field public static final PAGE_MODE_MULTI_PAGE:I = 0x0
.field public static final PAGE_MODE_ONE_PAGE:I = 0x1
.field private adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
.field private biggestChildHeight:I
.field private biggestChildWidth:I
.field private columnWidthSize:I
.field private computedColumnCount:I
.field private computedRowCount:I
.field private container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
.field private deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
.field private dragged:I
.field private edgeScrollTimer:Ljava/util/Timer;
.field private final edgeTimerHandler:Landroid/os/Handler;
.field private gridPageHeight:I
.field private gridPageWidth:I
.field private initialX:I
.field private initialY:I
.field private lastTarget:I
.field private lastTouchX:I
.field private lastTouchY:I
.field private mDividerWidth:I
.field private mIsEditMode:Z
.field private mLinePaint:Landroid/graphics/Paint;
.field private mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
.field private mPageMode:I
.field private mShaderDrawable:Landroid/graphics/drawable/NinePatchDrawable;
.field private mShowBorder:Z
.field private mShowDragShadow:Z
.field private movingView:Z
.field private newPositions:Landroid/util/SparseIntArray;
.field private onClickListener:Landroid/view/View$OnClickListener;
.field private rowHeightSize:I
.field private wasOnEdgeJustNow:Z
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x1f4
sput v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->ANIMATION_DURATION:I
const/16 v0, 0x46
sput v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->EGDE_DETECTION_MARGIN:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v0, 0x0
const/4 v3, 0x1
const/4 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
new-instance v0, Landroid/util/SparseIntArray;
invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
const/high16 v0, 0x3fc0
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v0, 0x0
const/4 v3, 0x1
const/4 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
new-instance v0, Landroid/util/SparseIntArray;
invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
const/high16 v0, 0x3fc0
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v0, 0x0
const/4 v3, 0x1
const/4 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
new-instance v0, Landroid/util/SparseIntArray;
invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
const/high16 v0, 0x3fc0
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;)V
.registers 10
const/4 v0, 0x0
const/4 v3, 0x1
const/4 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
new-instance v0, Landroid/util/SparseIntArray;
invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
const/high16 v0, 0x3fc0
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
iput-object p4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iput-object p5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;)V
.registers 9
const/4 v0, 0x0
const/4 v3, 0x1
const/4 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
new-instance v0, Landroid/util/SparseIntArray;
invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
const/high16 v0, 0x3fc0
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
iput-object p3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iput-object p4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;)V
.registers 8
const/4 v0, 0x0
const/4 v3, 0x1
const/4 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
new-instance v0, Landroid/util/SparseIntArray;
invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
const/high16 v0, 0x3fc0
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
iput-object p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iput-object p3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->init()V
return-void
.end method
.method private aViewIsDragged()Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->weWereMovingDraggedBetweenPages()Z
move-result v0
return v0
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeTimerHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;ZZ)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->scroll(ZZ)V
return-void
.end method
.method private acknowledgeHeightSize(IILandroid/view/Display;)I
.registers 4
if-nez p1, :cond_6
invoke-virtual {p3}, Landroid/view/Display;->getHeight()I
move-result p2
:cond_6
iput p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageHeight:I
return p2
.end method
.method private acknowledgeWidthSize(IILandroid/view/Display;)I
.registers 6
if-nez p1, :cond_6
invoke-virtual {p3}, Landroid/view/Display;->getWidth()I
move-result p2
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->getPageWidth(I)I
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->getPageWidth(I)I
move-result p2
:cond_1c
iput p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
return p2
.end method
.method private adaptChildrenMeasuresToViewSize(II)V
.registers 9
const/4 v5, 0x0
const/4 v3, -0x1
const/high16 v4, -0x8000
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v2
if-eq v2, v3, :cond_4a
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v2
if-eq v2, v3, :cond_4a
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v2
add-int/lit8 v2, v2, 0x1
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
mul-int/2addr v2, v3
sub-int v2, p1, v2
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v3
div-int v1, v2, v3
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v2
add-int/lit8 v2, v2, 0x1
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
mul-int/2addr v2, v3
sub-int v2, p2, v2
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v3
div-int v0, v2, v3
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-virtual {p0, v2, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->measureChildren(II)V
:goto_49
return-void
:cond_4a
invoke-virtual {p0, v5, v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->measureChildren(II)V
goto :goto_49
.end method
.method private addChildViews()V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeAllViews()V
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addView(Landroid/view/View;)V
const/4 v1, 0x0
:goto_9
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v3
if-lt v1, v3, :cond_17
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bringToFront()V
return-void
:cond_17
const/4 v0, 0x0
:goto_18
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v3
if-lt v0, v3, :cond_23
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_23
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->view(II)Landroid/view/View;
move-result-object v2
if-nez v2, :cond_2e
:goto_2b
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_2e
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->getItemAt(II)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addView(Landroid/view/View;)V
goto :goto_2b
.end method
.method private addReorderedChildrenToParent(Ljava/util/List;)V
.registers 6
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reeorderView(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
:cond_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_19
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bringToFront()V
return-void
:cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
if-eqz v1, :cond_d
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addView(Landroid/view/View;)V
goto :goto_d
.end method
.method private animateDeleteDragged()V
.registers 9
const/4 v7, 0x1
const v1, 0x3fb33333
const/4 v2, 0x0
new-instance v0, Landroid/view/animation/ScaleAnimation;
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildWidth:I
div-int/lit8 v3, v3, 0x2
int-to-float v5, v3
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
div-int/lit8 v3, v3, 0x2
int-to-float v6, v3
move v3, v1
move v4, v2
invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v0, v7}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V
invoke-virtual {v0, v7}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private animateDragged()V
.registers 10
const/4 v8, 0x1
const v2, 0x3f933333
const/high16 v1, 0x3f80
new-instance v0, Landroid/view/animation/ScaleAnimation;
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildWidth:I
div-int/lit8 v3, v3, 0x2
int-to-float v5, v3
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
div-int/lit8 v3, v3, 0x2
int-to-float v6, v3
move v3, v1
move v4, v2
invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v0, v8}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V
invoke-virtual {v0, v8}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->aViewIsDragged()Z
move-result v1
if-eqz v1, :cond_47
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v7
invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V
invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-interface {v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->couldItemDelete(I)Z
move-result v1
if-eqz v1, :cond_47
const v1, 0x7f0a029b
invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:cond_47
return-void
.end method
.method private animateGap(I)V
.registers 11
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentViewAtPosition(I)I
move-result v5
iget v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
if-ne v5, v6, :cond_9
:goto_8
return-void
:cond_9
invoke-direct {p0, v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildView(I)Landroid/view/View;
move-result-object v4
invoke-direct {p0, v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getCoorForIndex(I)Landroid/graphics/Point;
move-result-object v3
iget-object v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iget v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I
move-result v6
invoke-direct {p0, v6}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getCoorForIndex(I)Landroid/graphics/Point;
move-result-object v1
invoke-direct {p0, p1, v5, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeTranslationStartDeltaRelativeToRealViewPosition(IILandroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v2
invoke-direct {p0, v3, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeTranslationEndDeltaRelativeToRealViewPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
invoke-direct {p0, v4, v2, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateMoveToNewPosition(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
invoke-direct {p0, p1, v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->saveNewPositions(II)V
goto :goto_8
.end method
.method private animateMoveAllItems()V
.registers 7
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->createFastRotateAnimation()Landroid/view/animation/Animation;
move-result-object v3
const/4 v2, 0x0
:goto_5
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getItemViewCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
if-lt v2, v4, :cond_e
return-void
:cond_e
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
if-lt v2, v4, :cond_17
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
const/4 v5, -0x1
if-ne v4, v5, :cond_2a
:cond_17
move v0, v2
:goto_18
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v4, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->couldItemMove(I)Z
move-result v4
if-eqz v4, :cond_27
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_27
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_2a
add-int/lit8 v0, v2, 0x1
goto :goto_18
.end method
.method private animateMoveToNewPosition(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
.registers 8
new-instance v1, Landroid/view/animation/AnimationSet;
const/4 v3, 0x1
invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->createFastRotateAnimation()Landroid/view/animation/Animation;
move-result-object v0
invoke-direct {p0, p2, p3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->createTranslateAnimation(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/view/animation/TranslateAnimation;
move-result-object v2
invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V
invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private animateOnTheEdge()V
.registers 9
const/high16 v2, 0x3fc0
const v1, 0x3f2ac083
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->disableZoomAnimationsOnChangePage()Z
move-result v3
if-nez v3, :cond_3d
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v7
new-instance v0, Landroid/view/animation/ScaleAnimation;
invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
mul-int/lit8 v3, v3, 0x3
div-int/lit8 v3, v3, 0x4
int-to-float v5, v3
invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
mul-int/lit8 v3, v3, 0x3
div-int/lit8 v3, v3, 0x4
int-to-float v6, v3
move v3, v1
move v4, v2
invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V
invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V
invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_3d
return-void
.end method
.method private bringDraggedToFront()V
.registers 3
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bringToFront()V
return-void
.end method
.method private canScrollToEitherSide(ZZ)Z
.registers 4
if-eqz p2, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->canScrollToPreviousPage()Z
move-result v0
if-nez v0, :cond_16
:cond_a
if-eqz p1, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->canScrollToNextPage()Z
move-result v0
if-nez v0, :cond_16
:cond_14
const/4 v0, 0x0
:goto_15
return v0
:cond_16
const/4 v0, 0x1
goto :goto_15
.end method
.method private cancelAnimations()V
.registers 5
const/4 v1, 0x0
:goto_1
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getItemViewCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-lt v1, v2, :cond_a
return-void
:cond_a
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v2, v3, :cond_1a
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
:cond_17
:goto_17
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_1a
invoke-virtual {v0}, Landroid/view/View;->isClickable()Z
move-result v2
if-eqz v2, :cond_17
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
goto :goto_17
.end method
.method private cancelEdgeTimer()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeScrollTimer:Ljava/util/Timer;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeScrollTimer:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeScrollTimer:Ljava/util/Timer;
:cond_c
return-void
.end method
.method private childHasMoved(I)Z
.registers 3
const/4 v0, -0x1
if-eq p1, v0, :cond_5
const/4 v0, 0x1
:goto_4
return v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method
.method private cleanUnorderedChildren()Ljava/util/List;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->saveChildren()Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeItemChildren(Ljava/util/List;)V
return-object v0
.end method
.method private computeColumnsAndRowsSizes(II)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v0
add-int/lit8 v0, v0, 0x1
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
mul-int/2addr v0, v1
sub-int v0, p1, v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v1
div-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->columnWidthSize:I
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v0
add-int/lit8 v0, v0, 0x1
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
mul-int/2addr v0, v1
sub-int v0, p2, v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v1
div-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->rowHeightSize:I
return-void
.end method
.method private computeDropZoneVerticalBottom()I
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->deleteDropZoneLocation()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_10
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredHeight()I
move-result v1
:goto_f
return v1
:cond_10
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageHeight:I
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredHeight()I
move-result v2
sub-int/2addr v1, v2
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageHeight:I
add-int/2addr v1, v2
goto :goto_f
.end method
.method private computeDropZoneVerticalLocation()I
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->deleteDropZoneLocation()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_b
const/4 v1, 0x0
:goto_a
return v1
:cond_b
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageHeight:I
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredHeight()I
move-result v2
sub-int/2addr v1, v2
goto :goto_a
.end method
.method private computeGridMatrixSize(II)V
.registers 6
const/4 v2, 0x1
const/4 v1, -0x1
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v0
if-eq v0, v1, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v0
if-eq v0, v1, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedRowCount:I
:cond_22
:goto_22
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
if-nez v0, :cond_28
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
:cond_28
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedRowCount:I
if-nez v0, :cond_2e
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedRowCount:I
:cond_2e
return-void
:cond_2f
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildWidth:I
if-lez v0, :cond_22
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
if-lez v0, :cond_22
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildWidth:I
div-int v0, p1, v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
div-int v0, p2, v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedRowCount:I
goto :goto_22
.end method
.method private computePageEdgeXCoor(Landroid/view/View;)I
.registers 5
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int v0, v1, v2
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onRightEdgeOfScreen(I)Z
move-result v1
if-eqz v1, :cond_16
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
sub-int/2addr v0, v1
:goto_15
:cond_15
return v0
:cond_16
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onLeftEdgeOfScreen(I)Z
move-result v1
if-eqz v1, :cond_15
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
add-int/2addr v0, v1
goto :goto_15
.end method
.method private computeTranslationEndDeltaRelativeToRealViewPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
.registers 7
new-instance v0, Landroid/graphics/Point;
iget v1, p2, Landroid/graphics/Point;->x:I
iget v2, p1, Landroid/graphics/Point;->x:I
sub-int/2addr v1, v2
iget v2, p2, Landroid/graphics/Point;->y:I
iget v3, p1, Landroid/graphics/Point;->y:I
sub-int/2addr v2, v3
invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V
return-object v0
.end method
.method private computeTranslationStartDeltaRelativeToRealViewPosition(IILandroid/graphics/Point;)Landroid/graphics/Point;
.registers 8
const/4 v3, 0x0
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->viewWasAlreadyMoved(II)Z
move-result v2
if-eqz v2, :cond_10
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getCoorForIndex(I)Landroid/graphics/Point;
move-result-object v1
invoke-direct {p0, p3, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeTranslationEndDeltaRelativeToRealViewPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
:goto_f
return-object v0
:cond_10
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V
goto :goto_f
.end method
.method private createDeleteZone()V
.registers 3
new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
return-void
.end method
.method private createFastRotateAnimation()Landroid/view/animation/Animation;
.registers 8
const/4 v3, 0x1
const/high16 v4, 0x3f00
new-instance v0, Landroid/view/animation/RotateAnimation;
const/high16 v1, -0x4060
const/high16 v2, 0x3fa0
move v5, v3
move v6, v4
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V
const-wide/16 v1, 0x78
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-object v0
.end method
.method private createTranslateAnimation(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/view/animation/TranslateAnimation;
.registers 13
const/4 v9, 0x1
const/4 v1, 0x0
new-instance v0, Landroid/view/animation/TranslateAnimation;
iget v2, p1, Landroid/graphics/Point;->x:I
int-to-float v2, v2
iget v3, p2, Landroid/graphics/Point;->x:I
int-to-float v4, v3
iget v3, p1, Landroid/graphics/Point;->y:I
int-to-float v6, v3
iget v3, p2, Landroid/graphics/Point;->y:I
int-to-float v8, v3
move v3, v1
move v5, v1
move v7, v1
invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V
sget v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->ANIMATION_DURATION:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V
invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V
new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-object v0
.end method
.method private currentPage()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->currentPage()I
move-result v0
return v0
.end method
.method private currentViewAtPosition(I)I
.registers 6
move v2, p1
const/4 v0, 0x0
:goto_2
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I
move-result v3
if-lt v0, v3, :cond_b
:goto_a
return v2
:cond_b
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I
move-result v1
if-ne v1, p1, :cond_1a
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I
move-result v2
goto :goto_a
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method private drawDraggedShadow(Landroid/graphics/Canvas;)V
.registers 13
const v10, 0x3f933333
iget v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
const/4 v9, -0x1
if-eq v8, v9, :cond_4f
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v8
if-eqz v8, :cond_4f
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v7
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
const/4 v8, 0x4
invoke-static {v8}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v5
int-to-float v8, v7
mul-float/2addr v8, v10
float-to-int v8, v8
mul-int/lit8 v9, v5, 0x2
add-int v4, v8, v9
int-to-float v8, v1
mul-float/2addr v8, v10
float-to-int v8, v8
mul-int/lit8 v9, v5, 0x2
add-int v3, v8, v9
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v8
sub-int v9, v4, v7
div-int/lit8 v9, v9, 0x2
sub-int v2, v8, v9
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v8
sub-int v9, v3, v1
div-int/lit8 v9, v9, 0x2
sub-int v6, v8, v9
iget-object v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShaderDrawable:Landroid/graphics/drawable/NinePatchDrawable;
add-int v9, v2, v4
add-int v10, v6, v3
invoke-virtual {v8, v2, v6, v9, v10}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V
iget-object v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShaderDrawable:Landroid/graphics/drawable/NinePatchDrawable;
invoke-virtual {v8, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V
:cond_4f
return-void
.end method
.method private drawGridBorder(Landroid/graphics/Canvas;)V
.registers 16
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
if-eqz v0, :cond_54
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getWidth()I
move-result v13
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getHeight()I
move-result v9
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v12
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v6
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v11
const/4 v1, 0x0
const/4 v2, 0x0
int-to-float v3, v13
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
const/4 v8, 0x0
const/4 v10, 0x0
:goto_2a
add-int/lit8 v0, v12, -0x1
if-lt v10, v0, :cond_55
const/4 v1, 0x0
int-to-float v2, v9
int-to-float v3, v13
int-to-float v4, v9
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
int-to-float v4, v9
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
const/4 v7, 0x0
const/4 v10, 0x0
:goto_44
mul-int v0, v6, v11
add-int/lit8 v0, v0, -0x1
if-lt v10, v0, :cond_67
int-to-float v1, v13
const/4 v2, 0x0
int-to-float v3, v13
int-to-float v4, v9
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
:cond_54
return-void
:cond_55
int-to-float v0, v9
int-to-float v1, v12
div-float/2addr v0, v1
float-to-int v0, v0
add-int/2addr v8, v0
const/4 v1, 0x0
int-to-float v2, v8
int-to-float v3, v13
int-to-float v4, v8
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
add-int/lit8 v10, v10, 0x1
goto :goto_2a
:cond_67
int-to-float v0, v13
mul-int v1, v6, v11
int-to-float v1, v1
div-float/2addr v0, v1
float-to-int v0, v0
add-int/2addr v7, v0
int-to-float v1, v7
const/4 v2, 0x0
int-to-float v3, v7
int-to-float v4, v9
iget-object v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
add-int/lit8 v10, v10, 0x1
goto :goto_44
.end method
.method private ensureThereIsNoArtifact()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->invalidate()V
return-void
.end method
.method private findTheIndexLastElementInNextPage()I
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v0
const/4 v2, 0x0
const/4 v1, 0x0
:goto_6
add-int/lit8 v3, v0, 0x1
if-le v1, v3, :cond_b
return v2
:cond_b
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v3
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method private findTheIndexOfFirstElementInCurrentPage()I
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v0
const/4 v2, 0x0
const/4 v1, 0x0
:goto_6
if-lt v1, v0, :cond_9
return v2
:cond_9
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v3
add-int/2addr v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method private getChildView(I)Landroid/view/View;
.registers 3
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->weWereMovingDraggedBetweenPages()Z
move-result v0
if-eqz v0, :cond_11
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
if-lt p1, v0, :cond_11
add-int/lit8 v0, p1, -0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
:goto_10
return-object v0
:cond_11
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
goto :goto_10
.end method
.method private getColumnOfCoordinate(II)I
.registers 8
const/4 v0, 0x0
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
mul-int v3, p2, v4
const/4 v2, 0x1
:goto_6
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
if-le v2, v4, :cond_b
:cond_a
return v0
:cond_b
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->columnWidthSize:I
mul-int/2addr v4, v2
add-int v1, v4, v3
if-lt p1, v1, :cond_a
add-int/lit8 v0, v0, 0x1
add-int/lit8 v2, v2, 0x1
goto :goto_6
.end method
.method private getCoorForIndex(I)Landroid/graphics/Point;
.registers 9
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->itemInformationAtPosition(I)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
move-result-object v1
iget v5, v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I
iget v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
div-int v2, v5, v6
iget v5, v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I
iget v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
mul-int/2addr v6, v2
sub-int v0, v5, v6
iget v5, v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->pageIndex:I
iget v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
mul-int/2addr v5, v6
iget v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->columnWidthSize:I
mul-int/2addr v6, v0
add-int v3, v5, v6
iget v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->rowHeightSize:I
mul-int v4, v5, v2
new-instance v5, Landroid/graphics/Point;
invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V
return-object v5
.end method
.method private getDraggedView()Landroid/view/View;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method private getItemViewCount()I
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
return v0
.end method
.method private getPixelFromDip(I)F
.registers 7
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/4 v2, 0x1
int-to-float v3, p1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
return v0
.end method
.method private getRowOfCoordinate(I)I
.registers 5
const/4 v1, 0x0
const/4 v0, 0x1
:goto_2
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedRowCount:I
if-le v0, v2, :cond_7
:cond_6
return v1
:cond_7
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->rowHeightSize:I
mul-int/2addr v2, v0
if-lt p1, v2, :cond_6
add-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method private getTargetAtCoor(II)I
.registers 8
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v1
invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getColumnOfCoordinate(II)I
move-result v0
invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getRowOfCoordinate(I)I
move-result v3
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
mul-int/2addr v4, v3
add-int v2, v0, v4
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->positionOfItem(II)I
move-result v4
return v4
.end method
.method private hideDeleteView()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->setVisibility(I)V
return-void
.end method
.method private init()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->initPaint()V
const v0, 0x272829
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setBackgroundColor(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
if-nez v0, :cond_16
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->useEditModeAdapter()V
:cond_16
invoke-virtual {p0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->createDeleteZone()V
return-void
.end method
.method private initPaint()V
.registers 4
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f07008a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mLinePaint:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0202a4
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShaderDrawable:Landroid/graphics/drawable/NinePatchDrawable;
return-void
.end method
.method private isPointInsideView(FFLandroid/view/View;)Z
.registers 13
const/4 v7, 0x1
const/4 v8, 0x0
const/4 v0, 0x2
new-array v6, v0, [I
invoke-virtual {p3, v6}, Landroid/view/View;->getLocationOnScreen([I)V
aget v4, v6, v8
aget v5, v6, v7
move-object v0, p0
move v1, p1
move v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->pointIsInsideViewBounds(FFLandroid/view/View;II)Z
move-result v0
if-eqz v0, :cond_18
move v0, v7
:goto_17
return v0
:cond_18
move v0, v8
goto :goto_17
.end method
.method private itemInformationAtPosition(I)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
.registers 7
const/4 v0, 0x0
const/4 v2, 0x0
:goto_2
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v4}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v4
if-lt v2, v4, :cond_c
const/4 v4, 0x0
:goto_b
return-object v4
:cond_c
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v4, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v3
const/4 v1, 0x0
:goto_13
if-lt v1, v3, :cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_2
:cond_18
if-ne v0, p1, :cond_20
new-instance v4, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
invoke-direct {v4, p0, v2, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;II)V
goto :goto_b
:cond_20
add-int/lit8 v0, v0, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_13
.end method
.method private lastTouchOnEdge()Z
.registers 2
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onRightEdgeOfScreen(I)Z
move-result v0
if-nez v0, :cond_12
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onLeftEdgeOfScreen(I)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
const/4 v0, 0x1
goto :goto_11
.end method
.method private layoutAChild(IIIII)V
.registers 13
invoke-direct {p0, p2, p5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->positionOfItem(II)I
move-result v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
const/4 v3, 0x0
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
if-ne v2, v4, :cond_30
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchOnEdge()Z
move-result v4
if-eqz v4, :cond_30
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computePageEdgeXCoor(Landroid/view/View;)I
move-result v1
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
div-int/lit8 v5, v5, 0x2
sub-int v3, v4, v5
:goto_22
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v4
add-int/2addr v4, v1
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
add-int/2addr v5, v3
invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
return-void
:cond_30
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
mul-int v5, p2, p1
add-int/2addr v4, v5
iget v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->columnWidthSize:I
iget v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
add-int/2addr v5, v6
mul-int/2addr v5, p3
add-int/2addr v4, v5
iget v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->columnWidthSize:I
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v6
sub-int/2addr v5, v6
div-int/lit8 v5, v5, 0x2
add-int v1, v4, v5
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
iget v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->rowHeightSize:I
iget v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
add-int/2addr v5, v6
mul-int/2addr v5, p4
add-int/2addr v4, v5
iget v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->rowHeightSize:I
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v6
sub-int/2addr v5, v6
div-int/lit8 v5, v5, 0x2
add-int v3, v4, v5
goto :goto_22
.end method
.method private layoutPage(II)V
.registers 9
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
:goto_3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v0
if-lt v5, v0, :cond_c
return-void
:cond_c
move-object v0, p0
move v1, p1
move v2, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->layoutAChild(IIIII)V
add-int/lit8 v3, v3, 0x1
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computedColumnCount:I
if-ne v3, v0, :cond_1b
const/4 v3, 0x0
add-int/lit8 v4, v4, 0x1
:cond_1b
add-int/lit8 v5, v5, 0x1
goto :goto_3
.end method
.method private manageChildrenReordering()V
.registers 4
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->touchUpInDeleteZoneDrop(II)Z
move-result v0
if-eqz v0, :cond_11
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateDeleteDragged()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reorderChildrenWhenDraggedIsDeleted()V
:goto_10
return-void
:cond_11
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reorderChildren()V
goto :goto_10
.end method
.method private manageDeleteZoneHover(II)V
.registers 6
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getHitRect(Landroid/graphics/Rect;)V
add-int/lit8 v1, p1, 0x1
add-int/lit8 v2, p2, 0x1
invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->highlight()V
:goto_19
return-void
:cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->smother()V
goto :goto_19
.end method
.method private manageEdgeCoordinates(II)V
.registers 10
const/4 v5, 0x1
const/4 v6, 0x0
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
if-nez v4, :cond_2b
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onRightEdgeOfScreen(I)Z
move-result v2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onLeftEdgeOfScreen(I)Z
move-result v1
invoke-direct {p0, v2, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->canScrollToEitherSide(ZZ)Z
move-result v4
if-eqz v4, :cond_1e
iget-boolean v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
if-nez v4, :cond_1d
invoke-direct {p0, v2, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->startEdgeDelayTimer(ZZ)V
iput-boolean v5, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
:goto_1d
:cond_1d
return-void
:cond_1e
iget-boolean v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
if-eqz v4, :cond_25
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->stopAnimateOnTheEdge()V
:cond_25
iput-boolean v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cancelEdgeTimer()V
goto :goto_1d
:cond_2b
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
if-ne v4, v5, :cond_1d
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
instance-of v4, v4, Landroid/view/ViewGroup;
if-eqz v4, :cond_1d
invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onTopEdgeOfScreen(I)Z
move-result v3
invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onBottomEdgeOfScreen(I)Z
move-result v0
if-eqz v3, :cond_48
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
check-cast v4, Landroid/view/ViewGroup;
const/4 v5, -0x5
invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->scrollBy(II)V
goto :goto_1d
:cond_48
if-eqz v0, :cond_1d
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
check-cast v4, Landroid/view/ViewGroup;
const/4 v5, 0x5
invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->scrollBy(II)V
goto :goto_1d
.end method
.method private manageSwapPosition(II)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getTargetAtCoor(II)I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->couldItemMove(I)Z
move-result v1
if-eqz v1, :cond_1b
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->childHasMoved(I)Z
move-result v1
if-eqz v1, :cond_1b
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
if-eq v0, v1, :cond_1b
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateGap(I)V
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
:cond_1b
return-void
.end method
.method private moveDraggedToNextPage()V
.registers 10
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cleanUnorderedChildren()Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reeorderView(Ljava/util/List;)Ljava/util/List;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iget v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I
move-result v1
invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->findTheIndexLastElementInNextPage()I
move-result v3
add-int/lit8 v4, v3, -0x1
invoke-direct {p0, v5, v2, v4}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reorderAndAddViews(Ljava/util/List;Landroid/view/View;I)V
return-void
.end method
.method private moveDraggedToPreviousPage()V
.registers 10
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cleanUnorderedChildren()Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reeorderView(Ljava/util/List;)Ljava/util/List;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iget v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I
move-result v1
invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->findTheIndexOfFirstElementInCurrentPage()I
move-result v3
add-int/lit8 v4, v3, -0x1
invoke-direct {p0, v5, v2, v4}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reorderAndAddViews(Ljava/util/List;Landroid/view/View;I)V
return-void
.end method
.method private moveDraggedView(II)V
.registers 10
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v4
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
mul-int/lit8 v5, v4, 0x1
div-int/lit8 v5, v5, 0x2
sub-int v2, p1, v5
mul-int/lit8 v5, v1, 0x1
div-int/lit8 v5, v5, 0x2
sub-int v3, p2, v5
add-int v5, v2, v4
add-int v6, v3, v1
invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V
return-void
.end method
.method private onBottomEdgeOfScreen(I)Z
.registers 7
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getParent()Landroid/view/ViewParent;
move-result-object v2
instance-of v2, v2, Landroid/view/View;
if-eqz v2, :cond_29
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getParent()Landroid/view/ViewParent;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getScrollY()I
move-result v4
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getParent()Landroid/view/ViewParent;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getHeight()I
move-result v2
add-int v0, v4, v2
sub-int v1, v0, p1
sget v2, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->EGDE_DETECTION_MARGIN:I
if-gt v1, v2, :cond_27
const/4 v2, 0x1
:goto_26
return v2
:cond_27
move v2, v3
goto :goto_26
:cond_29
move v2, v3
goto :goto_26
.end method
.method private onLeftEdgeOfScreen(I)Z
.registers 6
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->currentPage()I
move-result v0
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
mul-int v2, v0, v3
sub-int v1, p1, v2
if-lez p1, :cond_14
sget v3, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->EGDE_DETECTION_MARGIN:I
if-gt v1, v3, :cond_14
const/4 v3, 0x1
:goto_13
return v3
:cond_14
const/4 v3, 0x0
goto :goto_13
.end method
.method private onRightEdgeOfScreen(I)Z
.registers 7
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->currentPage()I
move-result v0
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
mul-int/2addr v3, v0
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
add-int v2, v3, v4
sub-int v1, v2, p1
sget v3, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->EGDE_DETECTION_MARGIN:I
sub-int v3, v2, v3
if-le p1, v3, :cond_1b
sget v3, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->EGDE_DETECTION_MARGIN:I
if-ge v1, v3, :cond_1b
const/4 v3, 0x1
:goto_1a
return v3
:cond_1b
const/4 v3, 0x0
goto :goto_1a
.end method
.method private onTopEdgeOfScreen(I)Z
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getParent()Landroid/view/ViewParent;
move-result-object v2
instance-of v2, v2, Landroid/view/View;
if-eqz v2, :cond_1d
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getParent()Landroid/view/ViewParent;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getScrollY()I
move-result v1
sub-int v0, p1, v1
sget v2, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->EGDE_DETECTION_MARGIN:I
if-gt v0, v2, :cond_1b
const/4 v2, 0x1
:goto_1a
return v2
:cond_1b
move v2, v3
goto :goto_1a
:cond_1d
move v2, v3
goto :goto_1a
.end method
.method private pointIsInsideViewBounds(FFLandroid/view/View;II)Z
.registers 7
int-to-float v0, p4
cmpl-float v0, p1, v0
if-lez v0, :cond_20
invoke-virtual {p3}, Landroid/view/View;->getWidth()I
move-result v0
add-int/2addr v0, p4
int-to-float v0, v0
cmpg-float v0, p1, v0
if-gez v0, :cond_20
int-to-float v0, p5
cmpl-float v0, p2, v0
if-lez v0, :cond_20
invoke-virtual {p3}, Landroid/view/View;->getHeight()I
move-result v0
add-int/2addr v0, p5
int-to-float v0, v0
cmpg-float v0, p2, v0
if-gez v0, :cond_20
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method private popDeleteView()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->showRemoveDropZone()Z
move-result v0
if-eqz v0, :cond_b
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->showDeleteView()V
:cond_b
return-void
.end method
.method private positionForView(Landroid/view/View;)I
.registers 5
const/4 v1, 0x0
:goto_1
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getItemViewCount()I
move-result v2
if-lt v1, v2, :cond_9
const/4 v1, -0x1
:cond_8
return v1
:cond_9
invoke-direct {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildView(I)Landroid/view/View;
move-result-object v0
if-eq v0, p1, :cond_8
add-int/lit8 v1, v1, 0x1
goto :goto_1
.end method
.method private positionOfItem(II)I
.registers 8
const/4 v0, 0x0
const/4 v2, 0x0
:goto_2
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v4}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v4
if-lt v2, v4, :cond_c
const/4 v4, -0x1
:goto_b
return v4
:cond_c
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v4, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v3
const/4 v1, 0x0
:goto_13
if-lt v1, v3, :cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_2
:cond_18
if-ne p1, v2, :cond_1e
if-ne p2, v1, :cond_1e
move v4, v0
goto :goto_b
:cond_1e
add-int/lit8 v0, v0, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_13
.end method
.method private processTouch(Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
and-int/lit16 v1, v0, 0xff
packed-switch v1, :pswitch_data_22
:goto_9
iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mIsEditMode:Z
if-eqz v1, :cond_1f
const/4 v1, 0x1
:goto_e
return v1
:pswitch_f
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->touchDown(Landroid/view/MotionEvent;)V
goto :goto_9
:pswitch_13
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->touchMove(Landroid/view/MotionEvent;)V
goto :goto_9
:pswitch_17
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->touchUp(Landroid/view/MotionEvent;)V
goto :goto_9
:pswitch_1b
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->touchCancel(Landroid/view/MotionEvent;)V
goto :goto_9
:cond_1f
const/4 v1, 0x0
goto :goto_e
nop
:pswitch_data_22
.packed-switch 0x0
:pswitch_f
:pswitch_17
:pswitch_13
:pswitch_1b
.end packed-switch
.end method
.method private reeorderView(Ljava/util/List;)Ljava/util/List;
.registers 7
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
new-array v2, v3, [Landroid/view/View;
const/4 v0, 0x0
:goto_7
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
if-lt v0, v3, :cond_17
new-instance v3, Ljava/util/ArrayList;
invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v3
:cond_17
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
const/4 v4, -0x1
invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->get(II)I
move-result v1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->childHasMoved(I)Z
move-result v3
if-eqz v3, :cond_2f
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
aput-object v3, v2, v1
:goto_2c
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_2f
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
aput-object v3, v2, v0
goto :goto_2c
.end method
.method private removeItemChildren(Ljava/util/List;)V
.registers 5
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_b
return-void
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeView(Landroid/view/View;)V
goto :goto_4
.end method
.method private reorderAndAddViews(Ljava/util/List;Landroid/view/View;I)V
.registers 7
invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_c
:goto_c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bringToFront()V
return-void
:cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_c
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addView(Landroid/view/View;)V
goto :goto_c
.end method
.method private reorderChildren()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cleanUnorderedChildren()Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addReorderedChildrenToParent(Ljava/util/List;)V
return-void
.end method
.method private reorderChildrenWhenDraggedIsDeleted()V
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cleanUnorderedChildren()Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addReorderedChildrenToParent(Ljava/util/List;)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->tellAdapterDraggedIsDeleted(Ljava/lang/Integer;)V
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeViewAt(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->requestLayout()V
return-void
.end method
.method private saveChildren()Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
:goto_6
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getItemViewCount()I
move-result v3
if-lt v2, v3, :cond_d
return-object v1
:cond_d
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
if-ne v2, v3, :cond_1e
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v0
:goto_15
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_1e
invoke-direct {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildView(I)Landroid/view/View;
move-result-object v0
goto :goto_15
.end method
.method private saveNewPositions(II)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->newPositions:Landroid/util/SparseIntArray;
invoke-virtual {v1, p2, p2}, Landroid/util/SparseIntArray;->get(II)I
move-result v1
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->tellAdapterToSwapDraggedWithTarget(II)V
return-void
.end method
.method private scheduleScroll(ZZ)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeScrollTimer:Ljava/util/Timer;
new-instance v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;
invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$2;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;ZZ)V
const-wide/16 v2, 0x258
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
return-void
.end method
.method private scroll(ZZ)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cancelEdgeTimer()V
if-eqz p2, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->canScrollToPreviousPage()Z
move-result v0
if-eqz v0, :cond_14
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->scrollToPreviousPage()V
:goto_10
:cond_10
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->wasOnEdgeJustNow:Z
return-void
:cond_14
if-eqz p1, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->canScrollToNextPage()Z
move-result v0
if-eqz v0, :cond_10
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->scrollToNextPage()V
goto :goto_10
.end method
.method private scrollToNextPage()V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
const/4 v3, 0x1
invoke-interface {v2, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->scrollRight(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v0
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v2
add-int/lit8 v1, v2, -0x1
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->stopAnimateOnTheEdge()V
return-void
.end method
.method private scrollToPreviousPage()V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
const/4 v3, 0x1
invoke-interface {v2, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->scrollLeft(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v0
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v2
add-int/lit8 v1, v2, -0x1
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->stopAnimateOnTheEdge()V
return-void
.end method
.method private searchBiggestChildMeasures()V
.registers 5
const/4 v2, 0x0
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildWidth:I
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
const/4 v1, 0x0
:goto_6
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getItemViewCount()I
move-result v2
if-lt v1, v2, :cond_d
return-void
:cond_d
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
if-ge v2, v3, :cond_1f
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
:cond_1f
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildWidth:I
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
if-ge v2, v3, :cond_2d
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildWidth:I
:cond_2d
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method private showDeleteView()V
.registers 6
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->setVisibility(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v4}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getMeasuredWidth()I
move-result v4
mul-int v1, v3, v4
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeDropZoneVerticalLocation()I
move-result v2
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeDropZoneVerticalBottom()I
move-result v0
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
iget v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
add-int/2addr v4, v1
invoke-virtual {v3, v1, v2, v4, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->layout(IIII)V
return-void
.end method
.method private startEdgeDelayTimer(ZZ)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->canScrollToEitherSide(ZZ)Z
move-result v0
if-eqz v0, :cond_17
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateOnTheEdge()V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeScrollTimer:Ljava/util/Timer;
if-nez v0, :cond_17
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->edgeScrollTimer:Ljava/util/Timer;
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->scheduleScroll(ZZ)V
:cond_17
return-void
.end method
.method private stopAnimateOnTheEdge()V
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->disableZoomAnimationsOnChangePage()Z
move-result v1
if-nez v1, :cond_12
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getDraggedView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateDragged()V
:cond_12
return-void
.end method
.method private tellAdapterDraggedIsDeleted(Ljava/lang/Integer;)V
.registers 6
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->itemInformationAtPosition(I)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iget v2, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->pageIndex:I
iget v3, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->deleteItem(II)V
return-void
.end method
.method private tellAdapterToMoveItemToNextPage(I)V
.registers 6
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->itemInformationAtPosition(I)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iget v2, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->pageIndex:I
iget v3, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->moveItemToNextPage(II)V
return-void
.end method
.method private tellAdapterToMoveItemToPreviousPage(I)V
.registers 6
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->itemInformationAtPosition(I)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iget v2, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->pageIndex:I
iget v3, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I
invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->moveItemToPreviousPage(II)V
return-void
.end method
.method private tellAdapterToSwapDraggedWithTarget(II)V
.registers 10
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->itemInformationAtPosition(I)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
move-result-object v0
invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->itemInformationAtPosition(I)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;
move-result-object v1
if-eqz v0, :cond_19
if-eqz v1, :cond_19
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
iget v3, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->pageIndex:I
iget v4, v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I
iget v5, v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->pageIndex:I
iget v6, v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$ItemPosition;->itemIndex:I
invoke-interface {v2, v3, v4, v5, v6}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->swapItems(IIII)V
:cond_19
return-void
.end method
.method private touchCancel(Landroid/view/MotionEvent;)V
.registers 4
const/4 v1, -0x1
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->aViewIsDragged()Z
move-result v0
if-nez v0, :cond_b
iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
if-eqz v0, :cond_23
:cond_b
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->manageChildrenReordering()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->hideDeleteView()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cancelEdgeTimer()V
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateMoveAllItems()V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->enableScroll()V
:cond_23
return-void
.end method
.method private touchDown(Landroid/view/MotionEvent;)V
.registers 5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->initialX:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->initialY:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F
move-result v0
float-to-int v0, v0
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v1
iget v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
mul-int/2addr v1, v2
add-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
return-void
.end method
.method private touchMove(Landroid/view/MotionEvent;)V
.registers 4
iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
if-eqz v0, :cond_37
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->aViewIsDragged()Z
move-result v0
if-eqz v0, :cond_37
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->ensureThereIsNoArtifact()V
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->moveDraggedView(II)V
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->manageSwapPosition(II)V
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->manageEdgeCoordinates(II)V
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchX:I
iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTouchY:I
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->manageDeleteZoneHover(II)V
:cond_37
return-void
.end method
.method private touchUp(Landroid/view/MotionEvent;)V
.registers 11
const/4 v8, -0x1
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->aViewIsDragged()Z
move-result v7
if-nez v7, :cond_52
iget-boolean v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
if-nez v7, :cond_52
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v7
float-to-int v5, v7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v7
float-to-int v6, v7
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->isEnabled()Z
move-result v7
if-eqz v7, :cond_51
invoke-direct {p0, v5, v6}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getTargetAtCoor(II)I
move-result v7
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
if-eqz v7, :cond_2e
if-eqz v0, :cond_2e
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
invoke-interface {v7, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_2e
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
if-eqz v7, :cond_51
if-eqz v0, :cond_51
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->currentPage()I
move-result v2
invoke-direct {p0, v6}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getRowOfCoordinate(I)I
move-result v4
invoke-direct {p0, v5, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getColumnOfCoordinate(II)I
move-result v1
invoke-direct {p0, v5, v6}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getTargetAtCoor(II)I
move-result v3
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v7, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->isEnable(I)Z
move-result v7
if-eqz v7, :cond_51
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
invoke-interface {v7, v2, v4, v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;->onGridItemClick(IIILandroid/view/View;)V
:cond_51
:goto_51
return-void
:cond_52
const/4 v7, 0x0
iput-boolean v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->manageChildrenReordering()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->hideDeleteView()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cancelEdgeTimer()V
iput v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
iput v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->lastTarget:I
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateMoveAllItems()V
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v7}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->enableScroll()V
goto :goto_51
.end method
.method private touchUpInDeleteZoneDrop(II)Z
.registers 6
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->getHitRect(Landroid/graphics/Rect;)V
add-int/lit8 v1, p1, 0x1
add-int/lit8 v2, p2, 0x1
invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z
move-result v1
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->smother()V
const/4 v1, 0x1
:goto_1a
return v1
:cond_1b
const/4 v1, 0x0
goto :goto_1a
.end method
.method private useEditModeAdapter()V
.registers 2
new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
return-void
.end method
.method private viewWasAlreadyMoved(II)Z
.registers 4
if-eq p2, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method private weWereMovingDraggedBetweenPages()Z
.registers 3
iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
const/4 v1, -0x1
if-eq v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
if-eqz v0, :cond_a
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->drawDraggedShadow(Landroid/graphics/Canvas;)V
:cond_a
return-void
.end method
.method public indexOfItem(II)I
.registers 7
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->getItemAt(II)Ljava/lang/Object;
move-result-object v1
const/4 v0, 0x0
:goto_7
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildCount()I
move-result v3
if-lt v0, v3, :cond_f
const/4 v0, -0x1
:cond_e
return v0
:cond_f
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_e
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method public isEditMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mIsEditMode:Z
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
if-eqz v0, :cond_a
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->drawGridBorder(Landroid/graphics/Canvas;)V
:cond_a
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->aViewIsDragged()Z
move-result v1
if-nez v1, :cond_13
iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
if-nez v1, :cond_13
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mIsEditMode:Z
if-nez v1, :cond_12
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->processTouch(Landroid/view/MotionEvent;)Z
:cond_12
:goto_12
return v0
:cond_13
const/4 v0, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_12
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->touchCancel(Landroid/view/MotionEvent;)V
const/4 v0, 0x0
goto :goto_12
.end method
.method protected onLayout(ZIIII)V
.registers 10
iget-boolean v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
if-eqz v2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v2
if-eqz v2, :cond_4
add-int v2, p2, p4
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v3
div-int v1, v2, v3
const/4 v0, 0x0
:goto_18
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v2
if-lt v0, v2, :cond_2a
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->weWereMovingDraggedBetweenPages()Z
move-result v2
if-eqz v2, :cond_4
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->bringDraggedToFront()V
goto :goto_4
:cond_2a
invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->layoutPage(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_18
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->positionForView(Landroid/view/View;)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_22
iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;->disableScroll()V
iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->positionForView(Landroid/view/View;)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->bringDraggedToFront()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateDragged()V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->startEditMode()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->popDeleteView()V
:goto_21
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method protected onMeasure(II)V
.registers 14
const/16 v9, 0x28
const/high16 v10, 0x4000
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v4
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v2
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v3
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getContext()Landroid/content/Context;
move-result-object v7
const-string/jumbo v8, "window"
invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/view/WindowManager;
invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
iget v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
if-nez v7, :cond_5c
invoke-direct {p0, v4, v5, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->acknowledgeWidthSize(IILandroid/view/Display;)I
move-result v5
invoke-direct {p0, v2, v3, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->acknowledgeHeightSize(IILandroid/view/Display;)I
move-result v3
invoke-direct {p0, v5, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adaptChildrenMeasuresToViewSize(II)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->searchBiggestChildMeasures()V
invoke-direct {p0, v5, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeGridMatrixSize(II)V
invoke-direct {p0, v5, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeColumnsAndRowsSizes(II)V
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
iget v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-direct {p0, v9}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getPixelFromDip(I)F
move-result v9
float-to-int v9, v9
invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
invoke-virtual {p0, v7, v8, v9}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->measureChild(Landroid/view/View;II)V
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v7}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v7
mul-int/2addr v7, v5
invoke-virtual {p0, v7, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setMeasuredDimension(II)V
:goto_5b
return-void
:cond_5c
iget v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
const/4 v8, 0x1
if-ne v7, v8, :cond_af
invoke-direct {p0, v4, v5, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->acknowledgeWidthSize(IILandroid/view/Display;)I
move-result v5
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v7}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v7
add-int/lit8 v7, v7, 0x1
iget v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mDividerWidth:I
mul-int/2addr v7, v8
sub-int v7, v5, v7
iget-object v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v8}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->columnCount()I
move-result v8
div-int v0, v7, v8
const/high16 v7, -0x8000
invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
const/4 v8, 0x0
invoke-virtual {p0, v7, v8}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->measureChildren(II)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->searchBiggestChildMeasures()V
iget v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->biggestChildHeight:I
iget-object v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v8}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->rowCount()I
move-result v8
mul-int v3, v7, v8
invoke-direct {p0, v5, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeGridMatrixSize(II)V
invoke-direct {p0, v5, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->computeColumnsAndRowsSizes(II)V
iget-object v7, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
iget v8, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->gridPageWidth:I
invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-direct {p0, v9}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getPixelFromDip(I)F
move-result v9
float-to-int v9, v9
invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
invoke-virtual {p0, v7, v8, v9}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->measureChild(Landroid/view/View;II)V
invoke-virtual {p0, v5, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setMeasuredDimension(II)V
goto :goto_5b
:cond_af
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
goto :goto_5b
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
iget-boolean v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mIsEditMode:Z
if-eqz v2, :cond_26
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->aViewIsDragged()Z
move-result v2
if-nez v2, :cond_10
iget-boolean v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->movingView:Z
if-nez v2, :cond_10
const/4 v1, 0x1
:cond_10
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->processTouch(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v1, :cond_25
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_25
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->stopEditMode()V
iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->onGridStopEditMode()V
:goto_25
:cond_25
return v0
:cond_26
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_25
.end method
.method public reloadViews()V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeAllViews()V
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addView(Landroid/view/View;)V
const/4 v1, 0x0
:goto_9
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I
move-result v3
if-lt v1, v3, :cond_17
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->deleteZone:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DeleteDropZoneView;->bringToFront()V
return-void
:cond_17
const/4 v0, 0x0
:goto_18
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->itemCountInPage(I)I
move-result v3
if-lt v0, v3, :cond_23
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_23
invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->indexOfItem(II)I
move-result v3
const/4 v4, -0x1
if-ne v3, v4, :cond_3c
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->view(II)Landroid/view/View;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v1, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->getItemAt(II)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addView(Landroid/view/View;)V
:cond_3c
add-int/lit8 v0, v0, 0x1
goto :goto_18
.end method
.method public removeItem(II)V
.registers 7
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->getItemAt(II)Ljava/lang/Object;
move-result-object v1
const/4 v0, 0x0
:goto_7
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildCount()I
move-result v3
if-lt v0, v3, :cond_e
:goto_d
return-void
:cond_e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeView(Landroid/view/View;)V
goto :goto_d
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method public setAdapter(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->addChildViews()V
return-void
.end method
.method public setContainer(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->container:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
return-void
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onClickListener:Landroid/view/View$OnClickListener;
return-void
.end method
.method public setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mOnGridItemClickListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
return-void
.end method
.method public setPageMode(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mPageMode:I
return-void
.end method
.method public setShowBorder(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowBorder:Z
return-void
.end method
.method public setShowDragShadow(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mShowDragShadow:Z
return-void
.end method
.method public startEditMode()V
.registers 6
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mIsEditMode:Z
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->animateMoveAllItems()V
const/4 v2, 0x0
:goto_7
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getItemViewCount()I
move-result v3
if-lt v2, v3, :cond_e
return-void
:cond_e
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v1
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
if-lt v2, v3, :cond_1b
iget v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->dragged:I
const/4 v4, -0x1
if-ne v3, v4, :cond_35
:cond_1b
move v0, v2
:goto_1c
instance-of v3, v1, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/EditableView;
if-eqz v3, :cond_32
iget-object v3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;
invoke-interface {v3, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->couldItemDelete(I)Z
move-result v3
if-eqz v3, :cond_32
check-cast v1, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/EditableView;
invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/EditableView;->getDeleteView()Landroid/view/View;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
:cond_32
add-int/lit8 v2, v2, 0x1
goto :goto_7
:cond_35
add-int/lit8 v0, v2, 0x1
goto :goto_1c
.end method
.method public stopEditMode()V
.registers 5
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->mIsEditMode:Z
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->cancelAnimations()V
const/4 v1, 0x0
:goto_7
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getItemViewCount()I
move-result v2
if-lt v1, v2, :cond_e
return-void
:cond_e
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
instance-of v2, v0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/EditableView;
if-eqz v2, :cond_20
check-cast v0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/EditableView;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/EditableView;->getDeleteView()Landroid/view/View;
move-result-object v2
const/4 v3, 0x4
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
:cond_20
add-int/lit8 v1, v1, 0x1
goto :goto_7
.end method