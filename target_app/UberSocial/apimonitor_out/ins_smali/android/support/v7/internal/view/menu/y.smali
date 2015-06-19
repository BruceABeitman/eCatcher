.class  Landroid/support/v7/internal/view/menu/y;
.super Landroid/support/v7/internal/view/menu/t;
.source "SourceFile"
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;
.field  c:Landroid/view/ActionProvider$VisibilityListener;
.field final synthetic d:Landroid/support/v7/internal/view/menu/x;
.method public constructor <init>(Landroid/support/v7/internal/view/menu/x;Landroid/support/v4/view/ActionProvider;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/support/v7/internal/view/menu/x;
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/t;-><init>(Landroid/support/v7/internal/view/menu/s;Landroid/support/v4/view/ActionProvider;)V
return-void
.end method
.method public isVisible()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/support/v4/view/ActionProvider;
invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->isVisible()Z
move-result v0
return v0
.end method
.method public onActionProviderVisibilityChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->c:Landroid/view/ActionProvider$VisibilityListener;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->c:Landroid/view/ActionProvider$VisibilityListener;
invoke-interface {v0, p1}, Landroid/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V
:cond_9
return-void
.end method
.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/support/v4/view/ActionProvider;
invoke-virtual {v0, p1}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public overridesItemVisibility()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/support/v4/view/ActionProvider;
invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z
move-result v0
return v0
.end method
.method public refreshVisibility()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/support/v4/view/ActionProvider;
invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->refreshVisibility()V
return-void
.end method
.method public setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/y;->c:Landroid/view/ActionProvider$VisibilityListener;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/support/v4/view/ActionProvider;
if-eqz p1, :cond_a
:goto_6
invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V
return-void
:cond_a
const/4 p0, 0x0
goto :goto_6
.end method