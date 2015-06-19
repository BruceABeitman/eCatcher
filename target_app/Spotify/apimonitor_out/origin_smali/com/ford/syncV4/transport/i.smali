.class final Lcom/ford/syncV4/transport/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ford/syncV4/transport/TCPTransport;

.field private b:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/ford/syncV4/transport/TCPTransport;)V
    .registers 3

    iput-object p1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ford/syncV4/transport/TCPTransport;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ford/syncV4/transport/i;-><init>(Lcom/ford/syncV4/transport/TCPTransport;)V

    return-void
.end method

.method private b()Z
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x1e

    iget-object v5, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    monitor-enter v5

    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v2, "TCPTransport.connect: Socket is not closed. Trying to close it"

    invoke-virtual {v0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_2b
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v2, "TCPTransport.connect: Socket is closed. Trying to connect to %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v8}, Lcom/ford/syncV4/transport/TCPTransport;->b(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/j;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    invoke-static {v0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v6}, Lcom/ford/syncV4/transport/TCPTransport;->b(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ford/syncV4/transport/j;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v7}, Lcom/ford/syncV4/transport/TCPTransport;->b(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ford/syncV4/transport/j;->b()I

    move-result v7

    invoke-direct {v2, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    iget-object v2, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    iget-object v2, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_8c
    .catchall {:try_start_7 .. :try_end_8c} :catchall_df
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_8c} :catch_c5

    :goto_8c
    :try_start_8c
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e2

    move v2, v3

    :goto_a1
    if-eqz v2, :cond_e4

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v6, "TCPTransport.connect: Socket connected"

    invoke-virtual {v0, v6}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    move v0, v1

    :goto_ab
    if-nez v2, :cond_c3

    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ford/syncV4/transport/j;->e()Z

    move-result v1

    if-eqz v1, :cond_c3

    if-lez v0, :cond_c3

    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11f

    :cond_c3
    monitor-exit v5

    return v2

    :catch_c5
    move-exception v0

    iget-object v2, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TCPTransport.connect: Exception during connect stage: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ford/syncV4/transport/TCPTransport;->c(Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_8c .. :try_end_de} :catchall_df

    goto :goto_8c

    :catchall_df
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_e2
    move v2, v4

    goto :goto_a1

    :cond_e4
    :try_start_e4
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ford/syncV4/transport/j;->e()Z

    move-result v0

    if-eqz v0, :cond_116

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v6, "TCPTransport.connect: Socket not connected. AutoReconnect is ON. retryCount is: %d. Waiting for reconnect delay: %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x1388

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v1}, Lcom/ford/syncV4/transport/TCPTransport;->c(Lcom/ford/syncV4/transport/TCPTransport;)V

    goto :goto_ab

    :cond_116
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v6, "TCPTransport.connect: Socket not connected. AutoReconnect is OFF"

    invoke-virtual {v0, v6}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_e4 .. :try_end_11d} :catchall_df

    move v0, v1

    goto :goto_ab

    :cond_11f
    move v1, v0

    goto/16 :goto_7
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public final run()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: transport thread created. Starting connect stage"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->b:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    invoke-static {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V

    invoke-direct {p0}, Lcom/ford/syncV4/transport/i;->b()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: Connection failed, but thread already halted"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: Thread terminated"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->a:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    invoke-static {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "Failed to connect to Sync"

    new-instance v2, Lcom/ford/syncV4/exception/SyncException;

    const-string v3, "Failed to connect to Sync"

    sget-object v4, Lcom/ford/syncV4/exception/SyncExceptionCause;->h:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v2, v3, v4}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-static {v0, v1, v2, v7}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_2d

    :cond_4d
    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    monitor-enter v1

    :try_start_50
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    sget-object v2, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->c:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    invoke-static {v0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-virtual {v0}, Lcom/ford/syncV4/transport/TCPTransport;->f()V

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_96

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_61
    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v2, "TCPTransport.run: Waiting for data..."

    invoke-virtual {v1, v2}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    :try_start_70
    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v1}, Lcom/ford/syncV4/transport/TCPTransport;->d(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_79} :catch_99

    move-result v1

    iget-object v2, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    monitor-enter v2

    :try_start_7d
    iget-object v3, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-static {v3}, Lcom/ford/syncV4/transport/TCPTransport;->e(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ford/syncV4/transport/i;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_c4

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: Got new data but thread is interrupted"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_93

    goto/16 :goto_9

    :catchall_93
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_96
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_99
    move-exception v0

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: Exception during reading data, but thread already halted"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_ab
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: Exception during reading data"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "Failed to read data from Sync"

    new-instance v2, Lcom/ford/syncV4/exception/SyncException;

    const-string v3, "Failed to read data from Sync"

    sget-object v4, Lcom/ford/syncV4/exception/SyncExceptionCause;->h:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v2, v3, v4}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-static {v0, v1, v2, v6}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto/16 :goto_9

    :cond_c4
    monitor-exit v2

    iget-object v2, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v3, "TCPTransport.run: Got new data"

    invoke-virtual {v2, v3}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v2, v1, :cond_f1

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: TCP disconnect received, but thread already halted"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_e0
    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: TCP disconnect received"

    invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v1, "TCPTransport.run: End of stream reached"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v6}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto/16 :goto_9

    :cond_f1
    if-nez v1, :cond_fc

    iget-object v1, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v2, "TCPTransport.run: Received zero bytes"

    invoke-virtual {v1, v2}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    goto/16 :goto_61

    :cond_fc
    iget-object v2, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    const-string v3, "TCPTransport.run: Received %d bytes"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    monitor-enter v2

    :try_start_112
    iget-object v3, p0, Lcom/ford/syncV4/transport/i;->a:Lcom/ford/syncV4/transport/TCPTransport;

    invoke-virtual {v3, v0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->a([BI)V

    monitor-exit v2
    :try_end_118
    .catchall {:try_start_112 .. :try_end_118} :catchall_11a

    goto/16 :goto_61

    :catchall_11a
    move-exception v0

    monitor-exit v2

    throw v0
.end method
