.class public Lcom/commonsware/cwac/wakeful/demo/OnBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnBootReceiver.java"
.field private static final PERIOD:I = 0x2710
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 11
const/4 v2, 0x0
const-string v1, "alarm"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
new-instance v7, Landroid/content/Intent;
const-class v1, Lcom/commonsware/cwac/wakeful/demo/OnAlarmReceiver;
invoke-direct {v7, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {p1, v2, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
const/4 v1, 0x2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
const-wide/16 v4, 0x2710
invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
return-void
.end method