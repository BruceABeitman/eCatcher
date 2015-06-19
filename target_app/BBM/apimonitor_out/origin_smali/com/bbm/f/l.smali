.class final Lcom/bbm/f/l;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"

# interfaces
.implements Lcom/rim/bbm/BbmCoreService$Callbacks;


# instance fields
.field final synthetic a:Lcom/bbm/f/j;


# direct methods
.method constructor <init>(Lcom/bbm/f/j;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final msgFromService(Lcom/rim/bbm/BbmCoreService$MessageType;[B)V
    .registers 6

    const/4 v2, 0x0

    const-string v0, "BBMCore msgFromService received type: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->g(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_b
    iget-object v0, p0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->h(Lcom/bbm/f/j;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/bbm/f/y;

    invoke-direct {v1, p1, p2}, Lcom/bbm/f/y;-><init>(Lcom/rim/bbm/BbmCoreService$MessageType;[B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    const-string v1, "Thread interrupted. This shouldn\'t happen"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public final serviceReady()V
    .registers 3

    const-string v0, "BBMCore service ready received"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->f(Lcom/bbm/f/j;)Lcom/bbm/util/dc;

    move-result-object v0

    new-instance v1, Lcom/bbm/f/n;

    invoke-direct {v1, p0}, Lcom/bbm/f/n;-><init>(Lcom/bbm/f/l;)V

    invoke-interface {v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final serviceStopped()V
    .registers 3

    const-string v0, "BbmCoreService serviceStopped received."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/f/l;->a:Lcom/bbm/f/j;

    invoke-static {v0}, Lcom/bbm/f/j;->f(Lcom/bbm/f/j;)Lcom/bbm/util/dc;

    move-result-object v0

    new-instance v1, Lcom/bbm/f/m;

    invoke-direct {v1, p0}, Lcom/bbm/f/m;-><init>(Lcom/bbm/f/l;)V

    invoke-interface {v0, v1}, Lcom/bbm/util/dc;->c(Ljava/lang/Runnable;)V

    return-void
.end method
