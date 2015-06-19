.class final Lcom/mapquest/android/maps/bf;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectivityListener.java"


# instance fields
.field final synthetic a:Lcom/mapquest/android/maps/be;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/be;)V
    .registers 2

    iput-object p1, p0, Lcom/mapquest/android/maps/bf;->a:Lcom/mapquest/android/maps/be;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/be;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/bf;-><init>(Lcom/mapquest/android/maps/be;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/16 v7, 0x3e

    const/4 v6, 0x0

    const/16 v5, 0x3d

    const/4 v4, 0x1

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/mapquest/android/maps/bf;->a:Lcom/mapquest/android/maps/be;

    invoke-static {v1}, Lcom/mapquest/android/maps/be;->a(Lcom/mapquest/android/maps/be;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v3, p0, Lcom/mapquest/android/maps/bf;->a:Lcom/mapquest/android/maps/be;

    invoke-static {v3}, Lcom/mapquest/android/maps/be;->a(Lcom/mapquest/android/maps/be;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_40

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {v4}, Lcom/mapquest/android/maps/be;->a(Z)Z

    invoke-static {v5}, Lcom/mapquest/android/maps/g;->a(I)V

    :goto_38
    return-void

    :cond_39
    invoke-static {v6}, Lcom/mapquest/android/maps/be;->a(Z)Z

    invoke-static {v7}, Lcom/mapquest/android/maps/g;->a(I)V

    goto :goto_38

    :cond_40
    if-gez v1, :cond_49

    invoke-static {v4}, Lcom/mapquest/android/maps/be;->a(Z)Z

    invoke-static {v5}, Lcom/mapquest/android/maps/g;->a(I)V

    goto :goto_38

    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/mapquest/android/maps/bf;->a:Lcom/mapquest/android/maps/be;

    invoke-static {v0}, Lcom/mapquest/android/maps/be;->a(Lcom/mapquest/android/maps/be;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mapquest/android/maps/be;->a(Z)Z

    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6a} :catch_6b

    goto :goto_38

    :catch_6b
    move-exception v0

    const-string v0, "mq.maps.networkconnectivitylistener"

    const-string v1, "Failed to receive the network state; check if your app has android.permission.ACCESS_NETWORK_STATE permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_74
    const/4 v0, 0x0

    :try_start_75
    invoke-static {v0}, Lcom/mapquest/android/maps/be;->a(Z)Z

    const/16 v0, 0x3e

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7d} :catch_6b

    goto :goto_38
.end method
