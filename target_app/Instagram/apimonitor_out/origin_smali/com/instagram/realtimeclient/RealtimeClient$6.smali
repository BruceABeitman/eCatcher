.class Lcom/instagram/realtimeclient/RealtimeClient$6;
.super Lcom/a/a/a;
.source "RealtimeClient.java"


# instance fields
.field private mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

.field final synthetic this$0:Lcom/instagram/realtimeclient/RealtimeClient;


# direct methods
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    return-void
.end method

.method private declared-synchronized ensureSSLSocketFactoryInitialized()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-nez v0, :cond_1d

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Lcom/facebook/k/a/d;

    new-instance v2, Lcom/instagram/realtimeclient/RealtimeClient$6$1;

    invoke-direct {v2, p0}, Lcom/instagram/realtimeclient/RealtimeClient$6$1;-><init>(Lcom/instagram/realtimeclient/RealtimeClient$6;)V

    invoke-direct {v1, v2}, Lcom/facebook/k/a/d;-><init>(Lcom/facebook/k/a/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;I)V
    .registers 5

    invoke-static {}, Lcom/instagram/common/u/h/a;->a()Lcom/instagram/common/u/h/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/common/u/h/a;->a(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/a/a/a;->connectSocket(Ljava/net/Socket;Ljava/lang/String;I)V

    return-void
.end method

.method public createSocket(Z)Ljava/net/Socket;
    .registers 3

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient$6;->ensureSSLSocketFactoryInitialized()V

    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/a/a/a;->createSocket(Z)Ljava/net/Socket;

    move-result-object v0

    goto :goto_b
.end method
