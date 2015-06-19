.class Lcom/google/android/gms/common/api/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field final synthetic zN:Lcom/google/android/gms/common/api/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/common/api/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->c(Lcom/google/android/gms/common/api/b;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->d(Lcom/google/android/gms/common/api/b;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2c

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_21

    packed-switch p1, :pswitch_data_5c

    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1a
    return-void

    :pswitch_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->connect()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    goto :goto_11

    :catchall_21
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->e(Lcom/google/android/gms/common/api/b;)Z
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_21

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1a

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/common/api/b;I)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/b;->zG:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    iget-object v1, v1, Lcom/google/android/gms/common/api/b;->zG:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/b$2;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v2}, Lcom/google/android/gms/common/api/b;->f(Lcom/google/android/gms/common/api/b;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5a
    .catchall {:try_start_3e .. :try_end_5a} :catchall_21

    goto :goto_11

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_1b
    .end packed-switch
.end method
