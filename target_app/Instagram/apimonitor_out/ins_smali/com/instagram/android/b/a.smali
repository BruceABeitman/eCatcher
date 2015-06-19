.class public final Lcom/instagram/android/b/a;
.super Landroid/view/animation/Animation;
.source "IgScaleAnimation.java"
.field private final a:I
.field private final b:I
.field private final c:Z
.field private d:F
.field private e:F
.field private f:F
.field private g:F
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
iput p1, p0, Lcom/instagram/android/b/a;->a:I
iput p2, p0, Lcom/instagram/android/b/a;->b:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/b/a;->c:Z
return-void
.end method
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 7
const/high16 v1, 0x3f80
iget v0, p0, Lcom/instagram/android/b/a;->d:F
cmpl-float v0, v0, v1
if-nez v0, :cond_e
iget v0, p0, Lcom/instagram/android/b/a;->e:F
cmpl-float v0, v0, v1
if-eqz v0, :cond_34
:cond_e
iget v0, p0, Lcom/instagram/android/b/a;->d:F
iget v2, p0, Lcom/instagram/android/b/a;->e:F
iget v3, p0, Lcom/instagram/android/b/a;->d:F
sub-float/2addr v2, v3
mul-float/2addr v2, p1
add-float/2addr v0, v2
:goto_17
iget v2, p0, Lcom/instagram/android/b/a;->f:F
cmpl-float v2, v2, v1
if-nez v2, :cond_23
iget v2, p0, Lcom/instagram/android/b/a;->g:F
cmpl-float v2, v2, v1
if-eqz v2, :cond_2c
:cond_23
iget v1, p0, Lcom/instagram/android/b/a;->f:F
iget v2, p0, Lcom/instagram/android/b/a;->g:F
iget v3, p0, Lcom/instagram/android/b/a;->f:F
sub-float/2addr v2, v3
mul-float/2addr v2, p1
add-float/2addr v1, v2
:cond_2c
invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V
return-void
:cond_34
move v0, v1
goto :goto_17
.end method
.method public final initialize(IIII)V
.registers 8
const/high16 v2, 0x3f80
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V
iget v0, p0, Lcom/instagram/android/b/a;->a:I
int-to-float v0, v0
int-to-float v1, p1
div-float/2addr v0, v1
iput v0, p0, Lcom/instagram/android/b/a;->d:F
iget v0, p0, Lcom/instagram/android/b/a;->b:I
int-to-float v0, v0
int-to-float v1, p2
div-float/2addr v0, v1
iput v0, p0, Lcom/instagram/android/b/a;->f:F
iput v2, p0, Lcom/instagram/android/b/a;->e:F
iput v2, p0, Lcom/instagram/android/b/a;->g:F
return-void
.end method