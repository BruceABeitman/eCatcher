.class final Landroid/support/v4/view/l;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatJellyBean.java"
.field final synthetic a:Landroid/support/v4/view/m;
.method constructor <init>(Landroid/support/v4/view/m;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V
return-void
.end method
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
.registers 3
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1}, Landroid/support/v4/view/m;->a(Landroid/view/View;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;
return-object v0
.end method
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;Ljava/lang/Object;)V
return-void
.end method
.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/m;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/m;->a(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method public final sendAccessibilityEvent(Landroid/view/View;I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;I)V
return-void
.end method
.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;
invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method