.class public Lcom/pinguo/camera360/gallery/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;,
        Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;,
        Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;,
        Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContextStub;,
        Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;,
        Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext; = null

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContextStub;-><init>(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContextStub;)V

    sput-object v0, Lcom/pinguo/camera360/gallery/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool;->mCpuCounter:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;

    new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool;->mNetworkCounter:Lcom/pinguo/camera360/gallery/util/ThreadPool$ResourceCounter;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;

    const-string/jumbo v8, "thread-pool"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;)Lcom/pinguo/camera360/gallery/util/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)Lcom/pinguo/camera360/gallery/util/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/pinguo/camera360/gallery/util/FutureListener",
            "<TT;>;)",
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Worker;-><init>(Lcom/pinguo/camera360/gallery/util/ThreadPool;Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;Lcom/pinguo/camera360/gallery/util/FutureListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
