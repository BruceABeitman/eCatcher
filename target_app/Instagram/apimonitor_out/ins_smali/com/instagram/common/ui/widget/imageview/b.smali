.class public final Lcom/instagram/common/ui/widget/imageview/b;
.super Landroid/graphics/drawable/Drawable;
.source "CircularStrokeDrawable.java"
.field private final a:Landroid/graphics/Paint;
.field private final b:Landroid/graphics/RectF;
.field private final c:I
.method public constructor <init>(II)V
.registers 5
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->b:Landroid/graphics/RectF;
add-int/lit8 v0, p1, 0x1
div-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->c:I
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->a:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->a:Landroid/graphics/Paint;
invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->a:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->a:Landroid/graphics/Paint;
int-to-float v1, p1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->b:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/b;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
return-void
.end method
.method public final getOpacity()I
.registers 2
const/4 v0, -0x3
return v0
.end method
.method protected final onBoundsChange(Landroid/graphics/Rect;)V
.registers 4
invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V
iget v0, p1, Landroid/graphics/Rect;->left:I
iget v1, p0, Lcom/instagram/common/ui/widget/imageview/b;->c:I
add-int/2addr v0, v1
iput v0, p1, Landroid/graphics/Rect;->left:I
iget v0, p1, Landroid/graphics/Rect;->top:I
iget v1, p0, Lcom/instagram/common/ui/widget/imageview/b;->c:I
add-int/2addr v0, v1
iput v0, p1, Landroid/graphics/Rect;->top:I
iget v0, p1, Landroid/graphics/Rect;->right:I
iget v1, p0, Lcom/instagram/common/ui/widget/imageview/b;->c:I
sub-int/2addr v0, v1
iput v0, p1, Landroid/graphics/Rect;->right:I
iget v0, p1, Landroid/graphics/Rect;->bottom:I
iget v1, p0, Lcom/instagram/common/ui/widget/imageview/b;->c:I
sub-int/2addr v0, v1
iput v0, p1, Landroid/graphics/Rect;->bottom:I
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->b:Landroid/graphics/RectF;
invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
return-void
.end method
.method public final setAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->a:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I
move-result v0
if-eq v0, p1, :cond_10
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/b;->a:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/b;->invalidateSelf()V
:cond_10
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method