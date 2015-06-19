.class final Landroid/support/v4/view/av;
.super Ljava/lang/Object;
.source "ViewCompatHC.java"
.method public static a(Landroid/view/View;)I
.registers 2
invoke-virtual {p0}, Landroid/view/View;->getLayerType()I
move-result v0
return v0
.end method
.method static a()J
.registers 2
invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J
move-result-wide v0
return-wide v0
.end method
.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
.registers 3
invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
return-void
.end method