.class  Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V
return-void
.end method
.method public getAlpha(Landroid/view/View;)F
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F
move-result v0
return v0
.end method
.method  getFrameTime()J
.registers 3
invoke-static {}, Landroid/support/v4/view/ViewCompatHC;->getFrameTime()J
move-result-wide v0
return-wide v0
.end method
.method public getLayerType(Landroid/view/View;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public getMeasuredHeightAndState(Landroid/view/View;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredHeightAndState(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public getMeasuredState(Landroid/view/View;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredState(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public getMeasuredWidthAndState(Landroid/view/View;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredWidthAndState(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public resolveSizeAndState(III)I
.registers 5
invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->resolveSizeAndState(III)I
move-result v0
return v0
.end method
.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->getLayerType(Landroid/view/View;)I
move-result v0
invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/view/View;->invalidate()V
return-void
.end method
.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
.registers 4
invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
return-void
.end method