.class  Landroid/support/v7/internal/view/menu/t$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;
.field final synthetic a:Landroid/support/v7/internal/view/menu/s;
.field final synthetic b:Landroid/support/v7/internal/view/menu/t;
.method constructor <init>(Landroid/support/v7/internal/view/menu/t;Landroid/support/v7/internal/view/menu/s;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/t$1;->b:Landroid/support/v7/internal/view/menu/t;
iput-object p2, p0, Landroid/support/v7/internal/view/menu/t$1;->a:Landroid/support/v7/internal/view/menu/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onActionProviderVisibilityChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/t$1;->b:Landroid/support/v7/internal/view/menu/t;
iget-object v0, v0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/ActionProvider;
invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/t$1;->b:Landroid/support/v7/internal/view/menu/t;
iget-object v0, v0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;
invoke-static {v0}, Landroid/support/v7/internal/view/menu/s;->b(Landroid/support/v7/internal/view/menu/s;)Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/t$1;->b:Landroid/support/v7/internal/view/menu/t;
iget-object v0, v0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/s;->b(Z)Landroid/view/MenuItem;
:cond_1b
return-void
.end method