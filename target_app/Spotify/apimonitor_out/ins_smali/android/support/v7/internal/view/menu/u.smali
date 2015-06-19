.class final Landroid/support/v7/internal/view/menu/u;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.implements Landroid/view/CollapsibleActionView;
.field final a:Landroid/support/v7/b/b;
.method constructor <init>(Landroid/view/View;)V
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
move-object v0, p1
check-cast v0, Landroid/support/v7/b/b;
iput-object v0, p0, Landroid/support/v7/internal/view/menu/u;->a:Landroid/support/v7/b/b;
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/u;->addView(Landroid/view/View;)V
return-void
.end method
.method public final onActionViewCollapsed()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->a:Landroid/support/v7/b/b;
invoke-interface {v0}, Landroid/support/v7/b/b;->b()V
return-void
.end method
.method public final onActionViewExpanded()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->a:Landroid/support/v7/b/b;
invoke-interface {v0}, Landroid/support/v7/b/b;->a()V
return-void
.end method