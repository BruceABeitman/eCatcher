.class public Landroid/support/v7/internal/view/ActionModeWrapper;
.super Landroid/support/v7/view/ActionMode;
.source "ActionModeWrapper.java"
.field final mInflater:Landroid/view/MenuInflater;
.field final mWrappedObject:Landroid/view/ActionMode;
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode;)V
.registers 4
invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V
iput-object p2, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
new-instance v0, Landroid/support/v7/internal/view/SupportMenuInflater;
invoke-direct {v0, p1}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mInflater:Landroid/view/MenuInflater;
return-void
.end method
.method public finish()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
return-void
.end method
.method public getCustomView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getMenu()Landroid/view/Menu;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;
move-result-object v0
invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
move-result-object v0
return-object v0
.end method
.method public getMenuInflater()Landroid/view/MenuInflater;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mInflater:Landroid/view/MenuInflater;
return-object v0
.end method
.method public getSubtitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getTag()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public invalidate()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V
return-void
.end method
.method public setCustomView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V
return-void
.end method
.method public setSubtitle(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(I)V
return-void
.end method
.method public setSubtitle(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setTag(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V
return-void
.end method
.method public setTitle(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(I)V
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapper;->mWrappedObject:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method