.class public final Lcom/spotify/mobile/android/util/by;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/by;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/by;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/by;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/by;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/by;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/by;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/spotify/mobile/android/util/by;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_a
.end method

.method public final a(Ljava/lang/Runnable;II)V
    .registers 11

    new-instance v1, Lcom/spotify/mobile/android/util/bz;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/util/bz;-><init>(Lcom/spotify/mobile/android/util/by;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/by;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p2

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/by;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
