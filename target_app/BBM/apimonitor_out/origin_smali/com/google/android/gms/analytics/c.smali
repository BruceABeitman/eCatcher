.class Lcom/google/android/gms/analytics/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/b;


# instance fields
.field private mContext:Landroid/content/Context;

.field private qM:Landroid/content/ServiceConnection;

.field private qN:Lcom/google/android/gms/analytics/c$b;

.field private qO:Lcom/google/android/gms/analytics/c$c;

.field private qP:Lcom/google/android/gms/internal/dj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/c$b;Lcom/google/android/gms/analytics/c$c;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput-object p2, p0, Lcom/google/android/gms/analytics/c;->qN:Lcom/google/android/gms/analytics/c$b;

    if-nez p3, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput-object p3, p0, Lcom/google/android/gms/analytics/c;->qO:Lcom/google/android/gms/analytics/c$c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/internal/dj;)Lcom/google/android/gms/internal/dj;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->qP:Lcom/google/android/gms/internal/dj;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->bn()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/c;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bl()Lcom/google/android/gms/internal/dj;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->bm()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qP:Lcom/google/android/gms/internal/dj;

    return-object v0
.end method

.method private bn()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->bo()V

    return-void
.end method

.method private bo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qN:Lcom/google/android/gms/analytics/c$b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onConnected()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qO:Lcom/google/android/gms/analytics/c$c;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qN:Lcom/google/android/gms/analytics/c$b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/di;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->bl()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/dj;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHit failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public bk()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->bl()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/dj;->bk()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear hits failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected bm()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public connect()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_29

    const-string v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    new-instance v1, Lcom/google/android/gms/analytics/c$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/c$a;-><init>(Lcom/google/android/gms/analytics/c;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect: bindService returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    if-nez v1, :cond_28

    iput-object v4, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qO:Lcom/google/android/gms/analytics/c$c;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/analytics/c$c;->a(ILandroid/content/Intent;)V

    goto :goto_28
.end method

.method public disconnect()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->qP:Lcom/google/android/gms/internal/dj;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_15

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_e} :catch_16

    :goto_e
    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->qM:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qN:Lcom/google/android/gms/analytics/c$b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onDisconnected()V

    :cond_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_e

    :catch_18
    move-exception v0

    goto :goto_e
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->qP:Lcom/google/android/gms/internal/dj;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
