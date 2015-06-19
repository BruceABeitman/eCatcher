.class public Lcom/twidroid/ui/b/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field final a:Landroid/graphics/Paint;
.field  b:I
.field  c:I
.field  d:I
.field  e:I
.field  f:I
.field  g:I
.field  h:I
.method public constructor <init>(II)V
.registers 7
const/16 v3, 0xa
const/16 v2, 0x64
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
iput-object v0, p0, Lcom/twidroid/ui/b/a;->a:Landroid/graphics/Paint;
iput v2, p0, Lcom/twidroid/ui/b/a;->b:I
iput v2, p0, Lcom/twidroid/ui/b/a;->c:I
iput v2, p0, Lcom/twidroid/ui/b/a;->d:I
iput v2, p0, Lcom/twidroid/ui/b/a;->e:I
const/4 v0, 0x4
iput v0, p0, Lcom/twidroid/ui/b/a;->f:I
iput v3, p0, Lcom/twidroid/ui/b/a;->g:I
iput v3, p0, Lcom/twidroid/ui/b/a;->h:I
iget-object v0, p0, Lcom/twidroid/ui/b/a;->a:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/twidroid/ui/b/a;->a:Landroid/graphics/Paint;
invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V
iput p1, p0, Lcom/twidroid/ui/b/a;->f:I
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 6
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
iget v1, p0, Lcom/twidroid/ui/b/a;->b:I
int-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/b/a;->d:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V
iget v1, p0, Lcom/twidroid/ui/b/a;->h:I
int-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/b/a;->e:I
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V
iget v1, p0, Lcom/twidroid/ui/b/a;->h:I
rsub-int/lit8 v1, v1, 0x0
int-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/b/a;->e:I
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V
iget v1, p0, Lcom/twidroid/ui/b/a;->g:I
int-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/b/a;->d:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V
iget v1, p0, Lcom/twidroid/ui/b/a;->h:I
int-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/b/a;->d:I
iget v3, p0, Lcom/twidroid/ui/b/a;->e:I
div-int/lit8 v3, v3, 0x2
sub-int/2addr v2, v3
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V
iget v1, p0, Lcom/twidroid/ui/b/a;->h:I
rsub-int/lit8 v1, v1, 0x0
int-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/b/a;->d:I
iget v3, p0, Lcom/twidroid/ui/b/a;->e:I
div-int/lit8 v3, v3, 0x2
sub-int/2addr v2, v3
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V
iget-object v1, p0, Lcom/twidroid/ui/b/a;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return-void
.end method
.method public getIntrinsicWidth()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public getOpacity()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getPadding(Landroid/graphics/Rect;)Z
.registers 4
const/4 v1, 0x0
iget v0, p0, Lcom/twidroid/ui/b/a;->f:I
invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V
const/4 v0, 0x1
return v0
.end method
.method public setAlpha(I)V
.registers 2
return-void
.end method
.method public setBounds(IIII)V
.registers 5
iput p4, p0, Lcom/twidroid/ui/b/a;->e:I
iput p3, p0, Lcom/twidroid/ui/b/a;->c:I
iput p1, p0, Lcom/twidroid/ui/b/a;->b:I
iput p2, p0, Lcom/twidroid/ui/b/a;->d:I
return-void
.end method
.method public setBounds(Landroid/graphics/Rect;)V
.registers 3
iget v0, p1, Landroid/graphics/Rect;->bottom:I
iput v0, p0, Lcom/twidroid/ui/b/a;->e:I
iget v0, p1, Landroid/graphics/Rect;->right:I
iput v0, p0, Lcom/twidroid/ui/b/a;->c:I
iget v0, p1, Landroid/graphics/Rect;->left:I
iput v0, p0, Lcom/twidroid/ui/b/a;->b:I
iget v0, p1, Landroid/graphics/Rect;->top:I
iput v0, p0, Lcom/twidroid/ui/b/a;->d:I
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method