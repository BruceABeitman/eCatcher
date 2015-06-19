.class  Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompatJellyBean.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
.registers 3
check-cast p0, Landroid/view/View$AccessibilityDelegate;
invoke-virtual {p0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
move-result-object v0
return-object v0
.end method
.method public static newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)Ljava/lang/Object;
.registers 2
new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;
invoke-direct {v0, p0}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)V
return-object v0
.end method
.method public static performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 5
check-cast p0, Landroid/view/View$AccessibilityDelegate;
invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method