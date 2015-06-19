.class  Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;
.super Landroid/widget/FrameLayout;
.source "MenuItemWrapperICS.java"
.implements Landroid/view/CollapsibleActionView;
.field final mWrappedView:Landroid/support/v7/view/CollapsibleActionView;
.method constructor <init>(Landroid/view/View;)V
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
move-object v0, p1
check-cast v0, Landroid/support/v7/view/CollapsibleActionView;
iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/support/v7/view/CollapsibleActionView;
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->addView(Landroid/view/View;)V
return-void
.end method
.method  getWrappedView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/support/v7/view/CollapsibleActionView;
check-cast v0, Landroid/view/View;
return-object v0
.end method
.method public onActionViewCollapsed()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/support/v7/view/CollapsibleActionView;
invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V
return-void
.end method
.method public onActionViewExpanded()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$CollapsibleActionViewWrapper;->mWrappedView:Landroid/support/v7/view/CollapsibleActionView;
invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V
return-void
.end method