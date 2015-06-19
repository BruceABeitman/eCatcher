.class public Lcom/spotify/android/paste/widget/ViewPagerIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/br;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/spotify/android/paste/b;->x:I

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;

    invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    const/high16 v0, 0x4120

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v0

    const/high16 v1, 0x40c0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I

    move-result v1

    sget-object v2, Lcom/spotify/android/paste/e;->D:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->b:I

    const/4 v0, 0x2

    const v1, -0x777778

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/4 v1, 0x3

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a:I

    return v0
.end method

.method public final a(I)V
    .registers 3

    int-to-float v0, p1

    iput v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->c:F

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->postInvalidate()V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->g:Landroid/support/v4/view/br;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->g:Landroid/support/v4/view/br;

    invoke-interface {v0, p1}, Landroid/support/v4/view/br;->a(I)V

    :cond_f
    return-void
.end method

.method public final a(IFI)V
    .registers 5

    int-to-float v0, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->c:F

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->postInvalidate()V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->g:Landroid/support/v4/view/br;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->g:Landroid/support/v4/view/br;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/br;->a(IFI)V

    :cond_10
    return-void
.end method

.method public final a(Landroid/support/v4/view/ViewPager;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->f:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/br;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->c:F

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->invalidate()V

    return-void
.end method

.method public final a(Landroid/support/v4/view/br;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->g:Landroid/support/v4/view/br;

    return-void
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->g:Landroid/support/v4/view/br;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->g:Landroid/support/v4/view/br;

    invoke-interface {v0, p1}, Landroid/support/v4/view/br;->b(I)V

    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ah;->b()I

    move-result v1

    :goto_f
    const/4 v2, 0x1

    if-gt v1, v2, :cond_15

    :goto_12
    return-void

    :cond_13
    move v1, v0

    goto :goto_f

    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    :goto_2b
    if-ge v0, v1, :cond_3d

    iget v4, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a:I

    iget v5, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->b:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3d
    iget v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->c:F

    iget v1, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a:I

    iget v4, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->b:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_12
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I

    move-result v0

    :goto_f
    const/4 v2, 0x1

    if-gt v0, v2, :cond_1d

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->setVisibility(I)V

    invoke-virtual {p0, v1, v1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->setMeasuredDimension(II)V

    :goto_1a
    return-void

    :cond_1b
    move v0, v1

    goto :goto_f

    :cond_1d
    iget v2, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a:I

    mul-int/2addr v2, v0

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->b:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a:I

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->setVisibility(I)V

    invoke-virtual {p0, v0, v2}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->setMeasuredDimension(II)V

    goto :goto_1a
.end method
