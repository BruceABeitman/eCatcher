.class public final Lcom/instagram/creation/video/widget/c;
.super Landroid/graphics/drawable/Drawable;
.source "IgScrubberThumb.java"
.field private final a:Landroid/graphics/Paint;
.field private final b:I
.field private final c:I
.field private final d:I
.field private final e:F
.field private final f:F
.field private final g:Landroid/graphics/RectF;
.field private final h:Landroid/graphics/RectF;
.field private final i:Landroid/graphics/RectF;
.field private j:Landroid/graphics/Bitmap;
.field private k:I
.field private l:I
.method public constructor <init>(Landroid/content/res/Resources;)V
.registers 4
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
sget v0, Lcom/facebook/as;->accent_blue_medium:I
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/widget/c;->b:I
sget v0, Lcom/facebook/as;->black:I
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/widget/c;->c:I
sget v0, Lcom/facebook/as;->white:I
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/widget/c;->d:I
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;
invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
const/high16 v1, 0x4000
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;F)F
move-result v0
iput v0, p0, Lcom/instagram/creation/video/widget/c;->e:F
invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
const/high16 v1, 0x3fc0
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;F)F
move-result v0
iput v0, p0, Lcom/instagram/creation/video/widget/c;->f:F
return-void
.end method
.method public final a(II)V
.registers 3
iput p1, p0, Lcom/instagram/creation/video/widget/c;->l:I
iput p2, p0, Lcom/instagram/creation/video/widget/c;->k:I
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/widget/c;->j:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/instagram/creation/video/widget/c;->invalidateSelf()V
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 6
const/high16 v2, 0x4080
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
iget v1, p0, Lcom/instagram/creation/video/widget/c;->e:F
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
iget v1, p0, Lcom/instagram/creation/video/widget/c;->b:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
iget v1, p0, Lcom/instagram/creation/video/widget/c;->f:F
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
iget v1, p0, Lcom/instagram/creation/video/widget/c;->c:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->j:Landroid/graphics/Bitmap;
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->j:Landroid/graphics/Bitmap;
const/4 v1, 0x0
iget-object v2, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;
iget-object v3, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
:goto_48
return-void
:cond_49
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
iget v1, p0, Lcom/instagram/creation/video/widget/c;->d:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
goto :goto_48
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/widget/c;->k:I
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/widget/c;->l:I
return v0
.end method
.method public final getOpacity()I
.registers 2
const/4 v0, -0x3
return v0
.end method
.method protected final onBoundsChange(Landroid/graphics/Rect;)V
.registers 5
const/high16 v2, 0x4000
invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V
iget v0, p0, Lcom/instagram/creation/video/widget/c;->e:F
div-float/2addr v0, v2
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;
invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;
invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V
iget v0, p0, Lcom/instagram/creation/video/widget/c;->e:F
iget v1, p0, Lcom/instagram/creation/video/widget/c;->f:F
div-float/2addr v1, v2
add-float/2addr v0, v1
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;
invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;
invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V
iget v0, p0, Lcom/instagram/creation/video/widget/c;->e:F
iget v1, p0, Lcom/instagram/creation/video/widget/c;->f:F
add-float/2addr v0, v1
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;
invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;
invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V
return-void
.end method
.method public final setAlpha(I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "setAlpha not implemented"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "setColorFilter not implemented"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method