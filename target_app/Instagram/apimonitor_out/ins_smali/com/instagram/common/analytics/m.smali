.class final Lcom/instagram/common/analytics/m;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReporter.java"
.field final synthetic a:Lcom/instagram/common/analytics/l;
.method constructor <init>(Lcom/instagram/common/analytics/l;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/analytics/m;->a:Lcom/instagram/common/analytics/l;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
invoke-virtual {p0}, Lcom/instagram/common/analytics/m;->isInitialStickyBroadcast()Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/instagram/common/analytics/m;->a:Lcom/instagram/common/analytics/l;
invoke-static {v0, p1}, Lcom/instagram/common/analytics/l;->a(Lcom/instagram/common/analytics/l;Landroid/content/Context;)V
goto :goto_6
.end method