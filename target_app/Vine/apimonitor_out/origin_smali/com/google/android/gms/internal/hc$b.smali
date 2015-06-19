.class public abstract Lcom/google/android/gms/internal/hc$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic Gf:Lcom/google/android/gms/internal/hc;

.field private Gg:Z

.field private mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$b;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/hc$b;->mListener:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hc$b;->Gg:Z

    return-void
.end method


# virtual methods
.method protected abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract fp()V
.end method

.method public fq()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$b;->mListener:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/hc$b;->Gg:Z

    if-eqz v1, :cond_25

    const-string v1, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " being reused. This is not safe."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    if-eqz v0, :cond_3c

    :try_start_28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hc$b;->d(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_37

    :goto_2b
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hc$b;->Gg:Z

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hc$b;->unregister()V

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catch_37
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hc$b;->fp()V

    throw v0

    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hc$b;->fp()V

    goto :goto_2b

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public fr()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/hc$b;->mListener:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public unregister()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hc$b;->fr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$b;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->b(Lcom/google/android/gms/internal/hc;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$b;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->b(Lcom/google/android/gms/internal/hc;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method
