.class public Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
.super Landroid/support/v7/internal/view/menu/BaseMenuWrapper;
.source "MenuItemWrapperICS.java"
.implements Landroid/support/v4/internal/view/SupportMenuItem;
.field static final LOG_TAG:Ljava/lang/String; = "MenuItemWrapper"
.field private final mEmulateProviderVisibilityOverride:Z
.field private mLastRequestVisible:Z
.field private mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;
.method constructor <init>(Landroid/view/MenuItem;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;Z)V
return-void
.end method
.method constructor <init>(Landroid/view/MenuItem;Z)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuWrapper;-><init>(Ljava/lang/Object;)V
invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z
move-result v0
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z
iput-boolean p2, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z
return-void
.end method
.method static synthetic access$000(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z
return v0
.end method
.method static synthetic access$100(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z
return v0
.end method
.method final checkActionProviderOverrideVisibility()Z
.registers 4
const/4 v1, 0x0
iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z
if-eqz v2, :cond_1b
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z
move-result v2
if-eqz v2, :cond_1b
invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->isVisible()Z
move-result v2
if-nez v2, :cond_1b
invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;
const/4 v1, 0x1
:cond_1b
return v1
.end method
.method public collapseActionView()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z
move-result v0
return v0
.end method
.method  createActionProviderWrapper(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.registers 3
new-instance v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/ActionProvider;)V
return-object v0
.end method
.method public expandActionView()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z
move-result v0
return v0
.end method
.method public getActionProvider()Landroid/view/ActionProvider;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;
move-result-object v0
return-object v0
.end method
.method public getActionView()Landroid/view/View;
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;
move-result-object v0
instance-of v1, v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
if-eqz v1, :cond_12
check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->getWrappedView()Landroid/view/View;
move-result-object v0
:cond_12
return-object v0
.end method
.method public getAlphabeticShortcut()C
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C
move-result v0
return v0
.end method
.method public getGroupId()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I
move-result v0
return v0
.end method
.method public getIcon()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public getItemId()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I
move-result v0
return v0
.end method
.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v0
return-object v0
.end method
.method public getNumericShortcut()C
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C
move-result v0
return v0
.end method
.method public getOrder()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I
move-result v0
return v0
.end method
.method public getSubMenu()Landroid/view/SubMenu;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
if-eqz v0, :cond_f
iget-object v1, v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/support/v4/view/ActionProvider;
:goto_e
return-object v1
:cond_f
const/4 v1, 0x0
goto :goto_e
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getTitleCondensed()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public hasSubMenu()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z
move-result v0
return v0
.end method
.method public isActionViewExpanded()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z
move-result v0
return v0
.end method
.method public isCheckable()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z
move-result v0
return v0
.end method
.method public isChecked()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z
move-result v0
return v0
.end method
.method public isEnabled()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z
move-result v0
return v0
.end method
.method public isVisible()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z
move-result v0
return v0
.end method
.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
if-eqz p1, :cond_10
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z
if-eqz v0, :cond_10
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->checkActionProviderOverrideVisibility()Z
:cond_10
return-object p0
.end method
.method public setActionView(I)Landroid/view/MenuItem;
.registers 5
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;
move-result-object v0
instance-of v1, v0, Landroid/support/v7/view/CollapsibleActionView;
if-eqz v1, :cond_1f
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/MenuItem;
new-instance v2, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
invoke-direct {v2, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;
:cond_1f
return-object p0
.end method
.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.registers 4
instance-of v1, p1, Landroid/support/v7/view/CollapsibleActionView;
if-eqz v1, :cond_a
new-instance v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;-><init>(Landroid/view/View;)V
move-object p1, v0
:cond_a
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;
return-object p0
.end method
.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;
return-object p0
.end method
.method public setCheckable(Z)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;
return-object p0
.end method
.method public setChecked(Z)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
return-object p0
.end method
.method public setEnabled(Z)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
return-object p0
.end method
.method public setExclusiveCheckable(Z)V
.registers 8
:try_start_0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;
if-nez v1, :cond_1c
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v1, Landroid/view/MenuItem;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
const-string v2, "setExclusiveCheckable"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;
:cond_1c
iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e
:goto_2d
return-void
:catch_2e
move-exception v0
const-string v1, "MenuItemWrapper"
const-string v2, "Error while calling setExclusiveCheckable"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2d
.end method
.method public setIcon(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
return-object p0
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
return-object p0
.end method
.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
return-object p0
.end method
.method public setNumericShortcut(C)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;
return-object p0
.end method
.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
return-object p0
.end method
.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
if-eqz p1, :cond_f
new-instance v1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
:goto_b
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
return-object p0
:cond_f
const/4 v1, 0x0
goto :goto_b
.end method
.method public setShortcut(CC)Landroid/view/MenuItem;
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;
return-object p0
.end method
.method public setShowAsAction(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V
return-void
.end method
.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;
return-object p0
.end method
.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
if-eqz p1, :cond_e
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->createActionProviderWrapper(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
move-result-object v1
:goto_a
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
return-object p0
:cond_e
const/4 v1, 0x0
goto :goto_a
.end method
.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
if-eqz p1, :cond_10
new-instance v1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
:goto_c
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
return-object v2
:cond_10
move-object v1, v2
goto :goto_c
.end method
.method public setTitle(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
return-object p0
.end method
.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
return-object p0
.end method
.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
return-object p0
.end method
.method public setVisible(Z)Landroid/view/MenuItem;
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mEmulateProviderVisibilityOverride:Z
if-eqz v0, :cond_d
iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->checkActionProviderOverrideVisibility()Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-object p0
:cond_d
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;
move-result-object p0
goto :goto_c
.end method
.method final wrappedSetVisible(Z)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method