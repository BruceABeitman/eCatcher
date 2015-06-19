.class Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;
.super Ljava/lang/Object;
.source "ConnPoolByRoute.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;

.field final synthetic val$aborter:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;

.field final synthetic val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;

    #getter for: Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;->abort()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;

    #getter for: Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;

    #getter for: Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;
    .registers 11

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->val$state:Ljava/lang/Object;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ConnPoolByRoute;->getEntryBlocking(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lch/boye/httpclientandroidlib/impl/conn/tsccm/WaitingThreadAborter;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    return-object v0
.end method
