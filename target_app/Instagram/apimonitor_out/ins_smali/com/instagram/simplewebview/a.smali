.class final Lcom/instagram/simplewebview/a;
.super Landroid/content/BroadcastReceiver;
.source "SimpleWebViewFragment.java"
.field final synthetic a:Lcom/instagram/simplewebview/SimpleWebViewFragment;
.method constructor <init>(Lcom/instagram/simplewebview/SimpleWebViewFragment;)V
.registers 2
iput-object p1, p0, Lcom/instagram/simplewebview/a;->a:Lcom/instagram/simplewebview/SimpleWebViewFragment;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "ActionBarService.action_bar_refresh_click"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/simplewebview/a;->a:Lcom/instagram/simplewebview/SimpleWebViewFragment;
invoke-static {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a(Lcom/instagram/simplewebview/SimpleWebViewFragment;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/simplewebview/a;->a:Lcom/instagram/simplewebview/SimpleWebViewFragment;
invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->b()V
:cond_19
return-void
.end method