.class  Landroid/support/v4/view/ay;
.super Landroid/support/v4/view/ax;
.source "ViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ax;-><init>()V
return-void
.end method
.method public final a(Landroid/view/View;IIII)V
.registers 6
invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V
return-void
.end method
.method public final a(Landroid/view/View;Ljava/lang/Runnable;)V
.registers 3
invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V
return-void
.end method
.method public final c(Landroid/view/View;)V
.registers 2
invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V
return-void
.end method
.method public final d(Landroid/view/View;)I
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I
move-result v0
return v0
.end method
.method public final e(Landroid/view/View;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V
return-void
.end method
.method public final h(Landroid/view/View;)Landroid/view/ViewParent;
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;
move-result-object v0
return-object v0
.end method