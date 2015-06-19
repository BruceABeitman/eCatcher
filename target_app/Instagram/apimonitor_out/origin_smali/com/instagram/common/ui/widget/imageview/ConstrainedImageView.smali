.class public Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
.super Lcom/instagram/common/ui/widget/imageview/IgImageView;
.source "ConstrainedImageView.java"


# instance fields
.field private b:Lcom/instagram/common/ui/b/a;

.field private c:Z

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->c:Z

    invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->c:Z

    invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    iget-boolean v2, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->c:Z

    if-eqz v2, :cond_56

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->frameinset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_56
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->ConstrainedImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->ConstrainedImageView_decorate:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->c:Z

    sget v1, Lcom/facebook/bb;->ConstrainedImageView_aspect:I

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->d:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->c:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->a(Landroid/graphics/Canvas;)V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->d:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setMeasuredDimension(II)V

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->b:Lcom/instagram/common/ui/b/a;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->b:Lcom/instagram/common/ui/b/a;

    invoke-interface {v1, v0}, Lcom/instagram/common/ui/b/a;->a(I)V

    :cond_1f
    return-void
.end method

.method public setDrawFrameDecoration(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->c:Z

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmapAsLoaded(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->a:Z

    invoke-super {p0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnMeasureListener(Lcom/instagram/common/ui/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->b:Lcom/instagram/common/ui/b/a;

    return-void
.end method
