.class public final Lcom/google/android/gms/internal/cu;
.super Lcom/google/android/gms/internal/cs;

# interfaces
.implements Lcom/google/android/gms/common/e;
.implements Lcom/google/android/gms/common/f;


# instance fields
.field private final a:Lcom/google/android/gms/internal/cr;

.field private final b:Lcom/google/android/gms/internal/cv;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)V
    .registers 6

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cs;-><init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/cr;

    new-instance v0, Lcom/google/android/gms/internal/cv;

    iget-object v1, p2, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;

    iget v1, v1, Lcom/google/android/gms/internal/db;->d:I

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/cv;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/cv;

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/cv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cv;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->e()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/b;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/cr;

    new-instance v1, Lcom/google/android/gms/internal/cf;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cf;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/cv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cv;->c()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/cv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cv;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/cv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cv;->c_()V

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public d()Lcom/google/android/gms/internal/cz;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->b:Lcom/google/android/gms/internal/cv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cv;->h()Lcom/google/android/gms/internal/cz;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_8} :catch_b

    move-result-object v0

    :try_start_9
    monitor-exit v1

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_a

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public f_()V
    .registers 2

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    return-void
.end method
