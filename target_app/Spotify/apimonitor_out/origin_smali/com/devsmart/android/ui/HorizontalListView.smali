.class public Lcom/devsmart/android/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field protected b:Landroid/widget/ListAdapter;

.field protected c:I

.field protected d:I

.field protected e:Landroid/widget/Scroller;

.field f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/view/GestureDetector;

.field private l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/widget/ListView;

.field private v:Z

.field private w:Z

.field private x:Landroid/database/DataSetObserver;

.field private y:Ljava/lang/Runnable;

.field private z:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->l:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->m:Z

    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->t:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->w:Z

    new-instance v0, Lcom/devsmart/android/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/devsmart/android/ui/HorizontalListView$1;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->x:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/devsmart/android/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/devsmart/android/ui/HorizontalListView$2;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->y:Ljava/lang/Runnable;

    new-instance v0, Lcom/devsmart/android/ui/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/devsmart/android/ui/HorizontalListView$3;-><init>(Lcom/devsmart/android/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->z:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->c()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->q:F

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

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/devsmart/android/ui/HorizontalListView;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->m:Z

    return v0
.end method

.method private b(Landroid/view/View;I)Landroid/view/View;
    .registers 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->r:I

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->r:I

    div-int/lit8 v2, v2, 0x2

    if-nez p2, :cond_c

    move v0, v1

    :cond_c
    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_22

    :goto_16
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1

    :cond_22
    move v1, v2

    goto :goto_16
.end method

.method static synthetic b(Lcom/devsmart/android/ui/HorizontalListView;)V
    .registers 1

    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->d()V

    return-void
.end method

.method static synthetic c(Lcom/devsmart/android/ui/HorizontalListView;)I
    .registers 2

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    return v0
.end method

.method private declared-synchronized c()V
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->z:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->k:Landroid/view/GestureDetector;

    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->u:Landroid/widget/ListView;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->c()V

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->x:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->x:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->d()V

    return-void
.end method

.method protected final a(F)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    iget v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    const/4 v2, 0x0

    neg-float v3, p1

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->f:Z

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_d

    :goto_c
    return v0

    :cond_d
    packed-switch v2, :pswitch_data_24

    goto :goto_c

    :pswitch_11
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->p:F

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->n:I

    move v0, v1

    goto :goto_c

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .registers 13

    const/4 v5, -0x2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b6

    if-nez v0, :cond_c

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->m:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->c:I

    invoke-direct {p0}, Lcom/devsmart/android/ui/HorizontalListView;->c()V

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->removeAllViewsInLayout()V

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    :cond_1a
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    :cond_2a
    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    if-gtz v0, :cond_37

    const/4 v0, 0x0

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_37
    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    if-lt v0, v2, :cond_47

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_47
    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->c:I

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    sub-int v3, v0, v2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_52
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v3

    if-gtz v2, :cond_84

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v5, :cond_75

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->l:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_75
    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_52

    :cond_84
    :goto_84
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v4

    if-lt v2, v4, :cond_b9

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v5, :cond_ac

    iget-object v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->l:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_ac
    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I
    :try_end_b5
    .catchall {:try_start_c .. :try_end_b5} :catchall_b6

    goto :goto_84

    :catchall_b6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b9
    :try_start_b9
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1aa

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_c9
    move v2, v0

    :goto_ca
    add-int v0, v2, v3

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_120

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_120

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v5, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v4, v5, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    invoke-direct {p0, v0, v4}, Lcom/devsmart/android/ui/HorizontalListView;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/4 v4, -0x1

    invoke-direct {p0, v0, v4}, Lcom/devsmart/android/ui/HorizontalListView;->a(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_111

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->c:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    :cond_111
    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    if-gez v2, :cond_118

    const/4 v2, 0x0

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->i:I

    :cond_118
    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->h:I

    move v2, v0

    goto :goto_ca

    :cond_120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_12b
    move v2, v0

    :goto_12c
    add-int v0, v2, v3

    if-lez v0, :cond_165

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    if-ltz v0, :cond_165

    iget-object v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->b:Landroid/widget/ListAdapter;

    iget v5, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v4, v5, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    invoke-direct {p0, v0, v4}, Lcom/devsmart/android/ui/HorizontalListView;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/devsmart/android/ui/HorizontalListView;->a(Landroid/view/View;I)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->g:I

    iget v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    move v2, v0

    goto :goto_12c

    :cond_165
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_18e

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->j:I

    :goto_172
    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_18e

    invoke-virtual {p0, v1}, Lcom/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    add-int v5, v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_172

    :cond_18e
    iget v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->d:I

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->c:I

    iget-boolean v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->m:Z

    if-nez v0, :cond_19e

    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1a3

    :cond_19e
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/devsmart/android/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_1a3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->m:Z
    :try_end_1a6
    .catchall {:try_start_b9 .. :try_end_1a6} :catchall_b6

    goto/16 :goto_a

    :cond_1a8
    move v0, v1

    goto :goto_12b

    :cond_1aa
    move v0, v1

    goto/16 :goto_c9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v1, :cond_12

    iput-boolean v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->w:Z

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_a0

    :cond_19
    move v1, v0

    :cond_1a
    :goto_1a
    if-eqz v1, :cond_9

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->k:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_9

    :pswitch_28
    iput-boolean v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->w:Z

    goto :goto_1a

    :pswitch_2b
    iget-boolean v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->v:Z

    if-eqz v3, :cond_50

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->p:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/devsmart/android/ui/HorizontalListView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_50

    iget-boolean v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->w:Z

    if-eqz v3, :cond_50

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Lcom/devsmart/android/ui/HorizontalListView;->n:I

    move v1, v0

    goto :goto_1a

    :cond_50
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->n:I

    if-ne v3, v5, :cond_56

    move v1, v0

    goto :goto_1a

    :cond_56
    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->n:I

    if-eq v3, v1, :cond_1a

    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->q:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_7c

    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->o:F

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->q:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->o:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/devsmart/android/ui/HorizontalListView;->q:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7f

    :cond_7c
    iput v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->n:I

    goto :goto_1a

    :cond_7f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->p:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/devsmart/android/ui/HorizontalListView;->q:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_19

    iget-boolean v1, p0, Lcom/devsmart/android/ui/HorizontalListView;->w:Z

    if-eqz v1, :cond_19

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v5, p0, Lcom/devsmart/android/ui/HorizontalListView;->n:I

    move v1, v0

    goto :goto_1a

    :pswitch_9b
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1a

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_9b
        :pswitch_2b
        :pswitch_9b
    .end packed-switch
.end method

.method public synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/devsmart/android/ui/HorizontalListView;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setSelection(I)V
    .registers 2

    return-void
.end method
