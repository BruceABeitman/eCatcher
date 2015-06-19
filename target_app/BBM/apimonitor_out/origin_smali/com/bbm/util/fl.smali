.class final Lcom/bbm/util/fl;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusMonitor.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/fk;


# direct methods
.method constructor <init>(Lcom/bbm/util/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/fl;->a:Lcom/bbm/util/fk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/util/fl;->a:Lcom/bbm/util/fk;

    iget-object v1, v0, Lcom/bbm/util/fk;->a:Lcom/bbm/j/t;

    iget-object v0, p0, Lcom/bbm/util/fl;->a:Lcom/bbm/util/fk;

    iget-object v0, v0, Lcom/bbm/util/fk;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_23
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1f
.end method
