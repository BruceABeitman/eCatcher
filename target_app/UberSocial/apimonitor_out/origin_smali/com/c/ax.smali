.class final Lcom/c/ax;
.super Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/c/ax;->isDone()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/c/cq;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/c/ax;->run()V

    :cond_f
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lcom/c/ax;->isDone()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/c/cq;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/c/ax;->run()V

    :cond_f
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
