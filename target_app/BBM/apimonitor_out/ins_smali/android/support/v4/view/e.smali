.class final Landroid/support/v4/view/e;
.super Landroid/support/v4/view/b;
.source "AccessibilityDelegateCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/a/h;
.registers 5
check-cast p1, Landroid/view/View$AccessibilityDelegate;
invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
move-result-object v1
if-eqz v1, :cond_e
new-instance v0, Landroid/support/v4/view/a/h;
invoke-direct {v0, v1}, Landroid/support/v4/view/a/h;-><init>(Ljava/lang/Object;)V
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final a(Landroid/support/v4/view/a;)Ljava/lang/Object;
.registers 4
new-instance v0, Landroid/support/v4/view/f;
invoke-direct {v0, p0, p1}, Landroid/support/v4/view/f;-><init>(Landroid/support/v4/view/e;Landroid/support/v4/view/a;)V
new-instance v1, Landroid/support/v4/view/l;
invoke-direct {v1, v0}, Landroid/support/v4/view/l;-><init>(Landroid/support/v4/view/m;)V
return-object v1
.end method
.method public final a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 6
check-cast p1, Landroid/view/View$AccessibilityDelegate;
invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method