.class final Lcom/instagram/i/c/b;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedFollowRequestsFragment.java"
.field final synthetic a:Lcom/instagram/i/c/a;
.method constructor <init>(Lcom/instagram/i/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/c/b;->a:Lcom/instagram/i/c/a;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/i/c/b;->a:Lcom/instagram/i/c/a;
invoke-static {v0}, Lcom/instagram/i/c/a;->a(Lcom/instagram/i/c/a;)Lcom/instagram/i/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/a/c;->notifyDataSetChanged()V
:goto_15
:cond_15
return-void
:cond_16
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "ActionBarService.action_bar_back_click"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/e/a;->b()V
goto :goto_15
.end method