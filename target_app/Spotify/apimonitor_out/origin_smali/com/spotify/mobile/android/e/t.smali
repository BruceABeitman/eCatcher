.class public final Lcom/spotify/mobile/android/e/t;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/Context;

.field private final c:Lcom/spotify/mobile/android/e/l;

.field private final d:Lcom/spotify/mobile/android/e/l;

.field private e:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/l;)V
    .registers 8

    const-string v0, "Wifi"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/e/m;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/e/t;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/e/t;->c:Lcom/spotify/mobile/android/e/l;

    iput-object p3, p0, Lcom/spotify/mobile/android/e/t;->d:Lcom/spotify/mobile/android/e/l;

    iget-object v0, p0, Lcom/spotify/mobile/android/e/t;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/spotify/mobile/android/e/t;->e:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/spotify/mobile/android/e/t$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/t$1;-><init>(Lcom/spotify/mobile/android/e/t;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/e/t;->a:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/spotify/mobile/android/e/t;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/t;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/spotify/mobile/android/e/t;->f()V

    new-instance v0, Lcom/spotify/mobile/android/e/t$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/t$2;-><init>(Lcom/spotify/mobile/android/e/t;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/t;->d:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/t;->c:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/e/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/e/t;->f()V

    return-void
.end method

.method private f()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/e/t;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_27

    :cond_10
    move v0, v1

    :cond_11
    :goto_11
    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/e/t;->c:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/spotify/mobile/android/e/t;->d:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_23
    invoke-virtual {p0}, Lcom/spotify/mobile/android/e/t;->b()V

    :goto_26
    return-void

    :cond_27
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v0, :cond_11

    move v0, v1

    goto :goto_11

    :cond_2f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/e/t;->c()V

    goto :goto_26
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/e/t;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/t;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
