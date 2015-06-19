.class  Lcom/blackberry/ids/WebActivity$PathAnimation;
.super Landroid/view/animation/Animation;
.source "WebActivity.java"
.field final synthetic a:Lcom/blackberry/ids/WebActivity;
.field private b:Landroid/graphics/PathMeasure;
.field private c:[F
.method public constructor <init>(Lcom/blackberry/ids/WebActivity;Landroid/graphics/Path;J)V
.registers 7
iput-object p1, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->a:Lcom/blackberry/ids/WebActivity;
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [F
iput-object v0, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->c:[F
new-instance v0, Landroid/graphics/PathMeasure;
const/4 v1, 0x0
invoke-direct {v0, p2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V
iput-object v0, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->b:Landroid/graphics/PathMeasure;
invoke-virtual {p0, p3, p4}, Lcom/blackberry/ids/WebActivity$PathAnimation;->setDuration(J)V
return-void
.end method
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 7
iget-object v0, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->b:Landroid/graphics/PathMeasure;
iget-object v1, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->b:Landroid/graphics/PathMeasure;
invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F
move-result v1
mul-float/2addr v1, p1
iget-object v2, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->c:[F
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z
invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;
move-result-object v0
iget-object v1, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->c:[F
const/4 v2, 0x0
aget v1, v1, v2
iget-object v2, p0, Lcom/blackberry/ids/WebActivity$PathAnimation;->c:[F
const/4 v3, 0x1
aget v2, v2, v3
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V
return-void
.end method