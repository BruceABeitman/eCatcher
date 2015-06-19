.class  Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;
.super Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V
return-void
.end method
.method public getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.registers 5
invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean;->getAccessibilityNodeProvider(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_c
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V
:goto_b
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
.registers 3
new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;
invoke-direct {v0, p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
invoke-static {v0}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean;->newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 6
invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean;->performAccessibilityAction(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method