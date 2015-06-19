.class public final Landroid/support/v4/app/p;
.super Landroid/support/v4/app/r;
.source "FragmentActivityHost.java"
.field private final a:Landroid/support/v4/app/k;
.method public constructor <init>(Landroid/support/v4/app/k;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
return-void
.end method
.method public final a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
return-object v0
.end method
.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;
.registers 5
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;
move-result-object v0
return-object v0
.end method
.method public final a(I)Landroid/view/View;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method final a(Landroid/support/v4/app/Fragment;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;)V
return-void
.end method
.method final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
return-void
.end method
.method final a(Landroid/support/v4/app/s;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/s;)V
return-void
.end method
.method final a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/k;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
return-void
.end method
.method final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)V
return-void
.end method
.method final a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1, p2, p3}, Landroid/support/v4/app/k;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
return-void
.end method
.method public final b()Landroid/os/Handler;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
iget-object v0, v0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;
return-object v0
.end method
.method public final c()Landroid/view/Window;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
return-object v0
.end method
.method public final d()Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;
move-result-object v0
return-object v0
.end method
.method public final e()Landroid/view/LayoutInflater;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
return-object v0
.end method
.method public final f()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z
move-result v0
return v0
.end method
.method final g()Landroid/support/v4/app/u;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
iget-object v0, v0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;
return-object v0
.end method
.method final h()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
iget-boolean v0, v0, Landroid/support/v4/app/k;->i:Z
return v0
.end method
.method final i()Landroid/support/v4/app/s;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->a()Landroid/support/v4/app/s;
move-result-object v0
return-object v0
.end method
.method final j()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->c()V
return-void
.end method