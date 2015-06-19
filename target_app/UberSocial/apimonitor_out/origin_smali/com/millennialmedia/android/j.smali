.class Lcom/millennialmedia/android/j;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected final b:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Z)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v1, p0, Lcom/millennialmedia/android/j;->a:Z

    iput-boolean p1, p0, Lcom/millennialmedia/android/j;->a:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/j;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/millennialmedia/android/j;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/j;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    const/16 v1, 0xff

    const/high16 v9, 0x4000

    invoke-virtual {p0}, Lcom/millennialmedia/android/j;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v2, v0

    int-to-float v0, v6

    const/high16 v2, 0x40c0

    div-float v8, v0, v2

    iget-object v0, p0, Lcom/millennialmedia/android/j;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/j;->a:Z

    if-eqz v0, :cond_51

    move v0, v1

    :goto_23
    iget-object v2, p0, Lcom/millennialmedia/android/j;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    div-float v1, v8, v9

    div-float v2, v8, v9

    int-to-float v0, v6

    div-float v3, v8, v9

    sub-float v3, v0, v3

    int-to-float v0, v7

    div-float v4, v8, v9

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/millennialmedia/android/j;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v0, v6

    div-float v1, v8, v9

    sub-float v1, v0, v1

    div-float v2, v8, v9

    div-float v3, v8, v9

    int-to-float v0, v7

    div-float v4, v8, v9

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/millennialmedia/android/j;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_51
    const/16 v0, 0x50

    goto :goto_23
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
