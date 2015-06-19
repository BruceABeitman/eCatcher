.class Lcom/glympse/android/hal/r;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityListener.java"


# instance fields
.field final synthetic al:Lcom/glympse/android/hal/ConnectivityListener;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/ConnectivityListener;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/r;->al:Lcom/glympse/android/hal/ConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/ConnectivityListener;Lcom/glympse/android/hal/ConnectivityListener$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/r;-><init>(Lcom/glympse/android/hal/ConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/hal/r;->al:Lcom/glympse/android/hal/ConnectivityListener;

    invoke-static {v0}, Lcom/glympse/android/hal/ConnectivityListener;->a(Lcom/glympse/android/hal/ConnectivityListener;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/glympse/android/hal/ConnectivityChecker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/hal/r;->al:Lcom/glympse/android/hal/ConnectivityListener;

    invoke-static {v0}, Lcom/glympse/android/hal/ConnectivityListener;->b(Lcom/glympse/android/hal/ConnectivityListener;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_14

    :catch_2a
    move-exception v0

    goto :goto_14
.end method
