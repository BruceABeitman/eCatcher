.class final Landroid/support/v7/app/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/ActionMode$Callback;
.field final synthetic a:Landroid/support/v7/app/m;
.field private final b:Landroid/view/ActionMode$Callback;
.method constructor <init>(Landroid/support/v7/app/m;Landroid/view/ActionMode$Callback;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/app/n;->b:Landroid/view/ActionMode$Callback;
return-void
.end method
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/ActionMode$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/ActionMode$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v1, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/m;
invoke-static {v1, p1}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m;Landroid/view/ActionMode;)Landroid/view/ActionMode;
iget-object v1, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/m;
invoke-virtual {v1}, Landroid/support/v7/app/m;->e()V
:cond_12
return v0
.end method
.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/ActionMode$Callback;
invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V
iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/m;
invoke-virtual {v0}, Landroid/support/v7/app/m;->f()V
iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/support/v7/app/m;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v7/app/m;->a(Landroid/support/v7/app/m;Landroid/view/ActionMode;)Landroid/view/ActionMode;
return-void
.end method
.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/ActionMode$Callback;
invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
move-result v0
return v0
.end method