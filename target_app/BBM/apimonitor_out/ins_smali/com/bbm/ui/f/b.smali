.class final Lcom/bbm/ui/f/b;
.super Landroid/content/BroadcastReceiver;
.source "BBMNotificationManager.java"
.field final synthetic a:Lcom/bbm/ui/f/a;
.method constructor <init>(Lcom/bbm/ui/f/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/f/b;->a:Lcom/bbm/ui/f/a;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v0, "Received broadcast about deleted notification: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/f/b;->a:Lcom/bbm/ui/f/a;
invoke-static {v0}, Lcom/bbm/ui/f/a;->a(Lcom/bbm/ui/f/a;)V
return-void
.end method