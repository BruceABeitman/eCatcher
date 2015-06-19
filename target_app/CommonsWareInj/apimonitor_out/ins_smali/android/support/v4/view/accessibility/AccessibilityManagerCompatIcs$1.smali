.class final Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatIcs.java"
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.field final synthetic val$bridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAccessibilityStateChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;
invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;->onAccessibilityStateChanged(Z)V
return-void
.end method