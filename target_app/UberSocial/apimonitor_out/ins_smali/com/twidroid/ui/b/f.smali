.class public Lcom/twidroid/ui/b/f;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.field  a:[Landroid/graphics/Paint;
.field  b:[I
.field  c:I
.field  d:I
.field  e:I
.field  f:I
.method public constructor <init>([I)V
.registers 7
const/4 v1, 0x2
const/16 v0, 0x64
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput v0, p0, Lcom/twidroid/ui/b/f;->c:I
iput v0, p0, Lcom/twidroid/ui/b/f;->d:I
iput v0, p0, Lcom/twidroid/ui/b/f;->e:I
iput v0, p0, Lcom/twidroid/ui/b/f;->f:I
new-array v0, v1, [Landroid/graphics/Paint;
iput-object v0, p0, Lcom/twidroid/ui/b/f;->a:[Landroid/graphics/Paint;
new-array v0, v1, [I
iput-object v0, p0, Lcom/twidroid/ui/b/f;->b:[I
const/4 v0, 0x0
:goto_17
const/4 v1, 0x4
if-ge v0, v1, :cond_3f
if-nez p1, :cond_2e
iget-object v1, p0, Lcom/twidroid/ui/b/f;->a:[Landroid/graphics/Paint;
div-int/lit8 v2, v0, 0x2
const v3, -0x777778
const/16 v4, 0xff
invoke-direct {p0, v3, v4}, Lcom/twidroid/ui/b/f;->a(II)Landroid/graphics/Paint;
move-result-object v3
aput-object v3, v1, v2
:goto_2b
add-int/lit8 v0, v0, 0x2
goto :goto_17
:cond_2e
iget-object v1, p0, Lcom/twidroid/ui/b/f;->a:[Landroid/graphics/Paint;
div-int/lit8 v2, v0, 0x2
aget v3, p1, v0
add-int/lit8 v4, v0, 0x1
aget v4, p1, v4
invoke-direct {p0, v3, v4}, Lcom/twidroid/ui/b/f;->a(II)Landroid/graphics/Paint;
move-result-object v3
aput-object v3, v1, v2
goto :goto_2b
:cond_3f
return-void
.end method
.method private a(II)Landroid/graphics/Paint;
.registers 5
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V
return-object v0
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 12
const/4 v0, 0x0
iget-object v8, p0, Lcom/twidroid/ui/b/f;->a:[Landroid/graphics/Paint;
array-length v9, v8
move v6, v0
move v7, v0
:goto_6
if-ge v6, v9, :cond_23
aget-object v5, v8, v6
iget v0, p0, Lcom/twidroid/ui/b/f;->c:I
int-to-float v1, v0
iget v0, p0, Lcom/twidroid/ui/b/f;->e:I
add-int/2addr v0, v7
int-to-float v2, v0
iget v0, p0, Lcom/twidroid/ui/b/f;->d:I
int-to-float v3, v0
iget v0, p0, Lcom/twidroid/ui/b/f;->e:I
add-int/2addr v0, v7
int-to-float v4, v0
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
add-int/lit8 v1, v7, 0x1
add-int/lit8 v0, v6, 0x1
move v6, v0
move v7, v1
goto :goto_6
:cond_23
return-void
.end method
.method public getIntrinsicHeight()I
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
.registers 3
const/4 v0, 0x0
invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V
const/4 v0, 0x1
return v0
.end method
.method public setAlpha(I)V
.registers 2
return-void
.end method
.method public setBounds(IIII)V
.registers 5
iput p4, p0, Lcom/twidroid/ui/b/f;->f:I
iput p3, p0, Lcom/twidroid/ui/b/f;->d:I
iput p1, p0, Lcom/twidroid/ui/b/f;->c:I
iput p2, p0, Lcom/twidroid/ui/b/f;->e:I
return-void
.end method
.method public setBounds(Landroid/graphics/Rect;)V
.registers 3
iget v0, p1, Landroid/graphics/Rect;->bottom:I
iput v0, p0, Lcom/twidroid/ui/b/f;->f:I
iget v0, p1, Landroid/graphics/Rect;->right:I
iput v0, p0, Lcom/twidroid/ui/b/f;->d:I
iget v0, p1, Landroid/graphics/Rect;->left:I
iput v0, p0, Lcom/twidroid/ui/b/f;->c:I
iget v0, p1, Landroid/graphics/Rect;->top:I
iput v0, p0, Lcom/twidroid/ui/b/f;->e:I
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 2
return-void
.end method