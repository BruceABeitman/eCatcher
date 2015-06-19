.class final Lcom/devsmart/android/ui/HorizontalListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devsmart/android/ui/HorizontalListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/devsmart/android/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/devsmart/android/ui/HorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->b()Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, p3}, Lcom/devsmart/android/ui/HorizontalListView;->a(F)Z

    move-result v0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .registers 10

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_8
    if-ge v6, v7, :cond_26

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->c(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v3, v0, v6

    invoke-static {p1, v2}, Lcom/devsmart/android/ui/HorizontalListView$3;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v2}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget v2, v0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget-boolean v0, v0, Lcom/devsmart/android/ui/HorizontalListView;->f:Z

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return v4

    :cond_9
    move v1, v4

    :goto_a
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->c(Lcom/devsmart/android/ui/HorizontalListView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v3, v0, v1

    invoke-static {p1, v2}, Lcom/devsmart/android/ui/HorizontalListView$3;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    move-result v0

    if-eqz v0, :cond_30

    move v4, v6

    goto :goto_8

    :cond_30
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v4, v6

    goto :goto_8

    :cond_47
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView$3;->a:Lcom/devsmart/android/ui/HorizontalListView;

    iget-object v4, v4, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v4, v6

    goto :goto_8

    :cond_5e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a
.end method
