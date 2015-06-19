.class public Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;
.super Ljava/lang/Thread;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackGroundThread"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "BackGroundThread"

    const-string/jumbo v1, " change my proiority to : 10"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    :goto_18
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :cond_1c
    const-string/jumbo v0, "BackGroundThread"

    const-string/jumbo v1, " this thread is not uesd by start , do not change priority. "

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method
