.class public Lcom/twidroid/ui/b/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field private a:Landroid/graphics/Paint;
.field private b:Landroid/graphics/Paint;
.field private c:Landroid/graphics/Path;
.field private d:Landroid/graphics/Path;
.field private e:I
.field private f:I
.field private g:I
.method public constructor <init>(III)V
.registers 7
const/16 v0, 0x64
const/4 v2, 0x1
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput v0, p0, Lcom/twidroid/ui/b/d;->f:I
iput v0, p0, Lcom/twidroid/ui/b/d;->g:I
iput p1, p0, Lcom/twidroid/ui/b/d;->e:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/b/d;->a:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/twidroid/ui/b/d;->a:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/twidroid/ui/b/d;->a:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/twidroid/ui/b/d;->a:Landroid/graphics/Paint;
invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/twidroid/ui/b/d;->a:Landroid/graphics/Paint;
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/b/d;->b:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/twidroid/ui/b/d;->b:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/twidroid/ui/b/d;->b:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/twidroid/ui/b/d;->b:Landroid/graphics/Paint;
invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method private a()Landroid/graphics/Path;
.registers 11
const/16 v9, 0xa
const/high16 v8, 0x42b4
const/4 v7, 0x0
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
int-to-float v1, v9
invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V
const/4 v1, 0x0
new-instance v2, Landroid/graphics/RectF;
int-to-float v3, v1
int-to-float v4, v9
int-to-float v5, v9
invoke-direct {v2, v3, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V
const/high16 v3, 0x4334
invoke-virtual {v0, v2, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V
iget v2, p0, Lcom/twidroid/ui/b/d;->g:I
sub-int/2addr v2, v9
int-to-float v2, v2
invoke-virtual {v0, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V
new-instance v2, Landroid/graphics/RectF;
iget v3, p0, Lcom/twidroid/ui/b/d;->g:I
sub-int/2addr v3, v9
int-to-float v3, v3
iget v4, p0, Lcom/twidroid/ui/b/d;->g:I
int-to-float v4, v4
int-to-float v5, v9
invoke-direct {v2, v3, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V
const/high16 v3, 0x4387
invoke-virtual {v0, v2, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V
iget v2, p0, Lcom/twidroid/ui/b/d;->g:I
int-to-float v2, v2
iget v3, p0, Lcom/twidroid/ui/b/d;->f:I
sub-int/2addr v3, v9
int-to-float v3, v3
invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V
new-instance v2, Landroid/graphics/RectF;
iget v3, p0, Lcom/twidroid/ui/b/d;->g:I
sub-int/2addr v3, v9
int-to-float v3, v3
iget v4, p0, Lcom/twidroid/ui/b/d;->f:I
sub-int/2addr v4, v9
int-to-float v4, v4
iget v5, p0, Lcom/twidroid/ui/b/d;->g:I
int-to-float v5, v5
iget v6, p0, Lcom/twidroid/ui/b/d;->f:I
int-to-float v6, v6
invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
const/high16 v3, 0x43b4
invoke-virtual {v0, v2, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V
int-to-float v2, v9
iget v3, p0, Lcom/twidroid/ui/b/d;->f:I
int-to-float v3, v3
invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V
new-instance v2, Landroid/graphics/RectF;
int-to-float v1, v1
iget v3, p0, Lcom/twidroid/ui/b/d;->f:I
sub-int/2addr v3, v9
int-to-float v3, v3
int-to-float v4, v9
iget v5, p0, Lcom/twidroid/ui/b/d;->f:I
int-to-float v5, v5
invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V
invoke-virtual {v0, v2, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V
int-to-float v1, v9
invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V
return-object v0
.end method
.method public a(I)Lcom/twidroid/ui/b/d;
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/b/d;->a:Landroid/graphics/Paint;
int-to-float v1, p1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
return-object p0
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/b/d;->c:Landroid/graphics/Path;
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/twidroid/ui/b/d;->a()Landroid/graphics/Path;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/b/d;->d:Landroid/graphics/Path;
:cond_a
iget-object v0, p0, Lcom/twidroid/ui/b/d;->d:Landroid/graphics/Path;
iget-object v1, p0, Lcom/twidroid/ui/b/d;->b:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/twidroid/ui/b/d;->d:Landroid/graphics/Path;
iget-object v1, p0, Lcom/twidroid/ui/b/d;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return-void
.end method
.method public getOpacity()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getPadding(Landroid/graphics/Rect;)Z
.registers 6
iget v0, p0, Lcom/twidroid/ui/b/d;->e:I
iget v1, p0, Lcom/twidroid/ui/b/d;->e:I
iget v2, p0, Lcom/twidroid/ui/b/d;->e:I
iget v3, p0, Lcom/twidroid/ui/b/d;->e:I
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
const/4 v0, 0x1
return v0
.end method
.method public setAlpha(I)V
.registers 2
return-void
.end method
.method public setBounds(IIII)V
.registers 6
iput p4, p0, Lcom/twidroid/ui/b/d;->f:I
iput p3, p0, Lcom/twidroid/ui/b/d;->g:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/b/d;->c:Landroid/graphics/Path;
return-void
.end method
.method public setBounds(Landroid/graphics/Rect;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/b/d;->c:Landroid/graphics/Path;
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method