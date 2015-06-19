.class public Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;
.super Landroid/widget/HorizontalScrollView;
.source "PagedDragDropGrid.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final FLING_VELOCITY:I = 0x1f4


# instance fields
.field private activePage:I

.field private activePageRestored:Z

.field private adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

.field private gestureScanner:Landroid/view/GestureDetector;

.field private grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

.field private listener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mScroller:Landroid/widget/Scroller;

.field private pageChangedListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;

.field private xmlRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initPagedScroll()V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initPagedScroll()V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initPagedScroll()V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initPagedScroll()V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initPagedScroll()V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$1;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initPagedScroll()V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->initGrid()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)Landroid/view/GestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->gestureScanner:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private initGrid()V
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->xmlRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->xmlRes:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setBackgroundResource(I)V

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->addView(Landroid/view/View;)V

    return-void
.end method

.method private scrollToRestoredPage()V
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollToPage(I)V

    return-void
.end method

.method private setBackground(Landroid/util/AttributeSet;)V
    .registers 6

    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v2, "background"

    const/4 v3, -0x1

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->xmlRes:I

    return-void
.end method

.method private smoothScrollToSlowly(II)V
    .registers 9

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getScrollY()I

    move-result v2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    const/16 v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public canScrollToNextPage()Z
    .registers 3

    iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    invoke-interface {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public canScrollToPreviousPage()Z
    .registers 3

    iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public currentPage()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    return v0
.end method

.method public disableGrid()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setEnabled(Z)V

    return-void
.end method

.method public disableScroll()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public enableGrid()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setEnabled(Z)V

    return-void
.end method

.method public enableScroll()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public initPagedScroll()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->gestureScanner:Landroid/view/GestureDetector;

    :cond_15
    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid$2;-><init>(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reloadViews()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x3c06

    cmpg-float v2, p3, v2

    if-gez v2, :cond_c

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollRight(Z)V

    :goto_b
    return v0

    :cond_c
    const/high16 v2, 0x43fa

    cmpl-float v2, p3, v2

    if-lez v2, :cond_16

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollLeft(Z)V

    goto :goto_b

    :cond_16
    move v0, v1

    goto :goto_b
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollToRestoredPage()V

    :cond_d
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public removeItem(II)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeItem(II)V

    return-void
.end method

.method public restoreCurrentPage(I)V
    .registers 3

    iput p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePageRestored:Z

    return-void
.end method

.method public scrollLeft(Z)V
    .registers 4

    iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->canScrollToPreviousPage()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz p1, :cond_10

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollToPageSlowly(I)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollToPage(I)V

    goto :goto_f
.end method

.method public scrollRight(Z)V
    .registers 4

    iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->canScrollToNextPage()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz p1, :cond_10

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollToPageSlowly(I)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->scrollToPage(I)V

    goto :goto_f
.end method

.method public scrollToPage(I)V
    .registers 5

    iput p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getMeasuredWidth()I

    move-result v0

    mul-int v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->smoothScrollTo(II)V

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->pageChangedListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->pageChangedListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;

    invoke-interface {v2, p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;->onPageChanged(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;I)V

    :cond_15
    return-void
.end method

.method public scrollToPageSlowly(I)V
    .registers 5

    iput p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->getMeasuredWidth()I

    move-result v0

    mul-int v1, p1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->smoothScrollToSlowly(II)V

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->pageChangedListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->pageChangedListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;

    invoke-interface {v2, p0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;->onPageChanged(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;I)V

    :cond_15
    return-void
.end method

.method public setAdapter(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setAdapter(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setContainer(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;)V

    :goto_c
    iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    invoke-interface {p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;->pageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->activePage:I

    goto :goto_c
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->listener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V

    return-void
.end method

.method public setOnPageChangedListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->pageChangedListener:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnPageChangedListener;

    return-void
.end method

.method public startEditMode()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->startEditMode()V

    return-void
.end method

.method public stopEditMode()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->stopEditMode()V

    return-void
.end method
