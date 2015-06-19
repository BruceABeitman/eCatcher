.class final Lcom/instagram/android/fragment/dv;
.super Landroid/content/BroadcastReceiver;
.source "RecommendedUserFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/dr;
.method constructor <init>(Lcom/instagram/android/fragment/dr;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/dr;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "ActionBarService.action_bar_clicked"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12
iget-object v0, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v0}, Lcom/instagram/android/fragment/dr;->U()V
:goto_11
:cond_11
return-void
:cond_12
const-string v1, "ActionBarService.action_bar_refresh_click"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->d(Lcom/instagram/android/fragment/dr;)Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->e(Lcom/instagram/android/fragment/dr;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/fragment/dv;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->f(Lcom/instagram/android/fragment/dr;)V
goto :goto_11
.end method