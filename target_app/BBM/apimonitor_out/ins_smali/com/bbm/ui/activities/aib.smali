.class final Lcom/bbm/ui/activities/aib;
.super Ljava/lang/Object;
.source "StartupActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/StartupActivity;
.method constructor <init>(Lcom/bbm/ui/activities/StartupActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aib;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 9
const-wide/16 v6, 0x7d0
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/aib;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/StartupActivity;->getApplication()Landroid/app/Application;
sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;
invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;
move-result-object v0
iget-object v2, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
sget-object v0, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;
if-ne v2, v0, :cond_16
move v0, v1
:goto_15
return v0
:cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/aib;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0, v2}, Lcom/bbm/setup/r;->a(Landroid/content/Context;Lcom/bbm/setup/ah;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v3
if-eqz v3, :cond_5d
const-string v3, "Starting setup from StartupActivity"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-static {v3, v4}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
const/high16 v3, 0x1
invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
sget-object v3, Lcom/bbm/setup/ah;->l:Lcom/bbm/setup/ah;
if-ne v2, v3, :cond_51
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iget-object v4, p0, Lcom/bbm/ui/activities/aib;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/StartupActivity;->g(Lcom/bbm/ui/activities/StartupActivity;)J
move-result-wide v4
sub-long/2addr v2, v4
cmp-long v4, v2, v6
if-gez v4, :cond_51
const-string v4, "IDS_ACTIVITY_BBM_SPINNER_DELAY"
sub-long v2, v6, v2
long-to-int v2, v2
invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
:cond_51
iget-object v2, p0, Lcom/bbm/ui/activities/aib;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-virtual {v2, v0, v1}, Lcom/bbm/ui/activities/StartupActivity;->startActivityForResult(Landroid/content/Intent;I)V
:goto_56
iget-object v0, p0, Lcom/bbm/ui/activities/aib;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->i(Lcom/bbm/ui/activities/StartupActivity;)Z
const/4 v0, 0x1
goto :goto_15
:cond_5d
iget-object v0, p0, Lcom/bbm/ui/activities/aib;->a:Lcom/bbm/ui/activities/StartupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/StartupActivity;->h(Lcom/bbm/ui/activities/StartupActivity;)V
goto :goto_56
.end method