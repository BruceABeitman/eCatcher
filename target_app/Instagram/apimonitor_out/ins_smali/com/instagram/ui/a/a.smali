.class public final Lcom/instagram/ui/a/a;
.super Landroid/view/animation/Animation;
.source "IgTranslateAnimation.java"
.field private a:I
.field private b:I
.field private c:I
.field private d:I
.field private e:F
.field private f:F
.field private g:F
.field private h:F
.field private i:F
.field private j:F
.field private k:F
.field private l:F
.method public constructor <init>(FFF)V
.registers 6
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
iput v0, p0, Lcom/instagram/ui/a/a;->a:I
iput v0, p0, Lcom/instagram/ui/a/a;->b:I
iput v0, p0, Lcom/instagram/ui/a/a;->c:I
iput v0, p0, Lcom/instagram/ui/a/a;->d:I
iput v1, p0, Lcom/instagram/ui/a/a;->e:F
iput v1, p0, Lcom/instagram/ui/a/a;->f:F
iput v1, p0, Lcom/instagram/ui/a/a;->g:F
iput v1, p0, Lcom/instagram/ui/a/a;->h:F
iput p1, p0, Lcom/instagram/ui/a/a;->e:F
iput v1, p0, Lcom/instagram/ui/a/a;->f:F
iput p2, p0, Lcom/instagram/ui/a/a;->g:F
iput p3, p0, Lcom/instagram/ui/a/a;->h:F
iput v0, p0, Lcom/instagram/ui/a/a;->a:I
iput v0, p0, Lcom/instagram/ui/a/a;->b:I
iput v0, p0, Lcom/instagram/ui/a/a;->c:I
iput v0, p0, Lcom/instagram/ui/a/a;->d:I
return-void
.end method
.method public final a(F)V
.registers 2
iput p1, p0, Lcom/instagram/ui/a/a;->e:F
return-void
.end method
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 7
iget v0, p0, Lcom/instagram/ui/a/a;->i:F
iget v1, p0, Lcom/instagram/ui/a/a;->k:F
iget v2, p0, Lcom/instagram/ui/a/a;->i:F
iget v3, p0, Lcom/instagram/ui/a/a;->j:F
cmpl-float v2, v2, v3
if-eqz v2, :cond_15
iget v0, p0, Lcom/instagram/ui/a/a;->i:F
iget v2, p0, Lcom/instagram/ui/a/a;->j:F
iget v3, p0, Lcom/instagram/ui/a/a;->i:F
sub-float/2addr v2, v3
mul-float/2addr v2, p1
add-float/2addr v0, v2
:cond_15
iget v2, p0, Lcom/instagram/ui/a/a;->k:F
iget v3, p0, Lcom/instagram/ui/a/a;->l:F
cmpl-float v2, v2, v3
if-eqz v2, :cond_26
iget v1, p0, Lcom/instagram/ui/a/a;->k:F
iget v2, p0, Lcom/instagram/ui/a/a;->l:F
iget v3, p0, Lcom/instagram/ui/a/a;->k:F
sub-float/2addr v2, v3
mul-float/2addr v2, p1
add-float/2addr v1, v2
:cond_26
invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V
return-void
.end method
.method public final b(F)V
.registers 2
iput p1, p0, Lcom/instagram/ui/a/a;->g:F
return-void
.end method
.method public final initialize(IIII)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V
iget v0, p0, Lcom/instagram/ui/a/a;->a:I
iget v1, p0, Lcom/instagram/ui/a/a;->e:F
invoke-virtual {p0, v0, v1, p1, p3}, Lcom/instagram/ui/a/a;->resolveSize(IFII)F
move-result v0
iput v0, p0, Lcom/instagram/ui/a/a;->i:F
iget v0, p0, Lcom/instagram/ui/a/a;->b:I
iget v1, p0, Lcom/instagram/ui/a/a;->f:F
invoke-virtual {p0, v0, v1, p1, p3}, Lcom/instagram/ui/a/a;->resolveSize(IFII)F
move-result v0
iput v0, p0, Lcom/instagram/ui/a/a;->j:F
iget v0, p0, Lcom/instagram/ui/a/a;->c:I
iget v1, p0, Lcom/instagram/ui/a/a;->g:F
invoke-virtual {p0, v0, v1, p2, p4}, Lcom/instagram/ui/a/a;->resolveSize(IFII)F
move-result v0
iput v0, p0, Lcom/instagram/ui/a/a;->k:F
iget v0, p0, Lcom/instagram/ui/a/a;->d:I
iget v1, p0, Lcom/instagram/ui/a/a;->h:F
invoke-virtual {p0, v0, v1, p2, p4}, Lcom/instagram/ui/a/a;->resolveSize(IFII)F
move-result v0
iput v0, p0, Lcom/instagram/ui/a/a;->l:F
return-void
.end method