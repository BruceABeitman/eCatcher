.class public abstract Lcom/google/android/gms/internal/gb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fy;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fy;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gb;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->b:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gb;->c:Z

    if-eqz v1, :cond_21

    const-string v1, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Callback proxy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " being reused. This is not safe."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_30

    if-eqz v0, :cond_27

    :try_start_24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_33

    :cond_27
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->c:Z

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_35

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->b()V

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_33
    move-exception v0

    throw v0

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method

.method public final b()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fy;

    invoke-static {v0}, Lcom/google/android/gms/internal/fy;->b(Lcom/google/android/gms/internal/fy;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fy;

    invoke-static {v0}, Lcom/google/android/gms/internal/fy;->b(Lcom/google/android/gms/internal/fy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->b:Ljava/lang/Object;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
