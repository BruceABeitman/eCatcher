.class public Lcom/pinguo/album/AlbumThreadPool;
.super Ljava/lang/Object;
.source "AlbumThreadPool.java"
.field private static final CORE_POOL_SIZE:I = 0x4
.field public static final JOB_CONTEXT_STUB:Lcom/pinguo/album/AlbumThreadPool$JobContext; = null
.field private static final KEEP_ALIVE_TIME:I = 0xa
.field private static final MAX_POOL_SIZE:I = 0x8
.field public static final MODE_CPU:I = 0x1
.field public static final MODE_NETWORK:I = 0x2
.field public static final MODE_NONE:I
.field private static final TAG:Ljava/lang/String;
.field  mCpuCounter:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
.field private final mExecutor:Ljava/util/concurrent/Executor;
.field  mNetworkCounter:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/pinguo/album/AlbumThreadPool;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/AlbumThreadPool;->TAG:Ljava/lang/String;
new-instance v0, Lcom/pinguo/album/AlbumThreadPool$JobContextStub;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/album/AlbumThreadPool$JobContextStub;-><init>(Lcom/pinguo/album/AlbumThreadPool$JobContextStub;)V
sput-object v0, Lcom/pinguo/album/AlbumThreadPool;->JOB_CONTEXT_STUB:Lcom/pinguo/album/AlbumThreadPool$JobContext;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v0, 0x4
const/16 v1, 0x8
invoke-direct {p0, v0, v1}, Lcom/pinguo/album/AlbumThreadPool;-><init>(II)V
return-void
.end method
.method public constructor <init>(II)V
.registers 11
const/4 v1, 0x2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
invoke-direct {v0, v1}, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/AlbumThreadPool;->mCpuCounter:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
new-instance v0, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
invoke-direct {v0, v1}, Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/album/AlbumThreadPool;->mNetworkCounter:Lcom/pinguo/album/AlbumThreadPool$ResourceCounter;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const-wide/16 v3, 0xa
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
new-instance v7, Lcom/pinguo/album/PriorityThreadFactory;
const-string/jumbo v1, "thread-pool"
const/16 v2, 0xa
invoke-direct {v7, v1, v2}, Lcom/pinguo/album/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V
move v1, p1
move v2, p2
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
iput-object v0, p0, Lcom/pinguo/album/AlbumThreadPool;->mExecutor:Ljava/util/concurrent/Executor;
return-void
.end method
.method public submit(Lcom/pinguo/album/AlbumThreadPool$Job;)Lcom/pinguo/album/Future;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/AlbumThreadPool;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
move-result-object v0
return-object v0
.end method
.method public submit(Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)Lcom/pinguo/album/Future;
.registers 5
new-instance v0, Lcom/pinguo/album/AlbumThreadPool$Worker;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/album/AlbumThreadPool$Worker;-><init>(Lcom/pinguo/album/AlbumThreadPool;Lcom/pinguo/album/AlbumThreadPool$Job;Lcom/pinguo/album/FutureListener;)V
iget-object v1, p0, Lcom/pinguo/album/AlbumThreadPool;->mExecutor:Ljava/util/concurrent/Executor;
invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-object v0
.end method