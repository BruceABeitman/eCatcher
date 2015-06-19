.class Lcom/glympse/android/lib/fc;
.super Ljava/lang/Object;
.source "JobQueue.java"

# interfaces
.implements Lcom/glympse/android/lib/GJobQueue;


# instance fields
.field private _handler:Lcom/glympse/android/core/GHandler;

.field private kJ:Z

.field private pp:Z

.field private pq:Lcom/glympse/android/hal/GSemaphore;

.field private pr:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private ps:Lcom/glympse/android/hal/GMutex;

.field private pt:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GJob;",
            ">;"
        }
    .end annotation
.end field

.field private pu:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GJob;",
            ">;"
        }
    .end annotation
.end field

.field private pv:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/fe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/core/GHandler;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/glympse/android/lib/fc;->pp:Z

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createSemaphore()Lcom/glympse/android/hal/GSemaphore;

    move-result-object v2

    iput-object v2, p0, Lcom/glympse/android/lib/fc;->pq:Lcom/glympse/android/hal/GSemaphore;

    new-instance v2, Lcom/glympse/android/hal/GVector;

    invoke-direct {v2}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v2, p0, Lcom/glympse/android/lib/fc;->pr:Lcom/glympse/android/hal/GVector;

    invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createMutex()Lcom/glympse/android/hal/GMutex;

    move-result-object v2

    iput-object v2, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    new-instance v2, Lcom/glympse/android/hal/GVector;

    invoke-direct {v2}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v2, p0, Lcom/glympse/android/lib/fc;->pt:Lcom/glympse/android/hal/GVector;

    new-instance v2, Lcom/glympse/android/hal/GVector;

    invoke-direct {v2}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v2, p0, Lcom/glympse/android/lib/fc;->pu:Lcom/glympse/android/hal/GVector;

    iput-object p1, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I

    move-result v2

    if-eq v0, v2, :cond_3a

    :goto_30
    iput-boolean v0, p0, Lcom/glympse/android/lib/fc;->kJ:Z

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    return-void

    :cond_3a
    move v0, v1

    goto :goto_30
.end method

.method private a(Lcom/glympse/android/lib/GJob;)V
    .registers 3

    invoke-interface {p1}, Lcom/glympse/android/lib/GJob;->isAborted()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p1}, Lcom/glympse/android/lib/GJob;->onRetry()V

    invoke-interface {p1}, Lcom/glympse/android/lib/GJob;->isAborted()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/fc;->addJob(Lcom/glympse/android/lib/GJob;)V

    :goto_12
    return-void

    :cond_13
    invoke-interface {p1}, Lcom/glympse/android/lib/GJob;->onAbort()V

    goto :goto_12
.end method


# virtual methods
.method public addJob(Lcom/glympse/android/lib/GJob;)V
    .registers 5

    const/4 v2, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pq:Lcom/glympse/android/hal/GSemaphore;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GSemaphore;->notify(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_16
.end method

.method public addJob(Lcom/glympse/android/lib/GJob;Z)V
    .registers 6

    if-eqz p2, :cond_13

    iget-object v1, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    new-instance v2, Lcom/glympse/android/lib/fd;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GJobQueue;

    invoke-direct {v2, p0, v0, p1}, Lcom/glympse/android/lib/fd;-><init>(Lcom/glympse/android/lib/fc;Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/lib/GJob;)V

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/fc;->addJob(Lcom/glympse/android/lib/GJob;)V

    goto :goto_12
.end method

.method public getHandler()Lcom/glympse/android/core/GHandler;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    return-object v0
.end method

.method public getRertyQueueLength()I
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    return v0
.end method

.method public handleRetry(Lcom/glympse/android/core/GCommon;)V
    .registers 4

    invoke-virtual {p0}, Lcom/glympse/android/lib/fc;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/glympse/android/lib/fc;->isExiting()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/glympse/android/lib/fc;->kJ:Z

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    check-cast p1, Lcom/glympse/android/lib/fe;

    :try_start_13
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_2a

    :goto_22
    invoke-virtual {p1}, Lcom/glympse/android/lib/fe;->ck()Lcom/glympse/android/lib/GJob;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fc;->a(Lcom/glympse/android/lib/GJob;)V

    goto :goto_10

    :catch_2a
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_22
.end method

.method public isExiting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/fc;->pp:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public pop()Lcom/glympse/android/lib/GJob;
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pq:Lcom/glympse/android/hal/GSemaphore;

    invoke-interface {v0}, Lcom/glympse/android/hal/GSemaphore;->acquire()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/fc;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v2

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pt:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GJob;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_45

    :try_start_24
    iget-object v1, p0, Lcom/glympse/android/lib/fc;->pt:Lcom/glympse/android/hal/GVector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/fc;->pu:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GJobQueue;

    iget-object v3, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-interface {v0, v1, v3}, Lcom/glympse/android/lib/GJob;->onSchedule(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3a} :catch_4d

    move-object v1, v0

    :goto_3b
    :try_start_3b
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_52

    move-object v0, v1

    :goto_41
    if-nez v0, :cond_d

    move-object v0, v2

    goto :goto_d

    :catch_45
    move-exception v0

    move-object v1, v2

    :goto_47
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    move-object v0, v1

    goto :goto_41

    :catch_4d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_47

    :catch_52
    move-exception v0

    goto :goto_47

    :cond_54
    move-object v1, v2

    goto :goto_3b
.end method

.method public removeJob(Lcom/glympse/android/lib/GJob;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pu:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    :goto_f
    const/4 v0, 0x0

    return v0

    :catch_11
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_f
.end method

.method public retryAll(Z)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/fe;

    iget-object v2, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/glympse/android/lib/fe;->ck()Lcom/glympse/android/lib/GJob;

    move-result-object v0

    if-eqz p1, :cond_20

    invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->reset()V

    :cond_20
    invoke-direct {p0, v0}, Lcom/glympse/android/lib/fc;->a(Lcom/glympse/android/lib/GJob;)V

    goto :goto_6

    :cond_24
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    return-void
.end method

.method public retryDelayed(Lcom/glympse/android/lib/GJob;J)V
    .registers 6

    new-instance v1, Lcom/glympse/android/lib/ff;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GJobQueue;

    invoke-direct {v1, p0, v0, p1}, Lcom/glympse/android/lib/ff;-><init>(Lcom/glympse/android/lib/fc;Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/lib/GJob;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/fc;->kJ:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-interface {v0, v1, p2, p3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_19
    return-void
.end method

.method public setActive(Z)V
    .registers 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I

    move-result v1

    if-eq v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-boolean v1, p0, Lcom/glympse/android/lib/fc;->kJ:Z

    if-eq p1, v1, :cond_34

    :goto_c
    if-eqz v0, :cond_7

    iput-boolean p1, p0, Lcom/glympse/android/lib/fc;->kJ:Z

    iget-boolean v0, p0, Lcom/glympse/android/lib/fc;->kJ:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/fe;

    invoke-virtual {v0}, Lcom/glympse/android/lib/fe;->ck()Lcom/glympse/android/lib/GJob;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->isAborted()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/fc;->addJob(Lcom/glympse/android/lib/GJob;)V

    goto :goto_1a

    :cond_34
    const/4 v0, 0x0

    goto :goto_c

    :cond_36
    invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->onAbort()V

    goto :goto_1a

    :cond_3a
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    goto :goto_7

    :cond_40
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/fe;

    iget-object v2, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V

    goto :goto_46
.end method

.method public start(I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/fc;->pr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    iput-boolean v0, p0, Lcom/glympse/android/lib/fc;->pp:Z

    move v1, v0

    :goto_d
    if-ge v1, p1, :cond_2c

    new-instance v2, Lcom/glympse/android/lib/fg;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GJobQueue;

    iget-object v3, p0, Lcom/glympse/android/lib/fc;->_handler:Lcom/glympse/android/core/GHandler;

    invoke-direct {v2, v0, v3}, Lcom/glympse/android/lib/fg;-><init>(Lcom/glympse/android/lib/GJobQueue;Lcom/glympse/android/core/GHandler;)V

    invoke-static {v2}, Lcom/glympse/android/hal/HalFactory;->createThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/glympse/android/lib/fc;->pr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_2c
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public stop(Z)V
    .registers 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/glympse/android/lib/fc;->pp:Z

    :try_start_3
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GJob;

    invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->abort()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1e

    goto :goto_e

    :catch_1e
    move-exception v0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :goto_22
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-eqz v0, :cond_96

    iget-object v1, p0, Lcom/glympse/android/lib/fc;->pq:Lcom/glympse/android/hal/GSemaphore;

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GSemaphore;->notify(I)V

    if-eqz p1, :cond_91

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_91

    :try_start_3d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_37

    :catch_47
    move-exception v0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_37

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pt:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pu:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GJob;

    invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->abort()V

    goto :goto_57

    :cond_67
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pu:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/fe;

    invoke-virtual {v0}, Lcom/glympse/android/lib/fe;->ck()Lcom/glympse/android/lib/GJob;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GJob;->onAbort()V

    goto :goto_72

    :cond_86
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pv:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    iget-object v0, p0, Lcom/glympse/android/lib/fc;->ps:Lcom/glympse/android/hal/GMutex;

    invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_90} :catch_1e

    goto :goto_22

    :cond_91
    iget-object v0, p0, Lcom/glympse/android/lib/fc;->pr:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    :cond_96
    return-void
.end method
