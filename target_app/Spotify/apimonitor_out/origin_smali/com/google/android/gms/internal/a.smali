.class public final Lcom/google/android/gms/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/d;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/dy;",
            "Lcom/google/android/gms/internal/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/a;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/a;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/dy;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dy;)Lcom/google/android/gms/internal/c;
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/a;->b(Lcom/google/android/gms/internal/dy;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c;

    monitor-exit v1

    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/c;-><init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dy;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/d;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_12

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/c;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/c;->d()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/dy;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->b()V

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
