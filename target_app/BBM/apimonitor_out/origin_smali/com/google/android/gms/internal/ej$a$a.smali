.class public Lcom/google/android/gms/internal/ej$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic Ca:Lcom/google/android/gms/internal/ej$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ej$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ej$a;->BZ:Lcom/google/android/gms/internal/ej;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ej;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh$f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/eh$f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2d

    goto :goto_1d

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;I)I

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ej$a;->BZ:Lcom/google/android/gms/internal/ej;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ej;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh$f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/eh$f;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_1e

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a$a;->Ca:Lcom/google/android/gms/internal/ej$a;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ej$a;->a(Lcom/google/android/gms/internal/ej$a;I)I

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    return-void
.end method