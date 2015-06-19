.class public final Lcom/instagram/creation/photo/b/e;
.super Ljava/lang/Object;
.source "RectUtil.java"
.method public static a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.registers 9
const/high16 v3, 0x4000
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
invoke-virtual {p0}, Landroid/graphics/Rect;->width()I
move-result v1
invoke-virtual {p0}, Landroid/graphics/Rect;->height()I
move-result v2
if-ne v1, v2, :cond_17
move-object v0, v4
:goto_16
return-object v0
:cond_17
invoke-virtual {v4}, Landroid/graphics/Rect;->width()I
move-result v1
invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
move-result v2
if-le v1, v2, :cond_72
invoke-virtual {v4}, Landroid/graphics/Rect;->width()I
move-result v1
invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
move-result v2
sub-int/2addr v1, v2
int-to-float v2, v1
div-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D
move-result-wide v2
double-to-int v2, v2
rem-int/lit8 v1, v1, 0x2
move v3, v2
move v2, v0
:goto_36
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Crop insets x: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", y:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v4, v3, v2}, Landroid/graphics/Rect;->inset(II)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Crop nudges x: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " y: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
iget v2, v4, Landroid/graphics/Rect;->right:I
sub-int v1, v2, v1
iput v1, v4, Landroid/graphics/Rect;->right:I
iget v1, v4, Landroid/graphics/Rect;->bottom:I
sub-int v0, v1, v0
iput v0, v4, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;
move-object v0, v4
goto :goto_16
:cond_72
invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
move-result v1
invoke-virtual {v4}, Landroid/graphics/Rect;->width()I
move-result v2
sub-int/2addr v1, v2
int-to-float v2, v1
div-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D
move-result-wide v2
double-to-int v2, v2
rem-int/lit8 v1, v1, 0x2
move v3, v0
move v7, v0
move v0, v1
move v1, v7
goto :goto_36
.end method
.method public static a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
.registers 7
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z
new-instance v1, Landroid/graphics/RectF;
invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
invoke-virtual {v1}, Landroid/graphics/RectF;->width()F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
invoke-virtual {v1}, Landroid/graphics/RectF;->height()F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
new-instance v0, Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/RectF;->left:F
float-to-int v2, v2
iget v3, v1, Landroid/graphics/RectF;->top:F
float-to-int v3, v3
iget v4, v1, Landroid/graphics/RectF;->right:F
float-to-int v4, v4
iget v1, v1, Landroid/graphics/RectF;->bottom:F
float-to-int v1, v1
invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-static {v0}, Lcom/instagram/creation/photo/b/e;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v0
return-object v0
.end method