.class  Landroid/support/v4/view/ViewCompatICS;
.super Ljava/lang/Object;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static canScrollHorizontally(Landroid/view/View;I)Z
.registers 3
invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z
move-result v0
return v0
.end method
.method public static canScrollVertically(Landroid/view/View;I)Z
.registers 3
invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z
move-result v0
return v0
.end method
.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
return-void
.end method
.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public static setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/view/View$AccessibilityDelegate;
invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
return-void
.end method