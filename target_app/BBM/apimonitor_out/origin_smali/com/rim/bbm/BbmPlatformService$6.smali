.class final Lcom/rim/bbm/BbmPlatformService$6;
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

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    :goto_1c
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eqz v0, :cond_3e

    invoke-static {v1}, Lcom/rim/bbm/BbmPlatformService;->onTimerExpired(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_36

    const-string v0, "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"

    #calls: Lcom/rim/bbm/BbmPlatformService;->scheduleAlarm(JLjava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/rim/bbm/BbmPlatformService;->access$400(JLjava/lang/String;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    const-string v0, "onReceive screen event - no longer arming timer as timeout <0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_35

    :cond_3e
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "Cancelling timer because screen is on"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "com.rim.bbm.ACTION_PLATFORM_WAKEUP_ALARM"

    #calls: Lcom/rim/bbm/BbmPlatformService;->cancelAlarm(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/rim/bbm/BbmPlatformService;->access$200(Ljava/lang/String;)V

    goto :goto_35

    :cond_53
    move v0, v1

    goto :goto_1c
.end method
