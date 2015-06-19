.class public Lcom/twidroid/ui/widgets/HorizontialListView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# instance fields
.field public a:Z

.field protected b:Landroid/widget/ListAdapter;

.field protected c:I

.field protected d:I

.field protected e:Landroid/widget/Scroller;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/GestureDetector;

.field private k:Ljava/util/Queue;

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Landroid/database/DataSetObserver;

.field private s:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    iput v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    iput v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->k:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->o:Z

    iput-boolean v2, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->p:Z

    new-instance v0, Lcom/twidroid/ui/widgets/HorizontialListView$1;

    invoke-direct {v0, p0}, Lcom/twidroid/ui/widgets/HorizontialListView$1;-><init>(Lcom/twidroid/ui/widgets/HorizontialListView;)V

    iput-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->r:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/twidroid/ui/widgets/HorizontialListView$3;

    invoke-direct {v0, p0}, Lcom/twidroid/ui/widgets/HorizontialListView$3;-><init>(Lcom/twidroid/ui/widgets/HorizontialListView;)V

    iput-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->s:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->a()V

    return-void
.end method

.method private declared-synchronized a()V
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->s:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->j:Landroid/view/GestureDetector;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(II)V
    .registers 6

    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_54

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_54

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->b(Landroid/view/View;I)V

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->a(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_46

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    :cond_46
    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    if-gez v0, :cond_4d

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    :cond_4d
    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    goto :goto_0

    :cond_54
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 6

    const/4 v1, -0x1

    const/high16 v2, -0x8000

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/ui/widgets/HorizontialListView;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/ui/widgets/HorizontialListView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->a()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_11
    invoke-direct {p0, v0, p1}, Lcom/twidroid/ui/widgets/HorizontialListView;->a(II)V

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_1e
    invoke-direct {p0, v1, p1}, Lcom/twidroid/ui/widgets/HorizontialListView;->b(II)V

    return-void

    :cond_22
    move v0, v1

    goto :goto_11
.end method

.method private b(II)V
    .registers 6

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_37

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    if-ltz v0, :cond_37

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->b(Landroid/view/View;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->a(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    goto :goto_0

    :cond_37
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method static synthetic c(Lcom/twidroid/ui/widgets/HorizontialListView;)I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    return v0
.end method

.method private c(I)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_2a

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->f:I

    invoke-virtual {p0, v3}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_2a
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_34
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_5a

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->g:I

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_34

    :cond_5a
    return-void
.end method

.method static synthetic d(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private d(I)V
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->i:I

    move v2, v0

    move v0, v1

    :goto_10
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2b

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2b
    return-void
.end method

.method static synthetic e(Lcom/twidroid/ui/widgets/HorizontialListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v1
.end method

.method protected a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->j:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->b()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V

    return-void
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_6b

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->o:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->c:I

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->a()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->removeAllViewsInLayout()V

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->o:Z

    :cond_1b
    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    :cond_2b
    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    if-gtz v0, :cond_38

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_38
    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    if-lt v0, v1, :cond_48

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->h:I

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_48
    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->c:I

    iget v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->c(I)V

    invoke-direct {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->b(I)V

    invoke-direct {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->d(I)V

    iget v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->d:I

    iput v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->c:I

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/twidroid/ui/widgets/HorizontialListView$2;

    invoke-direct {v0, p0}, Lcom/twidroid/ui/widgets/HorizontialListView$2;-><init>(Lcom/twidroid/ui/widgets/HorizontialListView;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->post(Ljava/lang/Runnable;)Z
    :try_end_6a
    .catchall {:try_start_a .. :try_end_6a} :catchall_6b

    goto :goto_8

    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onMeasure(II)V
    .registers 11

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x4000

    if-eq v0, v1, :cond_87

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->p:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildCount()I

    move-result v2

    move v1, v3

    move v0, v3

    :goto_16
    if-ge v1, v2, :cond_71

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v0, :cond_29

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    move v2, v3

    move v1, v3

    :goto_3b
    if-ge v2, v5, :cond_70

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-le v6, v1, :cond_88

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_6b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3b

    :cond_70
    move v0, v1

    :cond_71
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_80

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ge v1, v0, :cond_80

    move v0, v1

    :cond_80
    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->setMeasuredDimension(II)V

    :cond_87
    return-void

    :cond_88
    move v0, v1

    goto :goto_6b
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/widgets/HorizontialListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->r:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->r:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->b()V

    return-void
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->setSelection(I)V

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_23
    return-void
.end method

.method public setHeightMeasureMode(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->p:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->p:Z

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .registers 2

    iput p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView;->q:I

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V

    return-void
.end method
