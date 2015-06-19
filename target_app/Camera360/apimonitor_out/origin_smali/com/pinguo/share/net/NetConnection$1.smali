.class Lcom/pinguo/share/net/NetConnection$1;
.super Ljava/lang/Thread;
.source "NetConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/net/NetConnection;->quitFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/pinguo/share/net/NetConnection;->access$0()[B

    move-result-object v1

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/pinguo/share/net/NetConnection;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/pinguo/share/net/NetConnection;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/share/net/NetConnection;->mHttpClient:Lorg/apache/http/client/HttpClient;

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0
.end method
