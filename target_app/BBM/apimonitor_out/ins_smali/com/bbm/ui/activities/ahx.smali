.class final Lcom/bbm/ui/activities/ahx;
.super Landroid/content/BroadcastReceiver;
.source "StartupActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/StartupActivity;
.method constructor <init>(Lcom/bbm/ui/activities/StartupActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->a(Lcom/bbm/ui/activities/StartupActivity;)Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->b(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->b(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->b(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->c(Lcom/bbm/ui/activities/StartupActivity;)Landroid/app/AlertDialog;
:cond_2a
iget-object v0, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->d(Lcom/bbm/ui/activities/StartupActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ahx;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->e(Lcom/bbm/ui/activities/StartupActivity;)V
:cond_34
return-void
.end method