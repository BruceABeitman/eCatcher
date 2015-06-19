.class public Lcom/twidroid/ui/widgets/gesture/GestureImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final b:Ljava/lang/String; = "http://schemas.polites.com/android"


# instance fields
.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:Z

.field private v:I

.field private w:I

.field private x:Lcom/twidroid/ui/widgets/gesture/d;

.field private y:Lcom/twidroid/ui/widgets/gesture/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->e:F

    iput v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->f:F

    iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->g:Z

    iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->h:Z

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->i:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->j:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->k:F

    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->l:F

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->m:F

    iput v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->n:F

    iput v3, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->o:I

    iput v3, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->t:I

    iput-boolean v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->u:Z

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->e:F

    iput v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->f:F

    iput-boolean v3, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->g:Z

    iput-boolean v3, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->h:Z

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->i:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->j:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->k:F

    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->l:F

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->m:F

    iput v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->n:F

    iput v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->o:I

    iput v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->t:I

    iput-boolean v3, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->u:Z

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "src"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setImageResource(I)V

    const-string v0, "http://schemas.polites.com/android"

    const-string v1, "min-scale"

    iget v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->m:F

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setMinScale(F)V

    const-string v0, "http://schemas.polites.com/android"

    const-string v1, "max-scale"

    iget v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->l:F

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setMaxScale(F)V

    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 3

    iput p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->e:F

    iput p2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->f:F

    return-void
.end method

.method protected a(III)V
    .registers 9

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->o:I

    if-eq v0, p3, :cond_b

    iput-boolean v4, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->g:Z

    iput p3, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->o:I

    :cond_b
    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_74

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->g:Z

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->r:F

    int-to-float v2, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->s:F

    const/4 v2, 0x2

    if-ne p3, v2, :cond_75

    iput p2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->v:I

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    iget v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->v:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->w:I

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->v:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->j:F

    :goto_46
    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->j:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->i:F

    int-to-float v0, p1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->p:F

    int-to-float v0, p2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->q:F

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->p:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->e:F

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->q:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->f:F

    new-instance v0, Lcom/twidroid/ui/widgets/gesture/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/twidroid/ui/widgets/gesture/e;-><init>(Lcom/twidroid/ui/widgets/gesture/GestureImageView;II)V

    iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->m:F

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/gesture/e;->b(F)V

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->l:F

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/gesture/e;->a(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->g:Z

    iput-boolean v4, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->h:Z

    :cond_74
    return-void

    :cond_75
    iput p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->w:I

    iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iget v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->w:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->v:I

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->w:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->j:F

    goto :goto_46
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget-boolean v1, v1, Lcom/twidroid/ui/widgets/gesture/e;->e:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget-object v1, v1, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget v2, v2, Lcom/twidroid/ui/widgets/gesture/e;->c:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget-object v1, v1, Lcom/twidroid/ui/widgets/gesture/e;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    iget v2, v2, Lcom/twidroid/ui/widgets/gesture/e;->d:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->g:Z

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->requestLayout()V

    return-void
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->invalidate()V

    return-void
.end method

.method public d()V
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->p:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->e:F

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->q:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->f:F

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->j:F

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->i:F

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c()V

    return-void
.end method

.method public getGestureImageViewListener()Lcom/twidroid/ui/widgets/gesture/d;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->x:Lcom/twidroid/ui/widgets/gesture/d;

    return-object v0
.end method

.method public getImageHeight()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_5
.end method

.method public getImageWidth()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_5
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->i:F

    return v0
.end method

.method public getX()F
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->e:F

    return v0
.end method

.method public getY()F
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->f:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->t:I

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->t:I

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setImageResource(I)V

    :cond_d
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->u:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    :cond_13
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->g:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->h:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->h:Z

    :cond_b
    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->k:F

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->i:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->e:F

    iget v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->f:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_32

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->n:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_32
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3b
    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->r:F

    neg-float v1, v1

    iget v2, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->s:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->w:I

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->v:I

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->a(III)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->v:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->w:I

    iget v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->w:I

    iget v1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->v:I

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    invoke-virtual {v0, p0, p1}, Lcom/twidroid/ui/widgets/gesture/e;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setGestureImageViewListener(Lcom/twidroid/ui/widgets/gesture/d;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->x:Lcom/twidroid/ui/widgets/gesture/d;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->b()V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->requestLayout()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    if-ltz p1, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->u:Z

    iput p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->t:I

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->b()V

    :cond_18
    return-void
.end method

.method public setMaxScale(F)V
    .registers 3

    iput p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->l:F

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/widgets/gesture/e;->a(F)V

    :cond_b
    return-void
.end method

.method public setMinScale(F)V
    .registers 3

    iput p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->m:F

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->y:Lcom/twidroid/ui/widgets/gesture/e;

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/widgets/gesture/e;->b(F)V

    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 2

    iput p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->n:F

    return-void
.end method

.method public setScale(F)V
    .registers 2

    iput p1, p0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->i:F

    return-void
.end method
