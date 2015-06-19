.class public final Lcom/spotify/android/paste/graphics/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private b:F

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/res/ColorStateList;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Lcom/spotify/android/paste/graphics/d;->g:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ltz v0, :cond_22

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gez v0, :cond_2a

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawables without intrinsic size are not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iput-object p1, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/spotify/android/paste/graphics/d;->b:F

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spotify/android/paste/graphics/d;->h:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget v2, p0, Lcom/spotify/android/paste/graphics/d;->g:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spotify/android/paste/graphics/d;->i:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget v2, p0, Lcom/spotify/android/paste/graphics/d;->g:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private b()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/spotify/android/paste/graphics/d;->b:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative strokeWidth is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->invalidateSelf()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/android/paste/graphics/d;->f:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/spotify/android/paste/graphics/d;->i:I

    invoke-direct {p0}, Lcom/spotify/android/paste/graphics/d;->a()V

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->invalidateSelf()V

    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/android/paste/graphics/d;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/graphics/d;->onStateChange([I)Z

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->invalidateSelf()V

    return-void
.end method

.method public final b(I)V
    .registers 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/android/paste/graphics/d;->e:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/spotify/android/paste/graphics/d;->h:I

    invoke-direct {p0}, Lcom/spotify/android/paste/graphics/d;->a()V

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/high16 v6, 0x4000

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v6

    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_41

    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_41
    iget-object v2, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v5, v0, v4

    div-float/2addr v0, v4

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/spotify/android/paste/graphics/d;->b:F

    iget v4, p0, Lcom/spotify/android/paste/graphics/d;->b:F

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v6

    neg-int v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    invoke-direct {p0}, Lcom/spotify/android/paste/graphics/d;->b()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    invoke-direct {p0}, Lcom/spotify/android/paste/graphics/d;->b()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .registers 5

    const/4 v0, -0x1

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, -0x2

    :goto_b
    if-ne v2, v0, :cond_16

    :goto_d
    return v0

    :cond_e
    const/16 v3, 0xff

    if-ne v2, v3, :cond_14

    move v2, v0

    goto :goto_b

    :cond_14
    move v2, v1

    goto :goto_b

    :cond_16
    if-ne v2, v1, :cond_1a

    move v0, v1

    goto :goto_d

    :cond_1a
    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_d
.end method

.method public final isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_c
    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected final onStateChange([I)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :goto_12
    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->f:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2c

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput v3, p0, Lcom/spotify/android/paste/graphics/d;->i:I

    if-eq v3, v0, :cond_50

    move v0, v2

    :cond_2c
    :goto_2c
    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->e:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v4, p0, Lcom/spotify/android/paste/graphics/d;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget-object v5, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    iput v4, p0, Lcom/spotify/android/paste/graphics/d;->h:I

    if-eq v4, v3, :cond_52

    move v3, v2

    :goto_46
    or-int/2addr v0, v3

    :cond_47
    invoke-direct {p0}, Lcom/spotify/android/paste/graphics/d;->a()V

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->invalidateSelf()V

    :goto_4f
    return v2

    :cond_50
    move v0, v1

    goto :goto_2c

    :cond_52
    move v3, v1

    goto :goto_46

    :cond_54
    move v2, v1

    goto :goto_4f

    :cond_56
    move v0, v1

    goto :goto_12
.end method

.method public final setAlpha(I)V
    .registers 3

    iput p1, p0, Lcom/spotify/android/paste/graphics/d;->g:I

    invoke-direct {p0}, Lcom/spotify/android/paste/graphics/d;->a()V

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/d;->invalidateSelf()V

    return-void
.end method
