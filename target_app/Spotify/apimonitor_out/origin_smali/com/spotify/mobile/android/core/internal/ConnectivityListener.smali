.class public Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECTION_TYPE_3G:I = 0x3

.field public static final CONNECTION_TYPE_EDGE:I = 0x2

.field public static final CONNECTION_TYPE_ETHERNET:I = 0x5

.field public static final CONNECTION_TYPE_GPRS:I = 0x1

.field public static final CONNECTION_TYPE_NONE:I = 0x0

.field public static final CONNECTION_TYPE_UNKNOWN:I = -0x1

.field public static final CONNECTION_TYPE_WLAN:I = 0x4

.field private static sApplicationContext:Landroid/content/Context;

.field private static sConnectivityListenerInstance:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;-><init>(Lcom/spotify/mobile/android/core/internal/ConnectivityListener;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application context has not been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/spotify/mobile/android/core/internal/ConnectivityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->connectivityHasChanged()V

    return-void
.end method

.method private native connectivityHasChanged()V
.end method

.method public static declared-synchronized getInstance()Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
    .registers 2

    const-class v1, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sConnectivityListenerInstance:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;

    if-nez v0, :cond_e

    new-instance v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;

    invoke-direct {v0}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sConnectivityListenerInstance:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;

    :cond_e
    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sConnectivityListenerInstance:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application context has already been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sput-object p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getConnectionType()I
    .registers 6

    const/4 v1, 0x2

    const/4 v0, 0x3

    const/4 v2, 0x1

    sget-object v3, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application context has not been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v3, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    if-ge v3, v0, :cond_1e

    if-ne v3, v1, :cond_31

    move v0, v1

    goto :goto_1e

    :cond_31
    if-ne v3, v2, :cond_3c

    move v0, v2

    goto :goto_1e

    :cond_35
    const/4 v1, 0x6

    if-eq v3, v1, :cond_1e

    if-ne v3, v2, :cond_3c

    const/4 v0, 0x4

    goto :goto_1e

    :cond_3c
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method public isRoaming()Z
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "application context has not been set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public unregister()V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->sApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
