.class final Landroid/support/v7/app/i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/Window$Callback;
.field final a:Landroid/view/Window$Callback;
.field final synthetic b:Landroid/support/v7/app/h;
.method public constructor <init>(Landroid/support/v7/app/h;Landroid/view/Window$Callback;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/app/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
return-void
.end method
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
return v0
.end method
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public final onActionModeFinished(Landroid/view/ActionMode;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
iget-object v0, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/app/h;
invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->b(Landroid/view/ActionMode;)V
return-void
.end method
.method public final onActionModeStarted(Landroid/view/ActionMode;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
iget-object v0, p0, Landroid/support/v7/app/i;->b:Landroid/support/v7/app/h;
invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->a(Landroid/view/ActionMode;)V
return-void
.end method
.method public final onAttachedToWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V
return-void
.end method
.method public final onContentChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V
return-void
.end method
.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public final onCreatePanelView(I)Landroid/view/View;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final onDetachedFromWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V
return-void
.end method
.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public final onMenuOpened(ILandroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public final onPanelClosed(ILandroid/view/Menu;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
return-void
.end method
.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public final onSearchRequested()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
return-void
.end method
.method public final onWindowFocusChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V
return-void
.end method
.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/view/Window$Callback;
invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
move-result-object v0
return-object v0
.end method