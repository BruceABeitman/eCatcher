.class public Lcom/commonsware/cwac/wakeful/demo/OnAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnAlarmReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
const-class v0, Lcom/commonsware/cwac/wakeful/demo/AppService;
invoke-static {p1, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V
return-void
.end method