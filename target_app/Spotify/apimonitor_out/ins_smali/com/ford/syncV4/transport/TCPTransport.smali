.class public final Lcom/ford/syncV4/transport/TCPTransport;
.super Lcom/ford/syncV4/transport/h;
.source "SourceFile"
.field private a:Lcom/ford/syncV4/transport/j;
.field private b:Ljava/net/Socket;
.field private c:Ljava/io/InputStream;
.field private d:Ljava/io/OutputStream;
.field private e:Lcom/ford/syncV4/transport/i;
.field private f:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
.method public constructor <init>(Lcom/ford/syncV4/transport/j;Lcom/ford/syncV4/transport/f;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p2}, Lcom/ford/syncV4/transport/h;-><init>(Lcom/ford/syncV4/transport/f;)V
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->a:Lcom/ford/syncV4/transport/j;
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->b:Ljava/net/Socket;
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->c:Ljava/io/InputStream;
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->d:Ljava/io/OutputStream;
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
sget-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->a:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->f:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
iput-object p1, p0, Lcom/ford/syncV4/transport/TCPTransport;->a:Lcom/ford/syncV4/transport/j;
return-void
.end method
.method static synthetic a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/io/InputStream;)Ljava/io/InputStream;
.registers 2
iput-object p1, p0, Lcom/ford/syncV4/transport/TCPTransport;->c:Ljava/io/InputStream;
return-object p1
.end method
.method static synthetic a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/io/OutputStream;)Ljava/io/OutputStream;
.registers 2
iput-object p1, p0, Lcom/ford/syncV4/transport/TCPTransport;->d:Ljava/io/OutputStream;
return-object p1
.end method
.method static synthetic a(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->b:Ljava/net/Socket;
return-object v0
.end method
.method static synthetic a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/net/Socket;)Ljava/net/Socket;
.registers 2
iput-object p1, p0, Lcom/ford/syncV4/transport/TCPTransport;->b:Ljava/net/Socket;
return-object p1
.end method
.method private declared-synchronized a(Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V
.registers 5
monitor-enter p0
:try_start_1
const-string v0, "Current state changed to: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
iput-object p1, p0, Lcom/ford/syncV4/transport/TCPTransport;->f:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic a(Lcom/ford/syncV4/transport/TCPTransport;Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V
return-void
.end method
.method static synthetic a(Lcom/ford/syncV4/transport/TCPTransport;Ljava/lang/String;Ljava/lang/Exception;Z)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/ford/syncV4/transport/TCPTransport;->a(Ljava/lang/String;Ljava/lang/Exception;Z)V
return-void
.end method
.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Exception;Z)V
.registers 8
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/ford/syncV4/transport/TCPTransport;->g()Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->d:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
if-ne v0, v1, :cond_10
const-string v0, "TCPTransport: disconnecting already in progress"
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_5e
:goto_e
monitor-exit p0
return-void
:cond_10
:try_start_10
sget-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->d:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
invoke-direct {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V
if-nez p1, :cond_61
const-string v0, ""
:goto_19
if-eqz p2, :cond_84
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_35
.catchall {:try_start_10 .. :try_end_35} :catchall_5e
move-result-object v0
move-object v1, v0
:goto_37
:try_start_37
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
if-eqz v0, :cond_47
if-eqz p3, :cond_47
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/i;->a()V
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/i;->interrupt()V
:cond_47
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->b:Ljava/net/Socket;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->b:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:cond_50
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->b:Ljava/net/Socket;
:goto_53
:try_end_53
.catchall {:try_start_37 .. :try_end_53} :catchall_5e
.catch Ljava/io/IOException; {:try_start_37 .. :try_end_53} :catch_63
if-nez p2, :cond_7b
:try_start_55
const-string v0, "Disconnect is correct. Handling it"
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->a(Ljava/lang/String;)V
:try_end_5d
.catchall {:try_start_55 .. :try_end_5d} :catchall_5e
goto :goto_e
:catchall_5e
move-exception v0
monitor-exit p0
throw v0
:cond_61
move-object v0, p1
goto :goto_19
:catch_63
move-exception v0
:try_start_64
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "TCPTransport.disconnect: Exception during disconnect: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->c(Ljava/lang/String;)V
goto :goto_53
:cond_7b
const-string v0, "Disconnect is incorrect. Handling it as error"
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->c(Ljava/lang/String;)V
invoke-virtual {p0, v1, p2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Ljava/lang/String;Ljava/lang/Exception;)V
:try_end_83
.catchall {:try_start_64 .. :try_end_83} :catchall_5e
goto :goto_e
:cond_84
move-object v1, v0
goto :goto_37
.end method
.method static synthetic b(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/j;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->a:Lcom/ford/syncV4/transport/j;
return-object v0
.end method
.method static synthetic c(Lcom/ford/syncV4/transport/TCPTransport;)V
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x1388
add-long/2addr v0, v2
:goto_7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
cmp-long v2, v2, v0
if-gez v2, :cond_1e
monitor-enter p0
:try_start_10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long v2, v0, v2
invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
:try_end_19
.catchall {:try_start_10 .. :try_end_19} :catchall_1b
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_1f
:goto_19
:try_start_19
monitor-exit p0
:try_end_1a
.catchall {:try_start_19 .. :try_end_1a} :catchall_1b
goto :goto_7
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
:cond_1e
return-void
:catch_1f
move-exception v2
goto :goto_19
.end method
.method static synthetic d(Lcom/ford/syncV4/transport/TCPTransport;)Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->c:Ljava/io/InputStream;
return-object v0
.end method
.method static synthetic e(Lcom/ford/syncV4/transport/TCPTransport;)Lcom/ford/syncV4/transport/i;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
return-object v0
.end method
.method private declared-synchronized g()Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->f:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a()V
.registers 6
const/4 v2, 0x1
const/4 v4, 0x0
invoke-direct {p0}, Lcom/ford/syncV4/transport/TCPTransport;->g()Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
move-result-object v0
const-string v1, "TCPTransport: openConnection requested. Current state is: %s"
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->name()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->a:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
if-ne v0, v1, :cond_55
monitor-enter p0
:try_start_1c
sget-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->b:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
invoke-direct {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->a(Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;)V
const-string v0, "TCPTransport: openConnection request accepted. Starting transport thread"
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
:try_start_26
:try_end_26
.catchall {:try_start_1c .. :try_end_26} :catchall_52
new-instance v0, Lcom/ford/syncV4/transport/i;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ford/syncV4/transport/i;-><init>(Lcom/ford/syncV4/transport/TCPTransport;B)V
iput-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/transport/i;->setDaemon(Z)V
iget-object v0, p0, Lcom/ford/syncV4/transport/TCPTransport;->e:Lcom/ford/syncV4/transport/i;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/i;->start()V
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->a()Z
:try_end_3c
.catchall {:try_start_26 .. :try_end_3c} :catchall_52
.catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_3e
:try_start_3c
monitor-exit p0
:goto_3d
return-void
:catch_3e
move-exception v0
const-string v1, "TCPTransport: Exception during transport thread starting"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v1, Lcom/ford/syncV4/exception/SyncException;
invoke-direct {v1, v0}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catchall_52
:try_end_52
.catchall {:try_start_3c .. :try_end_52} :catchall_52
move-exception v0
monitor-exit p0
throw v0
:cond_55
const-string v0, "TCPTransport: openConnection request rejected. Another connection is not finished"
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
goto :goto_3d
.end method
.method protected final a([BII)Z
.registers 11
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ford/syncV4/transport/TCPTransport;->g()Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
move-result-object v2
const-string v3, "TCPTransport: sendBytesOverTransport requested. Size: %d, Offset: %d, Length: %d, Current state is: %s"
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
array-length v5, p1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v0
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v1
const/4 v5, 0x2
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x3
invoke-virtual {v2}, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->name()Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
sget-object v3, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->c:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
if-ne v2, v3, :cond_69
monitor-enter p0
:try_start_32
iget-object v2, p0, Lcom/ford/syncV4/transport/TCPTransport;->d:Ljava/io/OutputStream;
if-eqz v2, :cond_63
const-string v2, "TCPTransport: sendBytesOverTransport request accepted. Trying to send data"
invoke-virtual {p0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
:try_end_3b
.catchall {:try_start_32 .. :try_end_3b} :catchall_60
:try_start_3b
iget-object v2, p0, Lcom/ford/syncV4/transport/TCPTransport;->d:Ljava/io/OutputStream;
invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
const-string v2, "TCPTransport.sendBytesOverTransport: successfully send data"
invoke-virtual {p0, v2}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
:try_end_45
.catchall {:try_start_3b .. :try_end_45} :catchall_60
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_45} :catch_48
move v0, v1
:goto_46
:try_start_46
monitor-exit p0
:goto_47
return v0
:catch_48
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "TCPTransport.sendBytesOverTransport: error during sending data: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->c(Ljava/lang/String;)V
:try_end_5f
.catchall {:try_start_46 .. :try_end_5f} :catchall_60
goto :goto_46
:catchall_60
move-exception v0
monitor-exit p0
throw v0
:try_start_63
:cond_63
const-string v1, "TCPTransport: sendBytesOverTransport request accepted, but output stream is null"
invoke-virtual {p0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->c(Ljava/lang/String;)V
:try_end_68
.catchall {:try_start_63 .. :try_end_68} :catchall_60
goto :goto_46
:cond_69
const-string v1, "TCPTransport: sendBytesOverTransport request rejected. Transport is not connected"
invoke-virtual {p0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
goto :goto_47
.end method
.method public final b()V
.registers 6
const/4 v2, 0x1
invoke-direct {p0}, Lcom/ford/syncV4/transport/TCPTransport;->g()Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
move-result-object v0
const-string v1, "TCPTransport: disconnect requested from client. Current state is: %s"
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {v0}, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->name()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->c:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
if-ne v0, v1, :cond_2c
const-string v0, "TCPTransport: disconnect request accepted."
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
monitor-enter p0
const/4 v0, 0x0
const/4 v1, 0x0
const/4 v2, 0x1
:try_start_24
invoke-direct {p0, v0, v1, v2}, Lcom/ford/syncV4/transport/TCPTransport;->a(Ljava/lang/String;Ljava/lang/Exception;Z)V
monitor-exit p0
:try_end_28
.catchall {:try_start_24 .. :try_end_28} :catchall_29
:goto_28
return-void
:catchall_29
move-exception v0
monitor-exit p0
throw v0
:cond_2c
const-string v0, "TCPTransport: disconnect request rejected. Transport is not connected"
invoke-virtual {p0, v0}, Lcom/ford/syncV4/transport/TCPTransport;->b(Ljava/lang/String;)V
goto :goto_28
.end method
.method protected final b(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public final c()Lcom/ford/syncV4/transport/TransportType;
.registers 2
sget-object v0, Lcom/ford/syncV4/transport/TransportType;->b:Lcom/ford/syncV4/transport/TransportType;
return-object v0
.end method
.method protected final c(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public final d()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method