.class Lcom/google/android/gms/common/api/b$b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic zN:Lcom/google/android/gms/common/api/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/b$b;->zN:Lcom/google/android/gms/common/api/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$b;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$b;->zN:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$b;->zN:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$b;->zN:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->connect()V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_2d

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/common/api/b$b;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2c
    return-void

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b$b;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_38
    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method