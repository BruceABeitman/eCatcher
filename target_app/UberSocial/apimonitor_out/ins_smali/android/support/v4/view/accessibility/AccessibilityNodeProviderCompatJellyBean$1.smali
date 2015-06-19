.class final Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"
.field final synthetic val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V
return-void
.end method
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
.registers 3
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;->createAccessibilityNodeInfo(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;
return-object v0
.end method
.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
.registers 4
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public performAction(IILandroid/os/Bundle;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;->performAction(IILandroid/os/Bundle;)Z
move-result v0
return v0
.end method