.class public abstract Lcom/ibm/icu/impl/ICUNotifier;
.super Ljava/lang/Object;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/List;

.field private final notifyLock:Ljava/lang/Object;

.field private notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract acceptsListener(Ljava/util/EventListener;)Z
.end method

.method public addListener(Ljava/util/EventListener;)V
    .registers 6

    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUNotifier;->acceptsListener(Ljava/util/EventListener;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-nez v2, :cond_24

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    :cond_1d
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_23
    return-void

    :cond_24
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2a

    monitor-exit v1

    goto :goto_23

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_38

    throw v2

    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener invalid for this notifier."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyChanged()V
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    if-nez v1, :cond_21

    new-instance v1, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;-><init>(Lcom/ibm/icu/impl/ICUNotifier;)V

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->setDaemon(Z)V

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->start()V

    :cond_21
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyThread:Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUNotifier$NotifyThread;->queue([Ljava/lang/Object;)V

    :cond_2c
    monitor-exit v0

    :cond_2d
    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected abstract notifyListener(Ljava/util/EventListener;)V
.end method

.method public removeListener(Ljava/util/EventListener;)V
    .registers 5

    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_8
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ibm/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    :cond_2f
    monitor-exit v1

    :goto_30
    return-void

    :cond_31
    monitor-exit v1

    goto :goto_30

    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_33

    throw v2
.end method
