.class Lcom/google/android/gms/internal/fw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/fv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fv;Lcom/google/android/gms/internal/fv$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fw;-><init>(Lcom/google/android/gms/internal/fv;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fv;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->b(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->c(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->d(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->e(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->f(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->g(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v3}, Lcom/google/android/gms/internal/fv;->h(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ga;->b(JI)Z

    sget-object v1, Lcom/google/android/gms/internal/ga;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_56
    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v2}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v2

    if-nez v2, :cond_92

    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v2}, Lcom/google/android/gms/internal/fv;->e(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v2

    if-nez v2, :cond_92

    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v2}, Lcom/google/android/gms/internal/fv;->f(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v2

    if-nez v2, :cond_92

    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v2}, Lcom/google/android/gms/internal/fv;->g(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v2

    if-nez v2, :cond_92

    iget-object v2, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v2}, Lcom/google/android/gms/internal/fv;->h(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v2

    if-eqz v2, :cond_93

    :cond_92
    const/4 v0, 0x1

    :cond_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_56 .. :try_end_94} :catchall_9a

    iget-object v1, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fv;->b(Lcom/google/android/gms/internal/fv;Z)V

    return-void

    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0
.end method
