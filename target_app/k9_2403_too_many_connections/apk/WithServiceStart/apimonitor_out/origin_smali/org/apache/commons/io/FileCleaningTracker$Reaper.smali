.class final Lorg/apache/commons/io/FileCleaningTracker$Reaper;
.super Ljava/lang/Thread;
.source "FileCleaningTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/FileCleaningTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Reaper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/io/FileCleaningTracker;


# direct methods
.method constructor <init>(Lorg/apache/commons/io/FileCleaningTracker;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    const-string v0, "File Reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setPriority(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-boolean v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2e

    :cond_10
    const/4 v1, 0x0

    :try_start_11
    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_2b

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->delete()Z

    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->clear()V

    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_2b
    move-exception v2

    move-object v0, v2

    goto :goto_0

    :cond_2e
    return-void
.end method
