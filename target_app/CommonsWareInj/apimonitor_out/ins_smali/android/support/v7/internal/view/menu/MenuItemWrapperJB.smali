.class  Landroid/support/v7/internal/view/menu/MenuItemWrapperJB;
.super Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"
.method constructor <init>(Landroid/view/MenuItem;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/view/MenuItem;Z)V
return-void
.end method
.method  createActionProviderWrapper(Landroid/support/v4/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.registers 3
new-instance v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperJB;Landroid/support/v4/view/ActionProvider;)V
return-object v0
.end method