.class  Landroid/support/v4/view/a/b;
.super Landroid/support/v4/view/a/g;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/a/g;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V
return-void
.end method
.method public final a(Ljava/lang/Object;Landroid/graphics/Rect;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V
return-void
.end method
.method public final a(Ljava/lang/Object;Landroid/view/View;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V
return-void
.end method
.method public final a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V
return-void
.end method
.method public final b(Ljava/lang/Object;)I
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I
move-result v0
return v0
.end method
.method public final b(Ljava/lang/Object;Landroid/graphics/Rect;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V
return-void
.end method
.method public final b(Ljava/lang/Object;Landroid/view/View;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V
return-void
.end method
.method public final b(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final b(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V
return-void
.end method
.method public final c(Ljava/lang/Object;)Ljava/lang/CharSequence;
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final c(Ljava/lang/Object;Landroid/graphics/Rect;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V
return-void
.end method
.method public final c(Ljava/lang/Object;Landroid/view/View;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V
return-void
.end method
.method public final c(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final c(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V
return-void
.end method
.method public final d(Ljava/lang/Object;)Ljava/lang/CharSequence;
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final d(Ljava/lang/Object;Landroid/graphics/Rect;)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
return-void
.end method
.method public final d(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V
return-void
.end method
.method public final e(Ljava/lang/Object;)Ljava/lang/CharSequence;
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final e(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V
return-void
.end method
.method public final f(Ljava/lang/Object;)Ljava/lang/CharSequence;
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final f(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V
return-void
.end method
.method public final g(Ljava/lang/Object;Z)V
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V
return-void
.end method
.method public final g(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z
move-result v0
return v0
.end method
.method public final h(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z
move-result v0
return v0
.end method
.method public final i(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z
move-result v0
return v0
.end method
.method public final j(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z
move-result v0
return v0
.end method
.method public final k(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z
move-result v0
return v0
.end method
.method public final l(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z
move-result v0
return v0
.end method
.method public final m(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z
move-result v0
return v0
.end method
.method public final n(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z
move-result v0
return v0
.end method
.method public final o(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z
move-result v0
return v0
.end method
.method public final p(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z
move-result v0
return v0
.end method
.method public final q(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
return-void
.end method