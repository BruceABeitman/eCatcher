.class public final Landroid/support/v7/internal/view/menu/ag;
.super Landroid/support/v7/internal/view/menu/n;
.source "SourceFile"
.implements Landroid/view/SubMenu;
.field private d:Landroid/support/v7/internal/view/menu/n;
.field private e:Landroid/support/v7/internal/view/menu/r;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
iput-object p3, p0, Landroid/support/v7/internal/view/menu/ag;->e:Landroid/support/v7/internal/view/menu/r;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->e:Landroid/support/v7/internal/view/menu/r;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->e:Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getItemId()I
move-result v0
:goto_a
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_a
:cond_10
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Landroid/support/v7/internal/view/menu/n;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_d
.end method
.method public final a(Landroid/support/v7/internal/view/menu/o;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/o;)V
return-void
.end method
.method public final a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
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
.method public final a(Landroid/support/v7/internal/view/menu/r;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/r;)Z
move-result v0
return v0
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->b()Z
move-result v0
return v0
.end method
.method public final b(Landroid/support/v7/internal/view/menu/r;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/r;)Z
move-result v0
return v0
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->c()Z
move-result v0
return v0
.end method
.method public final clearHeader()V
.registers 1
return-void
.end method
.method public final getItem()Landroid/view/MenuItem;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->e:Landroid/support/v7/internal/view/menu/r;
return-object v0
.end method
.method public final o()Landroid/support/v7/internal/view/menu/n;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
return-object v0
.end method
.method public final r()Landroid/view/Menu;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
return-object v0
.end method
.method public final setHeaderIcon(I)Landroid/view/SubMenu;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ag;->e()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/n;
return-object p0
.end method
.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/n;
return-object p0
.end method
.method public final setHeaderTitle(I)Landroid/view/SubMenu;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ag;->e()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/n;
return-object p0
.end method
.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/n;
return-object p0
.end method
.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/View;)Landroid/support/v7/internal/view/menu/n;
return-object p0
.end method
.method public final setIcon(I)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->e:Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/r;->setIcon(I)Landroid/view/MenuItem;
return-object p0
.end method
.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->e:Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/r;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
return-object p0
.end method
.method public final setQwertyMode(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ag;->d:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/n;->setQwertyMode(Z)V
return-void
.end method