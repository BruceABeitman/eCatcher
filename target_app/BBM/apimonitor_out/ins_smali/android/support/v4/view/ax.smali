.class  Landroid/support/v4/view/ax;
.super Landroid/support/v4/view/aw;
.source "ViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/aw;-><init>()V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/support/v4/view/a;)V
.registers 4
iget-object v0, p2, Landroid/support/v4/view/a;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/View$AccessibilityDelegate;
invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
return-void
.end method
.method public final a(Landroid/view/View;)Z
.registers 3
const/4 v0, -0x1
invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z
move-result v0
return v0
.end method
.method public final a(Landroid/view/View;I)Z
.registers 4
invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z
move-result v0
return v0
.end method