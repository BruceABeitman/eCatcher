.class Lcom/instagram/creation/photo/crop/CropImageView;
.super Lcom/instagram/creation/photo/crop/q;
.source "CropImageView.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/creation/photo/crop/o;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/instagram/creation/photo/crop/o;

.field c:F

.field d:F

.field e:I

.field private m:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/photo/crop/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    return-void
.end method

.method private b(Lcom/instagram/creation/photo/crop/o;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v1, p1, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz v2, :cond_3e

    :goto_32
    if-eqz v0, :cond_40

    :goto_34
    if-nez v2, :cond_38

    if-eqz v0, :cond_3d

    :cond_38
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->b(FF)V

    :cond_3d
    return-void

    :cond_3e
    move v2, v3

    goto :goto_32

    :cond_40
    move v0, v1

    goto :goto_34
.end method

.method private c(Lcom/instagram/creation/photo/crop/o;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3f19999a

    iget-object v0, p1, Lcom/instagram/creation/photo/crop/o;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v1

    mul-float/2addr v1, v4

    div-float v0, v3, v0

    mul-float/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_66

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/instagram/creation/photo/crop/o;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v6

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v1, v5

    aget v1, v1, v6

    invoke-virtual {p0, v0, v2, v1}, Lcom/instagram/creation/photo/crop/CropImageView;->b(FFF)V

    :cond_66
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/CropImageView;->b(Lcom/instagram/creation/photo/crop/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected final a(FF)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/instagram/creation/photo/crop/q;->a(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/o;

    iget-object v2, v0, Lcom/instagram/creation/photo/crop/o;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/o;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_21
    return-void
.end method

.method protected final a(FFF)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/instagram/creation/photo/crop/q;->a(FFF)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/o;

    iget-object v2, v0, Lcom/instagram/creation/photo/crop/o;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/o;->d()V

    goto :goto_9

    :cond_22
    return-void
.end method

.method public final a(Lcom/instagram/creation/photo/crop/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->m:Lcom/instagram/creation/photo/crop/b;

    return-void
.end method

.method public final a(Lcom/instagram/creation/photo/crop/o;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/q;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/o;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/photo/crop/o;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    invoke-super/range {p0 .. p5}, Lcom/instagram/creation/photo/crop/q;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->h:Lcom/instagram/creation/photo/b/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/b/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/o;

    iget-object v2, v0, Lcom/instagram/creation/photo/crop/o;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/o;->d()V

    iget-boolean v2, v0, Lcom/instagram/creation/photo/crop/o;->b:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->c(Lcom/instagram/creation/photo/crop/o;)V

    goto :goto_11

    :cond_31
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->m:Lcom/instagram/creation/photo/crop/b;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->m:Lcom/instagram/creation/photo/crop/b;

    iget-boolean v1, v1, Lcom/instagram/creation/photo/crop/b;->a:Z

    if-eqz v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_b4

    :cond_14
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_be

    :cond_1b
    :goto_1b
    move v0, v2

    goto :goto_c

    :pswitch_1d
    move v1, v0

    :goto_1e
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/crop/o;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/instagram/creation/photo/crop/o;->a(FF)I

    move-result v3

    if-eq v3, v2, :cond_5b

    iput v3, p0, Lcom/instagram/creation/photo/crop/CropImageView;->e:I

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->d:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    const/16 v0, 0x20

    if-ne v3, v0, :cond_58

    sget v0, Lcom/instagram/creation/photo/crop/p;->b:I

    :goto_54
    invoke-virtual {v1, v0}, Lcom/instagram/creation/photo/crop/o;->a(I)V

    goto :goto_14

    :cond_58
    sget v0, Lcom/instagram/creation/photo/crop/p;->c:I

    goto :goto_54

    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :pswitch_5f
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->c(Lcom/instagram/creation/photo/crop/o;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    sget v1, Lcom/instagram/creation/photo/crop/p;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/o;->a(I)V

    :cond_6f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    goto :goto_14

    :pswitch_73
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    iget v1, p0, Lcom/instagram/creation/photo/crop/CropImageView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/instagram/creation/photo/crop/CropImageView;->c:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/instagram/creation/photo/crop/CropImageView;->d:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/instagram/creation/photo/crop/o;->a(IFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->d:F

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/CropImageView;->b:Lcom/instagram/creation/photo/crop/o;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/CropImageView;->b(Lcom/instagram/creation/photo/crop/o;)V

    goto/16 :goto_14

    :pswitch_9f
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->c()V

    goto/16 :goto_1b

    :pswitch_a4
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/CropImageView;->c()V

    goto/16 :goto_1b

    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_5f
        :pswitch_73
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_a4
    .end packed-switch
.end method
