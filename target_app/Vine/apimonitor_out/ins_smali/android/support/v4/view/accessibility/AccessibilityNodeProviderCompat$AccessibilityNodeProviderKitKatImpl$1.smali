.class  Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;
.field final synthetic this$0:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;
.field final synthetic val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1;->this$0:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;
iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createAccessibilityNodeInfo(I)Ljava/lang/Object;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
invoke-virtual {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
if-nez v0, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;
move-result-object v1
goto :goto_9
.end method
.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
.registers 9
iget-object v5, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
invoke-virtual {v5, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
move-result-object v0
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
const/4 v1, 0x0
:goto_10
if-ge v1, v3, :cond_22
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_22
return-object v4
.end method
.method public findFocus(I)Ljava/lang/Object;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
invoke-virtual {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
if-nez v0, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;
move-result-object v1
goto :goto_9
.end method
.method public performAction(IILandroid/os/Bundle;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z
move-result v0
return v0
.end method