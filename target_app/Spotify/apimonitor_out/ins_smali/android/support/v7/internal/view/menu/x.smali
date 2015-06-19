.class final Landroid/support/v7/internal/view/menu/x;
.super Landroid/support/v7/internal/view/menu/t;
.source "SourceFile"
.implements Landroid/support/v4/view/n;
.field  c:Landroid/view/ActionProvider$VisibilityListener;
.field final synthetic d:Landroid/support/v7/internal/view/menu/w;
.method public constructor <init>(Landroid/support/v7/internal/view/menu/w;Landroid/support/v4/view/l;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/x;->d:Landroid/support/v7/internal/view/menu/w;
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/t;-><init>(Landroid/support/v7/internal/view/menu/s;Landroid/support/v4/view/l;)V
return-void
.end method
.method public final isVisible()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v4/view/l;
const/4 v0, 0x1
return v0
.end method
.method public final onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v4/view/l;
invoke-virtual {v0}, Landroid/support/v4/view/l;->b()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final overridesItemVisibility()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v4/view/l;
const/4 v0, 0x0
return v0
.end method
.method public final refreshVisibility()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v4/view/l;
invoke-virtual {v0}, Landroid/support/v4/view/l;->c()V
return-void
.end method
.method public final setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/x;->c:Landroid/view/ActionProvider$VisibilityListener;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v4/view/l;
if-eqz p1, :cond_a
:goto_6
invoke-virtual {v0, p0}, Landroid/support/v4/view/l;->a(Landroid/support/v4/view/n;)V
return-void
:cond_a
const/4 p0, 0x0
goto :goto_6
.end method