.class public Lco/vine/android/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(III)I
    .registers 3

    if-le p0, p2, :cond_3

    :goto_2
    return p2

    :cond_3
    if-ge p0, p1, :cond_7

    move p2, p1

    goto :goto_2

    :cond_7
    move p2, p0

    goto :goto_2
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .registers 9

    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    if-eqz p1, :cond_20

    const/high16 v0, -0x4080

    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_20
    move v0, v1

    goto :goto_a
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
