.class  Landroid/support/v7/app/k;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v7/b/b;
.field final synthetic a:Landroid/support/v7/app/j;
.field private b:Landroid/support/v7/b/b;
.method public constructor <init>(Landroid/support/v7/app/j;Landroid/support/v7/b/b;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/app/k;->b:Landroid/support/v7/b/b;
return-void
.end method
.method public a(Landroid/support/v7/b/a;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/support/v7/b/b;
invoke-interface {v0, p1}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;)V
iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/j;
iget-object v0, v0, Landroid/support/v7/app/j;->c:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->b(Landroid/support/v7/b/a;)V
iget-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/support/v7/app/j;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v7/app/j;->a(Landroid/support/v7/app/j;Landroid/support/v7/b/a;)Landroid/support/v7/b/a;
return-void
.end method
.method public a(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/support/v7/b/b;
invoke-interface {v0, p1, p2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public a(Landroid/support/v7/b/a;Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/support/v7/b/b;
invoke-interface {v0, p1, p2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public b(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/support/v7/b/b;
invoke-interface {v0, p1, p2}, Landroid/support/v7/b/b;->b(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
move-result v0
return v0
.end method