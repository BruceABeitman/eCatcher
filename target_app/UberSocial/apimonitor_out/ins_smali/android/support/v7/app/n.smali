.class  Landroid/support/v7/app/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/Window$Callback;
.field final b:Landroid/view/Window$Callback;
.field final synthetic c:Landroid/support/v7/app/m;
.method public constructor <init>(Landroid/support/v7/app/m;Landroid/view/Window$Callback;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
return-void
.end method
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public onActionModeFinished(Landroid/view/ActionMode;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/m;
invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->b(Landroid/view/ActionMode;)V
return-void
.end method
.method public onActionModeStarted(Landroid/view/ActionMode;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/support/v7/app/m;
invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/view/ActionMode;)V
return-void
.end method
.method public onAttachedToWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V
return-void
.end method
.method public onContentChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V
return-void
.end method
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onCreatePanelView(I)Landroid/view/View;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onDetachedFromWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V
return-void
.end method
.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onMenuOpened(ILandroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onPanelClosed(ILandroid/view/Menu;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
return-void
.end method
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onSearchRequested()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
return-void
.end method
.method public onWindowFocusChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V
return-void
.end method
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
move-result-object v0
return-object v0
.end method