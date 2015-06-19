.class Lcom/glympse/android/hal/bv;
.super Ljava/lang/Object;
.source "WifiProvider.java"

# interfaces
.implements Lcom/glympse/android/hal/GWifiProvider;


# instance fields
.field private e:Landroid/content/Context;

.field private eO:Lcom/glympse/android/hal/GWifiListener;

.field private eP:Lcom/glympse/android/hal/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/bv;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/hal/bv;)Lcom/glympse/android/hal/GWifiListener;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/bv;->eO:Lcom/glympse/android/hal/GWifiListener;

    return-object v0
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)Lcom/glympse/android/hal/bu;
    .registers 4

    new-instance v0, Lcom/glympse/android/hal/bu;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/glympse/android/hal/bu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public enablePulling(ZI)V
    .registers 3

    return-void
.end method

.method public getConnectionInfo()Lcom/glympse/android/hal/GWifiInfo;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/bv;->e:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/glympse/android/hal/bv;->a(Landroid/net/wifi/WifiInfo;)Lcom/glympse/android/hal/bu;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public start(Lcom/glympse/android/hal/GWifiListener;)V
    .registers 6

    iput-object p1, p0, Lcom/glympse/android/hal/bv;->eO:Lcom/glympse/android/hal/GWifiListener;

    new-instance v0, Lcom/glympse/android/hal/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/glympse/android/hal/bw;-><init>(Lcom/glympse/android/hal/bv;Lcom/glympse/android/hal/bv$1;)V

    iput-object v0, p0, Lcom/glympse/android/hal/bv;->eP:Lcom/glympse/android/hal/bw;

    iget-object v0, p0, Lcom/glympse/android/hal/bv;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/bv;->eP:Lcom/glympse/android/hal/bw;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/bv;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/bv;->eP:Lcom/glympse/android/hal/bw;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/glympse/android/hal/bv;->e:Landroid/content/Context;

    iput-object v2, p0, Lcom/glympse/android/hal/bv;->eP:Lcom/glympse/android/hal/bw;

    iput-object v2, p0, Lcom/glympse/android/hal/bv;->eO:Lcom/glympse/android/hal/GWifiListener;

    return-void
.end method
