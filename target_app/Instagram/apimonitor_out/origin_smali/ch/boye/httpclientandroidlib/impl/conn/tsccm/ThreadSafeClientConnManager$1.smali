.class Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

.field final synthetic val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .registers 4

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;->abortRequest()V

    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .registers 7

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v0, v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_38
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->val$poolRequest:Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    return-object v1
.end method
