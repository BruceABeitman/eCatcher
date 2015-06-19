.class final Landroid/support/v4/widget/o;
.super Ljava/lang/Object;
.source "ScrollerCompatGingerbread.java"
.method public static a(Ljava/lang/Object;IIIII)V
.registers 12
move-object v0, p0
check-cast v0, Landroid/widget/OverScroller;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V
return-void
.end method
.method public static a(Ljava/lang/Object;)Z
.registers 2
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z
move-result v0
return v0
.end method
.method public static b(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I
move-result v0
return v0
.end method
.method public static c(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I
move-result v0
return v0
.end method
.method public static d(Ljava/lang/Object;)Z
.registers 2
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->computeScrollOffset()Z
move-result v0
return v0
.end method
.method public static e(Ljava/lang/Object;)V
.registers 1
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V
return-void
.end method
.method public static f(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I
move-result v0
return v0
.end method
.method public static g(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I
move-result v0
return v0
.end method