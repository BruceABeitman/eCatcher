.class public final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/net/ConnectivityManager;

.field private final d:Landroid/telephony/TelephonyManager;

.field private e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

.field private f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

.field private g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "51502"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->b:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->c:Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->d:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    if-ne p1, v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string v2, "Changing state %s -> %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    sget-object v2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$2;->a:[I

    iget-object v3, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-virtual {v3}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_54

    :goto_24
    :pswitch_24
    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

    if-nez v1, :cond_3f

    new-instance v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

    invoke-direct {v1, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)V

    iput-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3f
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/c;

    goto :goto_6

    :pswitch_50
    move v0, v1

    goto :goto_24

    :pswitch_52
    move v0, v1

    goto :goto_24

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_24
        :pswitch_50
        :pswitch_52
    .end packed-switch
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string v4, "SIM operator (%s) is supported, but connected to other operator (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_52

    const-string v1, "No active connection"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_41
    if-eqz v0, :cond_2c

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->d:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;->a()V

    goto :goto_31

    :cond_52
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_60

    const-string v1, "Active connection is not mobile"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_60
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v1, "Is on mobile, but not connected"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_6e
    move v0, v1

    goto :goto_41

    :cond_70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_8d

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;->b()V

    goto :goto_31

    :cond_8d
    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V

    goto :goto_31

    :cond_93
    const-string v3, "Operator %s is not supported"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;->b()V

    goto :goto_31
.end method

.method static synthetic b(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$1;

    invoke-direct {v1, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$1;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    return-void
.end method

.method public final b()V
    .registers 2

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;

    invoke-direct {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker$State;)V

    return-void
.end method
