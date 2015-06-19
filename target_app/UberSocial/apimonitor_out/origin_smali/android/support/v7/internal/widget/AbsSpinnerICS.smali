.class abstract Landroid/support/v7/internal/widget/AbsSpinnerICS;
.super Landroid/support/v7/internal/widget/n;
.source "SourceFile"


# instance fields
.field private M:Landroid/database/DataSetObserver;

.field private N:Landroid/graphics/Rect;

.field a:Landroid/widget/SpinnerAdapter;

.field b:I

.field c:I

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:I

.field final i:Landroid/graphics/Rect;

.field final j:Landroid/support/v7/internal/widget/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/n;-><init>(Landroid/content/Context;)V

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->g:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/internal/widget/b;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/b;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->w()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->g:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v7/internal/widget/b;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/b;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->w()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private w()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 7

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->N:Landroid/graphics/Rect;

    if-nez v0, :cond_d

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->N:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->N:Landroid/graphics/Rect;

    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2f

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->m:I

    add-int/2addr v0, v1

    :goto_2b
    return v0

    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2f
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method a(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method a()V
    .registers 4

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->A:Z

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->r:Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeAllViewsInLayout()V

    iput v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->J:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->K:J

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d(I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e(I)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V

    return-void
.end method

.method public a(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e(I)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V

    return-void
.end method

.method public a(IZ)V
    .registers 5

    if-eqz p2, :cond_16

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->m:I

    if-gt v0, p1, :cond_16

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->m:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_16

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->b(IZ)V

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic a(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->M:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a()V

    :cond_f
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->J:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->K:J

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4e

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->F:I

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->G:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->F:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->q()V

    new-instance v1, Landroid/support/v7/internal/widget/p;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/p;-><init>(Landroid/support/v7/internal/widget/n;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->M:Landroid/database/DataSetObserver;

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->M:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->F:I

    if-lez v1, :cond_3d

    const/4 v0, 0x0

    :cond_3d
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d(I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e(I)V

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->F:I

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->t()V

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V

    return-void

    :cond_4e
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->q()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->t()V

    goto :goto_4a
.end method

.method b(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method b()V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;

    iget v3, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->m:I

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v3, v0

    invoke-virtual {v2, v5, v4}, Landroid/support/v7/internal/widget/b;->a(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method b(IZ)V
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->J:I

    if-eq p1, v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->D:I

    sub-int v0, p1, v0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e(I)V

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->c(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z

    :cond_14
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->F:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->D:I

    if-ltz v0, :cond_12

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->D:I

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->m:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method abstract c(IZ)V
.end method

.method public d()Landroid/widget/SpinnerAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->F:I

    return v0
.end method

.method public synthetic f()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingBottom()I

    move-result v3

    iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v8, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e:I

    if-le v0, v8, :cond_d1

    :goto_1c
    iput v0, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f:I

    if-le v1, v0, :cond_d5

    move v0, v1

    :goto_25
    iput v0, v7, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->g:I

    if-le v2, v0, :cond_d9

    move v0, v2

    :goto_2e
    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->h:I

    if-le v3, v0, :cond_dd

    move v0, v3

    :goto_37
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->A:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->s()V

    :cond_40
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j()I

    move-result v1

    if-ltz v1, :cond_e1

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_e1

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_e1

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/b;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_61

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_61
    if-eqz v0, :cond_68

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/internal/widget/b;->a(ILandroid/view/View;)V

    :cond_68
    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_7b

    iput-boolean v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z

    :cond_7b
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    move v2, v4

    :goto_9b
    if-eqz v2, :cond_b1

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    if-nez v6, :cond_b1

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    :cond_b1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setMeasuredDimension(II)V

    iput p2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->b:I

    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->c:I

    return-void

    :cond_d1
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e:I

    goto/16 :goto_1c

    :cond_d5
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f:I

    goto/16 :goto_25

    :cond_d9
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->g:I

    goto/16 :goto_2e

    :cond_dd
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->h:I

    goto/16 :goto_37

    :cond_e1
    move v2, v5

    move v0, v4

    move v1, v4

    goto :goto_9b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    const/4 v4, 0x1

    check-cast p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    iput-boolean v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->A:Z

    iput-boolean v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->r:Z

    iget-wide v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->p:J

    iget v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->b:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->o:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->s:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V

    :cond_24
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    invoke-super {p0}, Landroid/support/v7/internal/widget/n;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->k()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J

    iget-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1e

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j()I

    move-result v0

    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->b:I

    :goto_1d
    return-object v1

    :cond_1e
    const/4 v0, -0x1

    iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->b:I

    goto :goto_1d
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/support/v7/internal/widget/n;->requestLayout()V

    :cond_7
    return-void
.end method
