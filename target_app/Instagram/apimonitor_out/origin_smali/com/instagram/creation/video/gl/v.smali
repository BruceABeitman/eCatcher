.class public Lcom/instagram/creation/video/gl/v;
.super Ljava/lang/Object;
.source "GLView.java"


# instance fields
.field protected final a:Landroid/graphics/Rect;

.field protected final b:Landroid/graphics/Rect;

.field protected c:Lcom/instagram/creation/video/gl/v;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field private j:Lcom/instagram/creation/video/gl/q;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/creation/video/gl/v;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/instagram/creation/video/gl/v;

.field private m:I

.field private n:I

.field private o:I

.field private p:[F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/gl/v;->b:Landroid/graphics/Rect;

    iput v1, p0, Lcom/instagram/creation/video/gl/v;->m:I

    iput v1, p0, Lcom/instagram/creation/video/gl/v;->d:I

    iput v1, p0, Lcom/instagram/creation/video/gl/v;->e:I

    iput v2, p0, Lcom/instagram/creation/video/gl/v;->n:I

    iput v2, p0, Lcom/instagram/creation/video/gl/v;->o:I

    iput v1, p0, Lcom/instagram/creation/video/gl/v;->f:I

    iput v1, p0, Lcom/instagram/creation/video/gl/v;->g:I

    iput v1, p0, Lcom/instagram/creation/video/gl/v;->h:I

    iput v1, p0, Lcom/instagram/creation/video/gl/v;->i:I

    return-void
.end method

.method private a(I)Lcom/instagram/creation/video/gl/v;
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/v;

    return-object v0
.end method

.method private a(Lcom/instagram/creation/video/gl/c;Lcom/instagram/creation/video/gl/v;)V
    .registers 7

    invoke-direct {p2}, Lcom/instagram/creation/video/gl/v;->g()I

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p2, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/instagram/creation/video/gl/v;->g:I

    sub-int/2addr v0, v1

    iget-object v1, p2, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/instagram/creation/video/gl/v;->f:I

    sub-int/2addr v1, v2

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p1, v2, v3}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    invoke-virtual {p2, p1}, Lcom/instagram/creation/video/gl/v;->a(Lcom/instagram/creation/video/gl/c;)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    goto :goto_6
.end method

.method private a(IIII)Z
    .registers 9

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    iget-object v2, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1b

    add-int/lit8 v0, p4, 0x0

    iget-object v2, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_22

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    iget-object v2, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v0

    :cond_22
    move v0, v1

    goto :goto_1c
.end method

.method private static a(Landroid/view/MotionEvent;IILcom/instagram/creation/video/gl/v;Z)Z
    .registers 9

    iget-object v0, p3, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz p4, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_e
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p0}, Lcom/instagram/creation/video/gl/v;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_22

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_27
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private b(Lcom/instagram/creation/video/gl/c;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->p:[F

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->p:[F

    invoke-interface {p1, v0}, Lcom/instagram/creation/video/gl/c;->a([F)V

    :cond_9
    return-void
.end method

.method private b(Lcom/instagram/creation/video/gl/q;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/creation/video/gl/v;->j:Lcom/instagram/creation/video/gl/q;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/v;->h()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_13

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/v;->a(I)Lcom/instagram/creation/video/gl/v;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/instagram/creation/video/gl/v;->b(Lcom/instagram/creation/video/gl/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    return-void
.end method

.method private g()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/video/gl/v;->m:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private h()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method private i()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/v;->h()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_11

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/v;->a(I)Lcom/instagram/creation/video/gl/v;

    move-result-object v2

    invoke-direct {v2}, Lcom/instagram/creation/video/gl/v;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/gl/v;->j:Lcom/instagram/creation/video/gl/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->c:Lcom/instagram/creation/video/gl/v;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->j:Lcom/instagram/creation/video/gl/q;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/instagram/creation/video/l/m;->a(Z)V

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/v;->i()V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final a(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/instagram/creation/video/gl/v;->a(IIII)Z

    iget v0, p0, Lcom/instagram/creation/video/gl/v;->m:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/instagram/creation/video/gl/v;->m:I

    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/v;->f()V

    return-void
.end method

.method protected a(Lcom/instagram/creation/video/gl/c;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/v;->b(Lcom/instagram/creation/video/gl/c;)V

    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->b()V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/v;->h()I

    move-result v1

    :goto_b
    if-ge v0, v1, :cond_17

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/v;->a(I)Lcom/instagram/creation/video/gl/v;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/instagram/creation/video/gl/v;->a(Lcom/instagram/creation/video/gl/c;Lcom/instagram/creation/video/gl/v;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->c()V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/q;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->c:Lcom/instagram/creation/video/gl/v;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->j:Lcom/instagram/creation/video/gl/q;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/instagram/creation/video/l/m;->a(Z)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/v;->b(Lcom/instagram/creation/video/gl/q;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final a(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v4, p0, Lcom/instagram/creation/video/gl/v;->l:Lcom/instagram/creation/video/gl/v;

    if-eqz v4, :cond_26

    if-nez v1, :cond_43

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v5, p0, Lcom/instagram/creation/video/gl/v;->l:Lcom/instagram/creation/video/gl/v;

    invoke-static {v4, v2, v3, v5, v6}, Lcom/instagram/creation/video/gl/v;->a(Landroid/view/MotionEvent;IILcom/instagram/creation/video/gl/v;Z)Z

    iput-object v7, p0, Lcom/instagram/creation/video/gl/v;->l:Lcom/instagram/creation/video/gl/v;

    :cond_26
    if-nez v1, :cond_52

    invoke-direct {p0}, Lcom/instagram/creation/video/gl/v;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2e
    if-ltz v1, :cond_52

    invoke-direct {p0, v1}, Lcom/instagram/creation/video/gl/v;->a(I)Lcom/instagram/creation/video/gl/v;

    move-result-object v4

    invoke-direct {v4}, Lcom/instagram/creation/video/gl/v;->g()I

    move-result v5

    if-nez v5, :cond_4f

    invoke-static {p1, v2, v3, v4, v0}, Lcom/instagram/creation/video/gl/v;->a(Landroid/view/MotionEvent;IILcom/instagram/creation/video/gl/v;Z)Z

    move-result v5

    if-eqz v5, :cond_4f

    iput-object v4, p0, Lcom/instagram/creation/video/gl/v;->l:Lcom/instagram/creation/video/gl/v;

    :cond_42
    :goto_42
    return v0

    :cond_43
    iget-object v4, p0, Lcom/instagram/creation/video/gl/v;->l:Lcom/instagram/creation/video/gl/v;

    invoke-static {p1, v2, v3, v4, v6}, Lcom/instagram/creation/video/gl/v;->a(Landroid/view/MotionEvent;IILcom/instagram/creation/video/gl/v;Z)Z

    if-eq v1, v5, :cond_4c

    if-ne v1, v0, :cond_42

    :cond_4c
    iput-object v7, p0, Lcom/instagram/creation/video/gl/v;->l:Lcom/instagram/creation/video/gl/v;

    goto :goto_42

    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    :cond_52
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/v;->e()Z

    move-result v0

    goto :goto_42
.end method

.method public final b()I
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/instagram/creation/video/gl/v;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()Lcom/instagram/creation/video/gl/q;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/v;->j:Lcom/instagram/creation/video/gl/q;

    return-object v0
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected f()V
    .registers 1

    return-void
.end method
