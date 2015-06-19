.class final Lcom/spotify/mobile/android/ui/g;
.super Lcom/spotify/mobile/android/ui/j;
.source "SourceFile"
.field protected a:Landroid/support/v4/app/Fragment;
.field final synthetic b:Lcom/spotify/mobile/android/ui/f;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Landroid/os/Bundle;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/g;->b:Lcom/spotify/mobile/android/ui/f;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/ui/j;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->c(Lcom/spotify/mobile/android/ui/f;)Landroid/support/v4/app/r;
move-result-object v0
const-string v1, "fragment"
invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/r;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/w;Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
.registers 7
iput-object p1, p0, Lcom/spotify/mobile/android/ui/g;->b:Lcom/spotify/mobile/android/ui/f;
invoke-direct {p0, p4}, Lcom/spotify/mobile/android/ui/j;-><init>(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
iput-object p3, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->e(Lcom/spotify/mobile/android/ui/f;)I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/w;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
.registers 9
iput-object p1, p0, Lcom/spotify/mobile/android/ui/g;->b:Lcom/spotify/mobile/android/ui/f;
invoke-direct {p0, p6}, Lcom/spotify/mobile/android/ui/j;-><init>(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
:try_start_5
invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
:try_end_d
.catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_d} :catch_21
.catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_28
iget-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, p4}, Landroid/support/v4/app/Fragment;->a(Landroid/support/v4/app/Fragment$SavedState;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, p5}, Landroid/support/v4/app/Fragment;->c_(Landroid/os/Bundle;)V
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->e(Lcom/spotify/mobile/android/ui/f;)I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
return-void
:catch_21
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_28
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public final a(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/i;
.registers 6
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/g;->d(Landroid/support/v4/app/w;)V
new-instance v0, Lcom/spotify/mobile/android/ui/i;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/g;->b:Lcom/spotify/mobile/android/ui/f;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/g;->f()Lcom/spotify/mobile/android/ui/ActionBarTitle;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/i;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
return-object v0
.end method
.method public final b()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->w()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final b(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/h;
.registers 6
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/g;->d(Landroid/support/v4/app/w;)V
new-instance v0, Lcom/spotify/mobile/android/ui/h;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/g;->b:Lcom/spotify/mobile/android/ui/f;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/g;->f()Lcom/spotify/mobile/android/ui/ActionBarTitle;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/h;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
return-object v0
.end method
.method public final c(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/g;
.registers 2
return-object p0
.end method
.method public final c()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public final d()Landroid/support/v4/app/Fragment;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
return-object v0
.end method
.method public final d(Landroid/support/v4/app/w;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
return-void
.end method
.method public final e()Landroid/os/Bundle;
.registers 5
invoke-super {p0}, Lcom/spotify/mobile/android/ui/j;->e()Landroid/os/Bundle;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/g;->b:Lcom/spotify/mobile/android/ui/f;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/f;->c(Lcom/spotify/mobile/android/ui/f;)Landroid/support/v4/app/r;
move-result-object v1
const-string v2, "fragment"
iget-object v3, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/r;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Active: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/g;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method