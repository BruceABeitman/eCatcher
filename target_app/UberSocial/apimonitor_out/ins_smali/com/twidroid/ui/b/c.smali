.class public Lcom/twidroid/ui/b/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field private a:Landroid/graphics/Paint;
.field private b:Landroid/graphics/Path;
.field private c:Landroid/graphics/Path;
.field private d:Landroid/graphics/Path;
.field private e:Landroid/graphics/Path;
.field private f:I
.field private g:I
.field private h:I
.method public constructor <init>(II)V
.registers 5
const/16 v0, 0x64
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput v0, p0, Lcom/twidroid/ui/b/c;->g:I
iput v0, p0, Lcom/twidroid/ui/b/c;->h:I
iput p2, p0, Lcom/twidroid/ui/b/c;->f:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method private a()Landroid/graphics/Path;
.registers 6
const/4 v4, 0x0
iget v0, p0, Lcom/twidroid/ui/b/c;->f:I
new-instance v1, Landroid/graphics/Path;
invoke-direct {v1}, Landroid/graphics/Path;-><init>()V
int-to-float v2, v0
invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V
invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V
int-to-float v2, v0
invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V
new-instance v2, Landroid/graphics/RectF;
mul-int/lit8 v3, v0, 0x2
int-to-float v3, v3
mul-int/lit8 v0, v0, 0x2
int-to-float v0, v0
invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V
const/high16 v0, 0x4334
const/high16 v3, 0x42b4
invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V
return-object v1
.end method
.method private b()Landroid/graphics/Path;
.registers 5
invoke-direct {p0}, Lcom/twidroid/ui/b/c;->a()Landroid/graphics/Path;
move-result-object v0
new-instance v1, Landroid/graphics/Matrix;
invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V
const/high16 v2, -0x4080
const/high16 v3, 0x3f80
invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z
invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
iget v1, p0, Lcom/twidroid/ui/b/c;->h:I
int-to-float v1, v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V
return-object v0
.end method
.method private c()Landroid/graphics/Path;
.registers 4
const/high16 v2, -0x4080
invoke-direct {p0}, Lcom/twidroid/ui/b/c;->a()Landroid/graphics/Path;
move-result-object v0
new-instance v1, Landroid/graphics/Matrix;
invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z
invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
iget v1, p0, Lcom/twidroid/ui/b/c;->h:I
int-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/b/c;->g:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V
return-object v0
.end method
.method private d()Landroid/graphics/Path;
.registers 5
invoke-direct {p0}, Lcom/twidroid/ui/b/c;->a()Landroid/graphics/Path;
move-result-object v0
new-instance v1, Landroid/graphics/Matrix;
invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V
const/high16 v2, 0x3f80
const/high16 v3, -0x4080
invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z
invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
const/4 v1, 0x0
iget v2, p0, Lcom/twidroid/ui/b/c;->g:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V
return-object v0
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/b/c;->b:Landroid/graphics/Path;
if-nez v0, :cond_1c
invoke-direct {p0}, Lcom/twidroid/ui/b/c;->a()Landroid/graphics/Path;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/b/c;->b:Landroid/graphics/Path;
invoke-direct {p0}, Lcom/twidroid/ui/b/c;->b()Landroid/graphics/Path;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/b/c;->c:Landroid/graphics/Path;
invoke-direct {p0}, Lcom/twidroid/ui/b/c;->d()Landroid/graphics/Path;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/b/c;->d:Landroid/graphics/Path;
invoke-direct {p0}, Lcom/twidroid/ui/b/c;->c()Landroid/graphics/Path;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/b/c;->e:Landroid/graphics/Path;
:cond_1c
iget-object v0, p0, Lcom/twidroid/ui/b/c;->b:Landroid/graphics/Path;
iget-object v1, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/twidroid/ui/b/c;->c:Landroid/graphics/Path;
iget-object v1, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/twidroid/ui/b/c;->e:Landroid/graphics/Path;
iget-object v1, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
iget-object v0, p0, Lcom/twidroid/ui/b/c;->d:Landroid/graphics/Path;
iget-object v1, p0, Lcom/twidroid/ui/b/c;->a:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return-void
.end method
.method public getOpacity()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getPadding(Landroid/graphics/Rect;)Z
.registers 3
const/4 v0, 0x4
invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V
const/4 v0, 0x1
return v0
.end method
.method public setAlpha(I)V
.registers 2
return-void
.end method
.method public setBounds(IIII)V
.registers 6
iput p4, p0, Lcom/twidroid/ui/b/c;->g:I
iput p3, p0, Lcom/twidroid/ui/b/c;->h:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/b/c;->b:Landroid/graphics/Path;
return-void
.end method
.method public setBounds(Landroid/graphics/Rect;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/b/c;->b:Landroid/graphics/Path;
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method