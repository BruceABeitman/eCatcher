.class final Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"
.field final synthetic val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
.method constructor <init>(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V
return-void
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
.registers 3
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;
return-object v0
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
return-void
.end method
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method public sendAccessibilityEvent(Landroid/view/View;I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->sendAccessibilityEvent(Landroid/view/View;I)V
return-void
.end method
.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method