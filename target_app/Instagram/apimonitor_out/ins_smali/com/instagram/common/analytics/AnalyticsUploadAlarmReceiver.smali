.class public Lcom/instagram/common/analytics/AnalyticsUploadAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsUploadAlarmReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/analytics/i;->a(Ljava/lang/String;)Lcom/instagram/common/analytics/i;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/instagram/common/analytics/i;->a()V
:cond_d
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
check-cast v0, Lcom/instagram/common/analytics/x;
invoke-virtual {v0}, Lcom/instagram/common/analytics/x;->f()V
return-void
.end method