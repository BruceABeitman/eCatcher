.class public Landroid/support/v7/internal/view/menu/SubMenuBuilder;
.super Landroid/support/v7/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"
.implements Landroid/view/SubMenu;
.field private mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
.field private mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iput-object p3, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
return-void
.end method
.method public clearHeader()V
.registers 1
return-void
.end method
.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
move-result v0
return v0
.end method
.method public dispatchMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
move-result v0
return v0
.end method
.method public getActionViewStatesKey()Ljava/lang/String;
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v1, :cond_e
iget-object v1, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I
move-result v0
:goto_a
if-nez v0, :cond_10
const/4 v1, 0x0
:goto_d
return-object v1
:cond_e
const/4 v0, 0x0
goto :goto_a
:cond_10
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_d
.end method
.method public getItem()Landroid/view/MenuItem;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
return-object v0
.end method
.method public getParentMenu()Landroid/view/Menu;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object v0
.end method
.method public getRootMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object v0
.end method
.method public isQwertyMode()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->isQwertyMode()Z
move-result v0
return v0
.end method
.method public isShortcutsVisible()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z
move-result v0
return v0
.end method
.method public setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V
return-void
.end method
.method public setHeaderIcon(I)Landroid/view/SubMenu;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object p0
.end method
.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object p0
.end method
.method public setHeaderTitle(I)Landroid/view/SubMenu;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object p0
.end method
.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object p0
.end method
.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/internal/view/menu/MenuBuilder;
return-object p0
.end method
.method public setIcon(I)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;
return-object p0
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
return-object p0
.end method
.method public setQwertyMode(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V
return-void
.end method
.method public setShortcutsVisible(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V
return-void
.end method