.class final Lcom/rim/bbm/BbmPlatformService$7;
.super Landroid/content/BroadcastReceiver;
.source "BbmPlatformService.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {v5}, Lcom/rim/bbm/BbmPlatformService;->onTimerExpired(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1d

    #calls: Lcom/rim/bbm/BbmPlatformService;->scheduleAlarm(JLjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/rim/bbm/BbmPlatformService;->access$400(JLjava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const-string v0, "onReceive wakeup alarm receiver - no longer arming timer as timeout <0"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1c
.end method
