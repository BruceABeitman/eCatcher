.class public Lcom/glympse/android/hal/ConnectivityListener;
.super Ljava/lang/Object;
.source "ConnectivityListener.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private aj:Z

.field private ak:Lcom/glympse/android/hal/r;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->aj:Z

    new-instance v0, Lcom/glympse/android/hal/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/glympse/android/hal/r;-><init>(Lcom/glympse/android/hal/ConnectivityListener;Lcom/glympse/android/hal/ConnectivityListener$1;)V

    iput-object v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->ak:Lcom/glympse/android/hal/r;

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/hal/ConnectivityListener;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->aj:Z

    return v0
.end method

.method static synthetic b(Lcom/glympse/android/hal/ConnectivityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/hal/ConnectivityListener;->l()V

    return-void
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GNetworkManager;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GJobQueue;->getRertyQueueLength()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private l()V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/hal/ConnectivityListener;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/glympse/android/hal/ConnectivityListener;->performRetry()V

    :cond_9
    return-void
.end method

.method private performRetry()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->retryAll(Z)V

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 6

    iget-boolean v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->aj:Z

    if-nez v0, :cond_19

    iput-object p1, p0, Lcom/glympse/android/hal/ConnectivityListener;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/glympse/android/hal/ConnectivityListener;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/hal/ConnectivityListener;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/glympse/android/hal/ConnectivityListener;->ak:Lcom/glympse/android/hal/r;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->aj:Z

    :cond_19
    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->aj:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/glympse/android/hal/ConnectivityListener;->ak:Lcom/glympse/android/hal/r;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/glympse/android/hal/ConnectivityListener;->e:Landroid/content/Context;

    iput-object v2, p0, Lcom/glympse/android/hal/ConnectivityListener;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/hal/ConnectivityListener;->aj:Z

    :cond_13
    return-void
.end method
