.class final Lcom/instagram/j/b;
.super Landroid/content/BroadcastReceiver;
.source "AppDataUsageTracker.java"
.field final synthetic a:Lcom/instagram/j/a;
.method constructor <init>(Lcom/instagram/j/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/j/b;->a:Lcom/instagram/j/a;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/j/b;->a:Lcom/instagram/j/a;
invoke-static {v0}, Lcom/instagram/j/a;->a(Lcom/instagram/j/a;)V
:cond_11
return-void
.end method