.class final Lcom/instagram/android/fragment/c;
.super Landroid/content/BroadcastReceiver;
.source "AbstractFeedFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/a;
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "ActionBarService.action_bar_clicked"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12
iget-object v0, p0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->V()V
:goto_11
:cond_11
return-void
:cond_12
const-string v1, "ActionBarService.action_bar_refresh_click"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->e()Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->i()Z
move-result v0
if-eqz v0, :cond_40
new-instance v0, Lcom/instagram/common/analytics/b;
const-string v1, "action_bar_feed_retry"
iget-object v2, p0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;
invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
iget-object v1, p0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
:cond_40
iget-object v0, p0, Lcom/instagram/android/fragment/c;->a:Lcom/instagram/android/fragment/a;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/a;->c(Z)V
goto :goto_11
.end method