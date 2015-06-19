.class public Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "ActionModeWrapper.java"
.implements Landroid/view/ActionMode$Callback;
.field final mContext:Landroid/content/Context;
.field private mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;
.field final mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;
return-void
.end method
.method private getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;
iget-object v0, v0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
if-ne v0, p1, :cond_d
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;
invoke-virtual {p0, v0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->createActionModeWrapper(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/ActionModeWrapper;
move-result-object v0
goto :goto_c
.end method
.method protected createActionModeWrapper(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/ActionModeWrapper;
.registers 4
new-instance v0, Landroid/support/v7/internal/view/ActionModeWrapper;
invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V
return-object v0
.end method
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;
move-result-object v1
invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;
move-result-object v1
invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onDestroyActionMode(Landroid/view/ActionMode;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;
move-result-object v1
invoke-interface {v0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
return-void
.end method
.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/support/v7/view/ActionMode$Callback;
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/view/ActionMode;)Landroid/support/v7/view/ActionMode;
move-result-object v1
invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public setLastStartedActionMode(Landroid/support/v7/internal/view/ActionModeWrapper;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;->mLastStartedActionMode:Landroid/support/v7/internal/view/ActionModeWrapper;
return-void
.end method