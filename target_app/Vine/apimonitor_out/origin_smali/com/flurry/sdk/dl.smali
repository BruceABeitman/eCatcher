.class public Lcom/flurry/sdk/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/dl;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dl;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/dl;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/sdk/dl;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/flurry/sdk/dl;
    .registers 1

    sget-object v0, Lcom/flurry/sdk/dl;->a:Lcom/flurry/sdk/dl;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lcom/flurry/sdk/dl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/dl;->a:Lcom/flurry/sdk/dl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    if-nez p0, :cond_16

    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_16
    :try_start_16
    new-instance v0, Lcom/flurry/sdk/dl;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flurry/sdk/dl;->a:Lcom/flurry/sdk/dl;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    goto :goto_7
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/dl;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/dl;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/dl;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/dl;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public b(Ljava/lang/Runnable;J)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/dl;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public c()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/dl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/dl;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public d(Ljava/lang/Runnable;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/dl;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
