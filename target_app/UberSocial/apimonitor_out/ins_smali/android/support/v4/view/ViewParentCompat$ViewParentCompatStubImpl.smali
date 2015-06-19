.class  Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 6
if-nez p2, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "accessibility"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/accessibility/AccessibilityManager;
invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const/4 v0, 0x1
goto :goto_3
.end method