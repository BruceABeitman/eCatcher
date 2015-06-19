.class  Landroid/support/v4/view/az;
.super Landroid/support/v4/view/ay;
.source "ViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ay;-><init>()V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/graphics/Paint;)V
.registers 3
invoke-virtual {p1, p2}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V
return-void
.end method
.method public final g(Landroid/view/View;)I
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I
move-result v0
return v0
.end method