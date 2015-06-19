.class final Lcom/instagram/i/c/r;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedYouFragment.java"
.field final synthetic a:Lcom/instagram/i/c/q;
.method constructor <init>(Lcom/instagram/i/c/q;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/c/r;->a:Lcom/instagram/i/c/q;
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
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/instagram/i/c/r;->a:Lcom/instagram/i/c/q;
invoke-static {v0}, Lcom/instagram/i/c/q;->a(Lcom/instagram/i/c/q;)Lcom/instagram/i/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/a/a;->notifyDataSetChanged()V
:cond_15
return-void
.end method