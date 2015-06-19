.class public Lorg/apache/commons/io/FileCleaningTracker;
.super Ljava/lang/Object;
.source "FileCleaningTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/FileCleaningTracker$Tracker;,
        Lorg/apache/commons/io/FileCleaningTracker$Reaper;
    }
.end annotation


# instance fields
.field final deleteFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile exitWhenFinished:Z

.field q:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field reaper:Ljava/lang/Thread;

.field final trackers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/io/FileCleaningTracker$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->deleteFailures:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    return-void
.end method

.method private declared-synchronized addTracker(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No new trackers can be added once exitWhenFinished() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    if-nez v0, :cond_20

    new-instance v0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;-><init>(Lorg/apache/commons/io/FileCleaningTracker;)V

    iput-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_20
    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    new-instance v1, Lorg/apache/commons/io/FileCleaningTracker$Tracker;

    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p3, p2, v2}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;-><init>(Ljava/lang/String;Lorg/apache/commons/io/FileDeleteStrategy;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_d

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized exitWhenFinished()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_16

    :try_start_b
    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeleteFailures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->deleteFailures:Ljava/util/List;

    return-object v0
.end method

.method public getTrackCount()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/io/FileDeleteStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The file must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/FileCleaningTracker;->addTracker(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/io/FileDeleteStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/FileCleaningTracker;->addTracker(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method
