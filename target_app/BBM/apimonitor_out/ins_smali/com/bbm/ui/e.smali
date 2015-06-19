.class public final Lcom/bbm/ui/e;
.super Landroid/view/animation/Animation;
.source "AnimationUtils.java"
.field final synthetic a:Landroid/view/View;
.field final synthetic b:I
.field final synthetic c:I
.method public constructor <init>(Landroid/view/View;I)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/e;->a:Landroid/view/View;
iput p2, p0, Lcom/bbm/ui/e;->b:I
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/ui/e;->c:I
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
return-void
.end method
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/e;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
const/high16 v0, 0x3f80
cmpl-float v0, p1, v0
if-nez v0, :cond_15
const/4 v0, -0x2
:goto_d
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/bbm/ui/e;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
return-void
:cond_15
iget v0, p0, Lcom/bbm/ui/e;->b:I
iget v2, p0, Lcom/bbm/ui/e;->c:I
sub-int/2addr v0, v2
int-to-float v0, v0
mul-float/2addr v0, p1
float-to-int v0, v0
iget v2, p0, Lcom/bbm/ui/e;->c:I
add-int/2addr v0, v2
goto :goto_d
.end method
.method public final willChangeBounds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method