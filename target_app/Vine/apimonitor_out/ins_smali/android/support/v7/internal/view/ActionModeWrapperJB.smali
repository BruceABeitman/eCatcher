.class public Landroid/support/v7/internal/view/ActionModeWrapperJB;
.super Landroid/support/v7/internal/view/ActionModeWrapper;
.source "ActionModeWrapperJB.java"
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V
return-void
.end method
.method public getTitleOptionalHint()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapperJB;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getTitleOptionalHint()Z
move-result v0
return v0
.end method
.method public isTitleOptional()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapperJB;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->isTitleOptional()Z
move-result v0
return v0
.end method
.method public setTitleOptionalHint(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapperJB;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V
return-void
.end method