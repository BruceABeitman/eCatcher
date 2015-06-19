.class Lcom/pinguo/album/views/HorizontalListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/views/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/pinguo/album/views/HorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 11

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x2

    new-array v1, v6, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v2, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v3, v2, v6

    const/4 v6, 0x1

    aget v4, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v4, v6

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    return v6
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pinguo/album/views/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 10

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/HorizontalListView;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-lt v7, v6, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0, v7}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/pinguo/album/views/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/pinguo/album/views/HorizontalListView;->access$7(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/pinguo/album/views/HorizontalListView;->access$7(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/pinguo/album/views/HorizontalListView;->access$5(Lcom/pinguo/album/views/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    iget-object v4, v4, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/pinguo/album/views/HorizontalListView;->access$5(Lcom/pinguo/album/views/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_9

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    iget v2, v0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/pinguo/album/views/HorizontalListView;->mNextX:I

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/HorizontalListView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/HorizontalListView;->getChildCount()I

    move-result v0

    if-lt v6, v0, :cond_b

    :cond_9
    :goto_9
    const/4 v0, 0x1

    return v0

    :cond_b
    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/pinguo/album/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/pinguo/album/views/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/pinguo/album/views/HorizontalListView;->access$4(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/pinguo/album/views/HorizontalListView;->access$4(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/pinguo/album/views/HorizontalListView;->access$5(Lcom/pinguo/album/views/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    iget-object v4, v4, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/pinguo/album/views/HorizontalListView;->access$5(Lcom/pinguo/album/views/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_44
    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/pinguo/album/views/HorizontalListView;->access$6(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v0}, Lcom/pinguo/album/views/HorizontalListView;->access$6(Lcom/pinguo/album/views/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    iget-object v3, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v3}, Lcom/pinguo/album/views/HorizontalListView;->access$5(Lcom/pinguo/album/views/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    iget-object v4, v4, Lcom/pinguo/album/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/pinguo/album/views/HorizontalListView$2;->this$0:Lcom/pinguo/album/views/HorizontalListView;

    #getter for: Lcom/pinguo/album/views/HorizontalListView;->mLeftViewIndex:I
    invoke-static {v5}, Lcom/pinguo/album/views/HorizontalListView;->access$5(Lcom/pinguo/album/views/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_9

    :cond_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
