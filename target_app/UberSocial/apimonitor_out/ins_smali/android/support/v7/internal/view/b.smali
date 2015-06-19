.class public Landroid/support/v7/internal/view/b;
.super Landroid/support/v7/b/a;
.source "SourceFile"
.field final a:Landroid/view/MenuInflater;
.field final b:Landroid/view/ActionMode;
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode;)V
.registers 4
invoke-direct {p0}, Landroid/support/v7/b/a;-><init>()V
iput-object p2, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
new-instance v0, Landroid/support/v7/internal/view/f;
invoke-direct {v0, p1}, Landroid/support/v7/internal/view/f;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/internal/view/b;->a:Landroid/view/MenuInflater;
return-void
.end method
.method public a()Landroid/view/MenuInflater;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->a:Landroid/view/MenuInflater;
return-object v0
.end method
.method public a(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(I)V
return-void
.end method
.method public a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V
return-void
.end method
.method public a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V
return-void
.end method
.method public a_()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public b()Landroid/view/Menu;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;
move-result-object v0
invoke-static {v0}, Landroid/support/v7/internal/view/menu/af;->a(Landroid/view/Menu;)Landroid/view/Menu;
move-result-object v0
return-object v0
.end method
.method public b(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(I)V
return-void
.end method
.method public b(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public c()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
return-void
.end method
.method public d()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V
return-void
.end method
.method public f()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public g()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public i()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;
move-result-object v0
return-object v0
.end method