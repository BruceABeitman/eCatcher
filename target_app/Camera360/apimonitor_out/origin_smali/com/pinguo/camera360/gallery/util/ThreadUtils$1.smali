.class Lcom/pinguo/camera360/gallery/util/ThreadUtils$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/util/ThreadUtils;->newBackgroundSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
