.class  Landroid/support/v7/internal/view/menu/f;
.super Landroid/support/v7/internal/view/menu/z;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
.registers 7
iput-object p1, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
iget-object v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a:Landroid/support/v7/internal/view/menu/g;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/ac;)V
return-void
.end method
.method public onDismiss()V
.registers 3
invoke-super {p0}, Landroid/support/v7/internal/view/menu/z;->onDismiss()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->close()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;
return-void
.end method