.class public Lcom/twidroid/ui/b/e;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field final a:Landroid/graphics/Paint;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I


# direct methods
.method public constructor <init>(II)V
    .registers 6

    const/16 v2, 0x64

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/ui/b/e;->a:Landroid/graphics/Paint;

    iput v2, p0, Lcom/twidroid/ui/b/e;->b:I

    iput v2, p0, Lcom/twidroid/ui/b/e;->c:I

    iput v2, p0, Lcom/twidroid/ui/b/e;->d:I

    iput v2, p0, Lcom/twidroid/ui/b/e;->e:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/twidroid/ui/b/e;->f:I

    iget-object v0, p0, Lcom/twidroid/ui/b/e;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/twidroid/ui/b/e;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/twidroid/ui/b/e;->f:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    const v2, 0x3f4ccccd

    iget v0, p0, Lcom/twidroid/ui/b/e;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/twidroid/ui/b/e;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v3, p0, Lcom/twidroid/ui/b/e;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/twidroid/ui/b/e;->d:I

    iget v5, p0, Lcom/twidroid/ui/b/e;->e:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v3, v0

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-int v0, v0

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/twidroid/ui/b/e;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/b/e;->f:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    iget v0, p0, Lcom/twidroid/ui/b/e;->f:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/b/e;->f:I

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/b/e;->f:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 6

    iget v0, p0, Lcom/twidroid/ui/b/e;->e:I

    iget v1, p0, Lcom/twidroid/ui/b/e;->e:I

    iget v2, p0, Lcom/twidroid/ui/b/e;->e:I

    iget v3, p0, Lcom/twidroid/ui/b/e;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput p4, p0, Lcom/twidroid/ui/b/e;->e:I

    iput p3, p0, Lcom/twidroid/ui/b/e;->c:I

    iput p1, p0, Lcom/twidroid/ui/b/e;->b:I

    iput p2, p0, Lcom/twidroid/ui/b/e;->d:I

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/twidroid/ui/b/e;->e:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/twidroid/ui/b/e;->c:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/twidroid/ui/b/e;->b:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/twidroid/ui/b/e;->d:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
