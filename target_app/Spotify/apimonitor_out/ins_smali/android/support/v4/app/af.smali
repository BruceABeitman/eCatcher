.class final Landroid/support/v4/app/af;
.super Landroid/support/v4/app/ae;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/ae;-><init>()V
return-void
.end method
.method public final a(Landroid/app/Activity;)Landroid/content/Intent;
.registers 3
invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;
move-result-object v0
if-nez v0, :cond_a
invoke-super {p0, p1}, Landroid/support/v4/app/ae;->a(Landroid/app/Activity;)Landroid/content/Intent;
move-result-object v0
:cond_a
return-object v0
.end method
.method public final a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
.registers 4
iget-object v0, p2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;
if-nez v0, :cond_8
invoke-super {p0, p1, p2}, Landroid/support/v4/app/ae;->a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
move-result-object v0
:cond_8
return-object v0
.end method
.method public final a(Landroid/app/Activity;Landroid/content/Intent;)Z
.registers 4
invoke-virtual {p1, p2}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z
move-result v0
return v0
.end method
.method public final b(Landroid/app/Activity;Landroid/content/Intent;)V
.registers 3
invoke-virtual {p1, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z
return-void
.end method