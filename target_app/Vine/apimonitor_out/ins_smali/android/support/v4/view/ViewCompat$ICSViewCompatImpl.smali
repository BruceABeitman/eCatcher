.class  Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.source "ViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V
return-void
.end method
.method public canScrollHorizontally(Landroid/view/View;I)Z
.registers 4
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z
move-result v0
return v0
.end method
.method public canScrollVertically(Landroid/view/View;I)Z
.registers 4
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z
move-result v0
return v0
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.registers 4
invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;
move-result-object v0
invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
return-void
.end method
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
.registers 4
invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;
move-result-object v0
invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V
return-void
.end method