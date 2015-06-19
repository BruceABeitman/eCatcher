.class Lcom/glympse/android/hal/ah;
.super Ljava/lang/Object;
.source "GlympseSemaphore.java"

# interfaces
.implements Lcom/glympse/android/hal/GSemaphore;


# instance fields
.field private bt:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/hal/ah;->bt:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/ah;->bt:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public notify(I)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ah;->bt:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore;->release(I)V

    return-void
.end method
