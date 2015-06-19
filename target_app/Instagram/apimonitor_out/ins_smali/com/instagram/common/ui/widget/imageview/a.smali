.class public final Lcom/instagram/common/ui/widget/imageview/a;
.super Landroid/graphics/drawable/Drawable;
.source "CircularDrawable.java"
.field protected final a:Landroid/graphics/Paint;
.field protected final b:Landroid/graphics/RectF;
.field private final c:Landroid/graphics/Bitmap;
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 6
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/a;->c:Landroid/graphics/Bitmap;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->a:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->a:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/BitmapShader;
sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;
invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 7
const/high16 v4, 0x4000
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/a;->getBounds()Landroid/graphics/Rect;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v0}, Landroid/graphics/RectF;->height()F
move-result v0
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v1}, Landroid/graphics/RectF;->width()F
move-result v1
cmpl-float v0, v0, v1
if-lez v0, :cond_37
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v1}, Landroid/graphics/RectF;->height()F
move-result v1
iget-object v2, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v2
sub-float/2addr v1, v2
div-float/2addr v1, v4
invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V
:goto_2f
:cond_2f
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/a;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
return-void
:cond_37
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v0}, Landroid/graphics/RectF;->height()F
move-result v0
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v1}, Landroid/graphics/RectF;->width()F
move-result v1
cmpg-float v0, v0, v1
if-gez v0, :cond_2f
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v1}, Landroid/graphics/RectF;->width()F
move-result v1
iget-object v2, p0, Lcom/instagram/common/ui/widget/imageview/a;->b:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->height()F
move-result v2
sub-float/2addr v1, v2
div-float/2addr v1, v4
invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V
goto :goto_2f
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->c:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 2
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->c:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
return v0
.end method
.method public final getOpacity()I
.registers 2
const/4 v0, -0x3
return v0
.end method
.method public final setAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->a:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/a;->a:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
return-void
.end method