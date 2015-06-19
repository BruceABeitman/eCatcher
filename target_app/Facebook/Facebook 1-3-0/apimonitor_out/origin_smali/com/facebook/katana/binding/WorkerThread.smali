.class public Lcom/facebook/katana/binding/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# instance fields
.field private final m_handler:Landroid/os/Handler;

.field private m_looper:Landroid/os/Looper;

.field private m_threadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/binding/WorkerThread;->m_handler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/WorkerThread;->start()V

    :goto_d
    iget-object v1, p0, Lcom/facebook/katana/binding/WorkerThread;->m_threadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_12

    :goto_11
    return-void

    :cond_12
    const-wide/16 v1, 0x64

    :try_start_14
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_d

    :catch_18
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getThreadHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->m_threadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public quit()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->m_looper:Landroid/os/Looper;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->m_looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->m_looper:Landroid/os/Looper;

    const-wide/16 v0, 0xbb8

    :try_start_e
    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/binding/WorkerThread;->join(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/binding/WorkerThread;->setPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->m_threadHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->m_looper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
