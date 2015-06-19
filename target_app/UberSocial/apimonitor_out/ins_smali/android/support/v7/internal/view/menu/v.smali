.class  Landroid/support/v7/internal/view/menu/v;
.super Landroid/support/v7/internal/view/menu/k;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnActionExpandListener;
.field final synthetic b:Landroid/support/v7/internal/view/menu/s;
.method constructor <init>(Landroid/support/v7/internal/view/menu/s;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/s;
invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/k;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Ljava/lang/Object;
check-cast v0, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/s;
invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v1
invoke-interface {v0, v1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Ljava/lang/Object;
check-cast v0, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/s;
invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v1
invoke-interface {v0, v1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method