.class public Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
.super Landroid/widget/ScrollView;
.source "OnePageDragDropGrid.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;


# instance fields
.field private adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

.field private grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

.field private listener:Landroid/view/View$OnClickListener;

.field private xmlRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setBackground(Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->initGrid()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->initGrid()V

    return-void
.end method

.method private initGrid()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setPageMode(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setShowBorder(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setShowDragShadow(Z)V

    iget v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->xmlRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    iget v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->xmlRes:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setBackgroundResource(I)V

    :cond_28
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->addView(Landroid/view/View;)V

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

    iput v1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->xmlRes:I

    return-void
.end method


# virtual methods
.method public canScrollToNextPage()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollToPreviousPage()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public currentPage()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public disableGrid()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setEnabled(Z)V

    return-void
.end method

.method public disableScroll()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public enableGrid()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setEnabled(Z)V

    return-void
.end method

.method public enableScroll()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->reloadViews()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public removeItem(II)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->removeItem(II)V

    return-void
.end method

.method public scrollLeft(Z)V
    .registers 2

    return-void
.end method

.method public scrollRight(Z)V
    .registers 2

    return-void
.end method

.method public scrollToPage(I)V
    .registers 2

    return-void
.end method

.method public setAdapter(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->adapter:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setAdapter(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setContainer(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedContainer;)V

    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->listener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V

    return-void
.end method

.method public startEditMode()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->startEditMode()V

    return-void
.end method

.method public stopEditMode()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->grid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid;->stopEditMode()V

    return-void
.end method
