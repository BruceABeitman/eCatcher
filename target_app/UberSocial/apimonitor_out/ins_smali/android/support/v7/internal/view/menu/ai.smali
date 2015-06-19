.class  Landroid/support/v7/internal/view/menu/ai;
.super Landroid/support/v7/internal/view/menu/ag;
.source "SourceFile"
.implements Landroid/support/v4/internal/view/SupportSubMenu;
.method constructor <init>(Landroid/view/SubMenu;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/ag;-><init>(Landroid/view/Menu;)V
return-void
.end method
.method public synthetic b()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ai;->c()Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public c()Landroid/view/SubMenu;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
return-object v0
.end method
.method public clearHeader()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V
return-void
.end method
.method public getItem()Landroid/view/MenuItem;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ai;->a(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v0
return-object v0
.end method
.method public setHeaderIcon(I)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;
return-object p0
.end method
.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
return-object p0
.end method
.method public setHeaderTitle(I)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;
return-object p0
.end method
.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
return-object p0
.end method
.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
return-object p0
.end method
.method public setIcon(I)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;
return-object p0
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ai;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/SubMenu;
invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
return-object p0
.end method