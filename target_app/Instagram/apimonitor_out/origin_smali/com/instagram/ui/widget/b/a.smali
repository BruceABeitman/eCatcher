.class public Lcom/instagram/ui/widget/b/a;
.super Lcom/instagram/ui/text/FreightSansTextView;
.source "ImageWithFreightSansTextView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Z

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Lcom/instagram/ui/text/FreightSansTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/ui/widget/b/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/b/a;->c:Z

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->d:F

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, p2}, Lcom/instagram/ui/text/FreightSansTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/instagram/ui/widget/b/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/b/a;->c:Z

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->d:F

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->e:F

    invoke-direct {p0, p1, p2, v2}, Lcom/instagram/ui/widget/b/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/text/FreightSansTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/ui/widget/b/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/b/a;->c:Z

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->d:F

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->e:F

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/widget/b/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    sget-object v0, Lcom/facebook/bb;->ImageWithTextView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->ImageWithTextView_drawable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, v1}, Lcom/instagram/ui/widget/b/a;->setupDrawable(I)V

    :cond_12
    sget v1, Lcom/facebook/bb;->ImageWithTextView_innerSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 7

    const/high16 v4, 0x4000

    iget-object v0, p0, Lcom/instagram/ui/widget/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->h:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/ui/widget/b/a;->i:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->d:F

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->e:F

    iget v2, p0, Lcom/instagram/ui/widget/b/a;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lcom/instagram/ui/widget/b/a;->g:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/instagram/ui/widget/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6
.end method

.method private setupDrawable(I)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/b/a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/instagram/ui/widget/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/instagram/ui/widget/b/a;->f:I

    iget-object v0, p0, Lcom/instagram/ui/widget/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/instagram/ui/widget/b/a;->g:I

    iget-object v0, p0, Lcom/instagram/ui/widget/b/a;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->f:I

    iget v2, p0, Lcom/instagram/ui/widget/b/a;->g:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/widget/b/a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageScaleX()F
    .registers 2

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->d:F

    return v0
.end method

.method public getImageScaleY()F
    .registers 2

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->e:F

    return v0
.end method

.method public getInnerSpacing()I
    .registers 2

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->b:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/ui/widget/b/a;->c:Z

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/b/a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->f:I

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->b:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_17
    invoke-super {p0, p1}, Lcom/instagram/ui/text/FreightSansTextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/instagram/ui/widget/b/a;->c:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_21
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    const/high16 v5, 0x4000

    iget-boolean v0, p0, Lcom/instagram/ui/widget/b/a;->c:Z

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->b:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/instagram/ui/text/FreightSansTextView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/instagram/ui/widget/b/a;->c:Z

    if-eqz v0, :cond_52

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->g:I

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->f:I

    iget v2, p0, Lcom/instagram/ui/widget/b/a;->b:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/b/a;->setMeasuredDimension(II)V

    iget v2, p0, Lcom/instagram/ui/widget/b/a;->f:I

    iget v3, p0, Lcom/instagram/ui/widget/b/a;->b:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/instagram/ui/widget/b/a;->h:F

    iget v1, p0, Lcom/instagram/ui/widget/b/a;->g:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/instagram/ui/widget/b/a;->i:F

    :cond_52
    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/b/a;->setupDrawable(I)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->requestLayout()V

    :cond_8
    return-void
.end method

.method public setImageScaleX(F)V
    .registers 3

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->d:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Lcom/instagram/ui/widget/b/a;->d:F

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->invalidate()V

    :cond_d
    return-void
.end method

.method public setImageScaleY(F)V
    .registers 3

    iget v0, p0, Lcom/instagram/ui/widget/b/a;->e:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Lcom/instagram/ui/widget/b/a;->e:F

    invoke-virtual {p0}, Lcom/instagram/ui/widget/b/a;->invalidate()V

    :cond_d
    return-void
.end method

.method public setInnerSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/ui/widget/b/a;->b:I

    return-void
.end method
