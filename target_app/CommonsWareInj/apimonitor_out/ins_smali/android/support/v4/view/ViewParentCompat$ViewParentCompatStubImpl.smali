.class  Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"
.implements Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 7
if-nez p2, :cond_4
const/4 v1, 0x0
:goto_3
return v1
:cond_4
invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
const-string v2, "accessibility"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/accessibility/AccessibilityManager;
invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const/4 v1, 0x1
goto :goto_3
.end method