.class final Lcom/bbm/ui/activities/ji;
.super Landroid/content/BroadcastReceiver;
.source "EphemeralImageActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/EphemeralImageActivity;
.method constructor <init>(Lcom/bbm/ui/activities/EphemeralImageActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ji;->a:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "EphemeralImageActivity.ACTION_CLOSE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/activities/ji;->a:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->finish()V
:cond_11
return-void
.end method