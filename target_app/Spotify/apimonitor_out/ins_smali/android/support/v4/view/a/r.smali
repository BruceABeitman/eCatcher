.class  Landroid/support/v4/view/a/r;
.super Landroid/support/v4/view/a/v;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/a/v;-><init>()V
return-void
.end method
.method public final a()Ljava/lang/Object;
.registers 2
invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityRecord;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V
return-void
.end method
.method public final a(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityRecord;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V
return-void
.end method
.method public final b(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityRecord;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V
return-void
.end method
.method public final c(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityRecord;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V
return-void
.end method