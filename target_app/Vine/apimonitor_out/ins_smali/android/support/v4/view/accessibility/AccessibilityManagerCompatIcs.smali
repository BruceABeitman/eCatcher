.class  Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatIcs.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
move-result v0
return v0
.end method
.method public static getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
.registers 3
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
.registers 2
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
.registers 2
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z
move-result v0
return v0
.end method
.method public static newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)Ljava/lang/Object;
.registers 2
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1;
invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$1;-><init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerBridge;)V
return-object v0
.end method
.method public static removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
move-result v0
return v0
.end method