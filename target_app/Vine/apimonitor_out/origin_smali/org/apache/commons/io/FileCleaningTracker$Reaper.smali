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
    .registers 5

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-boolean v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_38

    :cond_10
    :try_start_10
    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/FileCleaningTracker$Tracker;

    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->delete()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v2, v2, Lorg/apache/commons/io/FileCleaningTracker;->deleteFailures:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->clear()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_35} :catch_36

    goto :goto_0

    :catch_36
    move-exception v0

    goto :goto_0

    :cond_38
    return-void
.end method
