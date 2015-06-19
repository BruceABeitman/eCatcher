.class public Lus/pinguo/androidsdk/PGThreadPool;
.super Ljava/lang/Object;
.source "PGThreadPool.java"
.field private static cacheThreadPool:Ljava/util/concurrent/ExecutorService;
.field private static self:Lus/pinguo/androidsdk/PGThreadPool;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
move-result-object v0
sput-object v0, Lus/pinguo/androidsdk/PGThreadPool;->cacheThreadPool:Ljava/util/concurrent/ExecutorService;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Lus/pinguo/androidsdk/PGThreadPool;
.registers 1
sget-object v0, Lus/pinguo/androidsdk/PGThreadPool;->self:Lus/pinguo/androidsdk/PGThreadPool;
if-nez v0, :cond_b
new-instance v0, Lus/pinguo/androidsdk/PGThreadPool;
invoke-direct {v0}, Lus/pinguo/androidsdk/PGThreadPool;-><init>()V
sput-object v0, Lus/pinguo/androidsdk/PGThreadPool;->self:Lus/pinguo/androidsdk/PGThreadPool;
:cond_b
sget-object v0, Lus/pinguo/androidsdk/PGThreadPool;->self:Lus/pinguo/androidsdk/PGThreadPool;
return-object v0
.end method
.method public execute(Ljava/lang/Runnable;)V
.registers 3
sget-object v0, Lus/pinguo/androidsdk/PGThreadPool;->cacheThreadPool:Ljava/util/concurrent/ExecutorService;
invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method