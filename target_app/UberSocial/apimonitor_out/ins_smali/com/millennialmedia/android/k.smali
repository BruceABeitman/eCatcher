.class  Lcom/millennialmedia/android/k;
.super Lcom/millennialmedia/android/j;
.source "SourceFile"
.field final c:F
.field final d:F
.method constructor <init>(ZF)V
.registers 5
invoke-direct {p0, p1}, Lcom/millennialmedia/android/j;-><init>(Z)V
iput p2, p0, Lcom/millennialmedia/android/k;->c:F
const/high16 v0, 0x4080
mul-float/2addr v0, p2
iput v0, p0, Lcom/millennialmedia/android/k;->d:F
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 12
const/4 v9, -0x1
const/high16 v8, -0x100
const/high16 v5, 0x41a0
const/high16 v4, 0x4120
invoke-virtual {p0}, Lcom/millennialmedia/android/k;->copyBounds()Landroid/graphics/Rect;
move-result-object v0
iget v1, v0, Landroid/graphics/Rect;->right:I
iget v2, v0, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
int-to-float v1, v1
div-float/2addr v1, v4
iget v2, v0, Landroid/graphics/Rect;->right:I
int-to-float v2, v2
iget v3, p0, Lcom/millennialmedia/android/k;->c:F
mul-float/2addr v3, v5
sub-float v6, v2, v3
iget v0, v0, Landroid/graphics/Rect;->top:I
int-to-float v0, v0
iget v2, p0, Lcom/millennialmedia/android/k;->c:F
mul-float/2addr v2, v5
add-float v7, v0, v2
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
const/high16 v0, 0x4140
iget v2, p0, Lcom/millennialmedia/android/k;->c:F
mul-float/2addr v0, v2
iget-object v2, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {p1, v6, v7, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget v0, p0, Lcom/millennialmedia/android/k;->c:F
mul-float/2addr v0, v4
iget-object v2, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {p1, v6, v7, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V
const/high16 v0, 0x40e0
iget v2, p0, Lcom/millennialmedia/android/k;->c:F
mul-float/2addr v0, v2
iget-object v2, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {p1, v6, v7, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
const/high16 v2, 0x4000
div-float/2addr v1, v2
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
sub-float v1, v6, v0
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
sub-float v2, v7, v0
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
add-float v3, v6, v0
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
add-float v4, v7, v0
iget-object v5, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
add-float v1, v6, v0
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
sub-float v2, v7, v0
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
sub-float v3, v6, v0
iget v0, p0, Lcom/millennialmedia/android/k;->d:F
add-float v4, v7, v0
iget-object v5, p0, Lcom/millennialmedia/android/k;->b:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
return-void
.end method