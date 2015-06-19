.class  Landroid/support/v7/internal/view/menu/MenuWrapperICS;
.super Landroid/support/v7/internal/view/menu/BaseMenuWrapper;
.source "MenuWrapperICS.java"
.implements Landroid/support/v4/internal/view/SupportMenu;
.method constructor <init>(Landroid/view/Menu;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method public add(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
return-object v0
.end method
.method public add(IIII)Landroid/view/MenuItem;
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
return-object v0
.end method
.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
return-object v0
.end method
.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
return-object v0
.end method
.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
.registers 22
const/4 v9, 0x0
if-eqz p8, :cond_8
move-object/from16 v0, p8
array-length v1, v0
new-array v9, v1, [Landroid/view/MenuItem;
:cond_8
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/Menu;
move v2, p1
move v3, p2
move/from16 v4, p3
move-object/from16 v5, p4
move-object/from16 v6, p5
move-object/from16 v7, p6
move/from16 v8, p7
invoke-interface/range {v1 .. v9}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
move-result v11
if-eqz v9, :cond_2d
const/4 v10, 0x0
array-length v12, v9
:goto_20
if-ge v10, v12, :cond_2d
aget-object v1, v9, v10
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v1
aput-object v1, p8, v10
add-int/lit8 v10, v10, 0x1
goto :goto_20
:cond_2d
return v11
.end method
.method public addSubMenu(I)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public addSubMenu(IIII)Landroid/view/SubMenu;
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 6
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public clear()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->internalClear()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0}, Landroid/view/Menu;->clear()V
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0}, Landroid/view/Menu;->close()V
return-void
.end method
.method public findItem(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
return-object v0
.end method
.method public getItem(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
return-object v0
.end method
.method public hasVisibleItems()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z
move-result v0
return v0
.end method
.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2}, Landroid/view/Menu;->isShortcutKey(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public performIdentifierAction(II)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2}, Landroid/view/Menu;->performIdentifierAction(II)Z
move-result v0
return v0
.end method
.method public performShortcut(ILandroid/view/KeyEvent;I)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z
move-result v0
return v0
.end method
.method public removeGroup(I)V
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->internalRemoveGroup(I)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->removeGroup(I)V
return-void
.end method
.method public removeItem(I)V
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->internalRemoveItem(I)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V
return-void
.end method
.method public setGroupCheckable(IZZ)V
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2, p3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V
return-void
.end method
.method public setGroupEnabled(IZ)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupEnabled(IZ)V
return-void
.end method
.method public setGroupVisible(IZ)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V
return-void
.end method
.method public setQwertyMode(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0, p1}, Landroid/view/Menu;->setQwertyMode(Z)V
return-void
.end method
.method public size()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/Menu;
invoke-interface {v0}, Landroid/view/Menu;->size()I
move-result v0
return v0
.end method