.class public final Lcom/instagram/cliffjumper/a/a;
.super Ljava/lang/Object;
.source "IgMultiTouchDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/instagram/cliffjumper/a/b;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/MotionEvent$PointerCoords;

.field private g:Landroid/view/MotionEvent$PointerCoords;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/a/a;->b:Z

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method private static a(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;)F
    .registers 5

    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v1, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static b(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;)F
    .registers 6

    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v1, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/a/b;->e()V

    :cond_a
    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/instagram/cliffjumper/a/a;->b:Z

    iput-boolean v1, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/a/b;->e()V

    :cond_d
    return-void
.end method

.method public final a(Lcom/instagram/cliffjumper/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v7, -0x1

    const/high16 v8, 0x4000

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/instagram/cliffjumper/a/a;->b:Z

    if-nez v1, :cond_18

    :goto_17
    return v2

    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_19e

    :cond_1f
    :goto_1f
    :pswitch_1f
    move v2, v3

    goto :goto_17

    :pswitch_21
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/a/b;->d()V

    iput-boolean v3, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    :cond_2c
    invoke-direct {p0, p2}, Lcom/instagram/cliffjumper/a/a;->a(Landroid/view/MotionEvent;)V

    goto :goto_1f

    :pswitch_30
    iput-boolean v3, p0, Lcom/instagram/cliffjumper/a/a;->b:Z

    invoke-direct {p0, p2}, Lcom/instagram/cliffjumper/a/a;->a(Landroid/view/MotionEvent;)V

    goto :goto_1f

    :pswitch_36
    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1f

    :pswitch_4b
    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_c1

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v2, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent$PointerCoords;

    iget-boolean v1, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    if-nez v1, :cond_7c

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/a/a;->a(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;)F

    move-result v1

    const/high16 v4, 0x4120

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a3

    :cond_7c
    iget-boolean v1, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    if-nez v1, :cond_87

    iput-boolean v3, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    invoke-interface {v1}, Lcom/instagram/cliffjumper/a/b;->d()V

    :cond_87
    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    iget-object v4, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v5, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v6, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v0, v7, v0

    invoke-interface {v1, v4, v5, v6, v0}, Lcom/instagram/cliffjumper/a/b;->b(FFFF)V

    :cond_a3
    :goto_a3
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    if-eqz v0, :cond_1f

    move v1, v2

    :goto_a8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a8

    :cond_c1
    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent$PointerCoords;

    iget-object v6, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent$PointerCoords;

    if-eq v4, v7, :cond_159

    iget-object v6, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v4, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :goto_110
    if-eq v5, v7, :cond_166

    iget-object v4, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v5, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :goto_117
    iget-object v4, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v5, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v4, v5

    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v6, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v6, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v5, v6

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v7, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget-object v7, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v6, v7}, Lcom/instagram/cliffjumper/a/a;->a(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;)F

    move-result v6

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/a/a;->a(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;)F

    move-result v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget-object v8, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v7, v8}, Lcom/instagram/cliffjumper/a/a;->b(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;)F

    move-result v7

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/a/a;->b(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;)F

    move-result v0

    sub-float v0, v7, v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    invoke-interface {v1, v4, v5, v6, v0}, Lcom/instagram/cliffjumper/a/b;->a(FFFF)V

    goto/16 :goto_a3

    :cond_159
    iget-object v4, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v6, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v4, p0, Lcom/instagram/cliffjumper/a/a;->f:Landroid/view/MotionEvent$PointerCoords;

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v6, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_110

    :cond_166
    iget-object v4, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v4, p0, Lcom/instagram/cliffjumper/a/a;->g:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_117

    :pswitch_173
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/a/a;->c:Z

    if-nez v0, :cond_194

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->e:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/instagram/cliffjumper/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent$PointerCoords;

    iget-object v1, p0, Lcom/instagram/cliffjumper/a/a;->a:Lcom/instagram/cliffjumper/a/b;

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-interface {v1, v2, v0}, Lcom/instagram/cliffjumper/a/b;->a(FF)V

    :cond_194
    invoke-direct {p0}, Lcom/instagram/cliffjumper/a/a;->b()V

    goto/16 :goto_1f

    :pswitch_199
    invoke-direct {p0}, Lcom/instagram/cliffjumper/a/a;->b()V

    goto/16 :goto_1f

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_30
        :pswitch_173
        :pswitch_4b
        :pswitch_199
        :pswitch_1f
        :pswitch_21
        :pswitch_36
    .end packed-switch
.end method
