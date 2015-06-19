.class  Landroid/support/v4/view/a/d;
.super Landroid/support/v4/view/a/b;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/a/b;-><init>()V
return-void
.end method
.method public final b(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V
return-void
.end method
.method public final h(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V
return-void
.end method
.method public final i(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V
return-void
.end method
.method public final r(Ljava/lang/Object;)I
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I
move-result v0
return v0
.end method
.method public final s(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z
move-result v0
return v0
.end method
.method public final t(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z
move-result v0
return v0
.end method