.class  Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;
.super Lcom/pinguo/camera360/gallery/ui/ResourceTexture;
.source "EdgeEffect.java"
.field private mAlpha:I
.field private mBounds:Landroid/graphics/Rect;
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;
const/16 v0, 0xff
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->mAlpha:I
return-void
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 9
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->mAlpha:I
int-to-float v0, v0
const/high16 v1, 0x437f
div-float/2addr v0, v1
invoke-interface {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;
iget v2, v6, Landroid/graphics/Rect;->left:I
iget v3, v6, Landroid/graphics/Rect;->top:I
invoke-virtual {v6}, Landroid/graphics/Rect;->width()I
move-result v4
invoke-virtual {v6}, Landroid/graphics/Rect;->height()I
move-result v5
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
return-void
.end method
.method public getIntrinsicHeight()I
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->getHeight()I
move-result v0
return v0
.end method
.method public getIntrinsicWidth()I
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->getWidth()I
move-result v0
return v0
.end method
.method public setAlpha(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->mAlpha:I
return-void
.end method
.method public setBounds(IIII)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V
return-void
.end method