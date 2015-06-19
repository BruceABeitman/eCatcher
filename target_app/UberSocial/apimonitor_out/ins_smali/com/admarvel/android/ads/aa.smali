.class  Lcom/admarvel/android/ads/aa;
.super Landroid/view/animation/Animation;
.source "SourceFile"
.field private final a:F
.field private final b:F
.field private final c:F
.field private final d:F
.field private final e:F
.field private final f:Z
.field private g:Landroid/graphics/Camera;
.method public constructor <init>(FFFFFZ)V
.registers 7
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
iput p1, p0, Lcom/admarvel/android/ads/aa;->a:F
iput p2, p0, Lcom/admarvel/android/ads/aa;->b:F
iput p3, p0, Lcom/admarvel/android/ads/aa;->c:F
iput p4, p0, Lcom/admarvel/android/ads/aa;->d:F
iput p5, p0, Lcom/admarvel/android/ads/aa;->e:F
iput-boolean p6, p0, Lcom/admarvel/android/ads/aa;->f:Z
return-void
.end method
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 11
const/4 v7, 0x0
iget v0, p0, Lcom/admarvel/android/ads/aa;->a:F
iget v1, p0, Lcom/admarvel/android/ads/aa;->b:F
sub-float/2addr v1, v0
mul-float/2addr v1, p1
add-float/2addr v0, v1
iget v1, p0, Lcom/admarvel/android/ads/aa;->c:F
iget v2, p0, Lcom/admarvel/android/ads/aa;->d:F
iget-object v3, p0, Lcom/admarvel/android/ads/aa;->g:Landroid/graphics/Camera;
invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;
move-result-object v4
invoke-virtual {v3}, Landroid/graphics/Camera;->save()V
iget-boolean v5, p0, Lcom/admarvel/android/ads/aa;->f:Z
if-eqz v5, :cond_31
iget v5, p0, Lcom/admarvel/android/ads/aa;->e:F
mul-float/2addr v5, p1
invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V
:goto_1f
invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V
invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V
invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V
neg-float v0, v1
neg-float v3, v2
invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z
invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z
return-void
:cond_31
iget v5, p0, Lcom/admarvel/android/ads/aa;->e:F
const/high16 v6, 0x3f80
sub-float/2addr v6, p1
mul-float/2addr v5, v6
invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V
goto :goto_1f
.end method
.method public initialize(IIII)V
.registers 6
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V
new-instance v0, Landroid/graphics/Camera;
invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/aa;->g:Landroid/graphics/Camera;
return-void
.end method