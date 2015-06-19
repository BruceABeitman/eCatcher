.class final Lcom/rim/bbm/BbmPlatformService$5;
.super Landroid/content/BroadcastReceiver;
.source "BbmPlatformService.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_38
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
const-string v0, "noConnectivity"
invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_39
move v1, v2
:goto_19
const-string v0, "power"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
move-result v0
if-nez v0, :cond_35
if-nez v1, :cond_3b
const-string v0, "Cancelling timer when screen is off and we are no longer connected"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"
#calls: Lcom/rim/bbm/BbmPlatformService;->cancelAlarm(Ljava/lang/String;)V
invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->access$200(Ljava/lang/String;)V
:goto_35
:cond_35
invoke-static {v1}, Lcom/rim/bbm/BbmPlatformService;->access$302(Z)Z
:cond_38
return-void
:cond_39
move v1, v3
goto :goto_19
:cond_3b
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->access$300()Z
move-result v0
if-eq v0, v2, :cond_35
invoke-static {v3}, Lcom/rim/bbm/BbmPlatformService;->onTimerExpired(I)J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v0, v4, v6
if-lez v0, :cond_51
const-string v0, "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"
#calls: Lcom/rim/bbm/BbmPlatformService;->scheduleAlarm(JLjava/lang/String;)V
invoke-static {v4, v5, v0}, Lcom/rim/bbm/BbmPlatformService;->access$400(JLjava/lang/String;)V
goto :goto_35
:cond_51
const-string v0, "onReceive network event - no longer arming timer as timeout <0"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_35
.end method