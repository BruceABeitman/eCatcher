.class abstract Landroid/support/v7/internal/view/menu/BaseMenuWrapper;
.super Landroid/support/v7/internal/view/menu/BaseWrapper;
.source "BaseMenuWrapper.java"
.field private mMenuItems:Ljava/util/HashMap;
.field private mSubMenus:Ljava/util/HashMap;
.method constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
.registers 4
if-eqz p1, :cond_21
iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
if-nez v1, :cond_d
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
:cond_d
iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;
if-nez v0, :cond_20
invoke-static {p1}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createSupportMenuItemWrapper(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_20
:goto_20
return-object v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
.registers 4
if-eqz p1, :cond_21
iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;
if-nez v1, :cond_d
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;
:cond_d
iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/SubMenu;
if-nez v0, :cond_20
invoke-static {p1}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createSupportSubMenuWrapper(Landroid/view/SubMenu;)Landroid/support/v4/internal/view/SupportSubMenu;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_20
:goto_20
return-object v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method final internalClear()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
:cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
:cond_12
return-void
.end method
.method final internalRemoveGroup(I)V
.registers 5
iget-object v2, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
if-nez v2, :cond_5
:cond_4
return-void
:cond_5
iget-object v2, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
:cond_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_4
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I
move-result v2
if-ne p1, v2, :cond_f
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_f
.end method
.method final internalRemoveItem(I)V
.registers 5
iget-object v2, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
if-nez v2, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v2, p0, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_4
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I
move-result v2
if-ne p1, v2, :cond_f
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_4
.end method