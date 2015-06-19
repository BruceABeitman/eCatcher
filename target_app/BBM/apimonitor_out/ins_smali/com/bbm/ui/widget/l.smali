.class final Lcom/bbm/ui/widget/l;
.super Landroid/content/BroadcastReceiver;
.source "WidgetMonitor.java"
.field final synthetic a:Lcom/bbm/ui/widget/k;
.method constructor <init>(Lcom/bbm/ui/widget/k;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/widget/l;->a:Lcom/bbm/ui/widget/k;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.bbm.action.UPDATE_WIDGET"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/bbm/ui/widget/l;->a:Lcom/bbm/ui/widget/k;
iget-object v0, v0, Lcom/bbm/ui/widget/k;->a:Landroid/os/Handler;
new-instance v1, Lcom/bbm/ui/widget/m;
invoke-direct {v1, p0}, Lcom/bbm/ui/widget/m;-><init>(Lcom/bbm/ui/widget/l;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_18
return-void
.end method