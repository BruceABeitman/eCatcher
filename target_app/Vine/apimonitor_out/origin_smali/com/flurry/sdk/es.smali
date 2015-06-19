.class public Lcom/flurry/sdk/es;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/es$a;
    }
.end annotation


# static fields
.field private static e:Lcom/flurry/sdk/es;


# instance fields
.field a:Z

.field b:Ljava/lang/Boolean;

.field private final c:Lcom/flurry/sdk/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dq",
            "<",
            "Lcom/flurry/sdk/er;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/es;->d:Z

    new-instance v0, Lcom/flurry/sdk/dq;

    invoke-direct {v0}, Lcom/flurry/sdk/dq;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/es;->c:Lcom/flurry/sdk/dq;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/es;
    .registers 2

    const-class v1, Lcom/flurry/sdk/es;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/es;->e:Lcom/flurry/sdk/es;

    if-nez v0, :cond_e

    new-instance v0, Lcom/flurry/sdk/es;

    invoke-direct {v0}, Lcom/flurry/sdk/es;-><init>()V

    sput-object v0, Lcom/flurry/sdk/es;->e:Lcom/flurry/sdk/es;

    :cond_e
    sget-object v0, Lcom/flurry/sdk/es;->e:Lcom/flurry/sdk/es;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/flurry/sdk/es;->d:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_8

    :cond_1f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private declared-synchronized f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/er;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/es;->c:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->a()Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/sdk/er;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/es;->c:Lcom/flurry/sdk/dq;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/flurry/sdk/es;->d:Z

    invoke-direct {p0, v1}, Lcom/flurry/sdk/es;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/es;->a:Z

    iget-boolean v0, p0, Lcom/flurry/sdk/es;->d:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/flurry/sdk/es;->d()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_25

    :cond_21
    monitor-exit p0

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_12

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/es;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flurry/sdk/es;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/flurry/sdk/es;->a:Z

    goto :goto_a
.end method

.method d()V
    .registers 4

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/es;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/es;->a:Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public e()Lcom/flurry/sdk/es$a;
    .registers 3

    iget-boolean v0, p0, Lcom/flurry/sdk/es;->d:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/es$a;->a:Lcom/flurry/sdk/es$a;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_23
    sget-object v0, Lcom/flurry/sdk/es$a;->a:Lcom/flurry/sdk/es$a;

    goto :goto_6

    :cond_26
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    sget-object v0, Lcom/flurry/sdk/es$a;->c:Lcom/flurry/sdk/es$a;

    goto :goto_6

    :pswitch_30
    sget-object v0, Lcom/flurry/sdk/es$a;->b:Lcom/flurry/sdk/es$a;

    goto :goto_6

    :pswitch_33
    sget-object v0, Lcom/flurry/sdk/es$a;->c:Lcom/flurry/sdk/es$a;

    goto :goto_6

    :pswitch_36
    sget-object v0, Lcom/flurry/sdk/es$a;->a:Lcom/flurry/sdk/es$a;

    goto :goto_6

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_36
        :pswitch_30
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/flurry/sdk/es;->a(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/flurry/sdk/es;->a:Z

    if-eq v1, v0, :cond_24

    iput-boolean v0, p0, Lcom/flurry/sdk/es;->a:Z

    invoke-direct {p0}, Lcom/flurry/sdk/es;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/er;

    iget-boolean v2, p0, Lcom/flurry/sdk/es;->a:Z

    invoke-interface {v0, v2}, Lcom/flurry/sdk/er;->a(Z)V

    goto :goto_12

    :cond_24
    return-void
.end method
