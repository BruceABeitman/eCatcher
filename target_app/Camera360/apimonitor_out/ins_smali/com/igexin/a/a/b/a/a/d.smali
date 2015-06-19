.class public final Lcom/igexin/a/a/b/a/a/d;
.super Ljava/lang/Object;
.implements Lcom/igexin/a/a/b/b;
.implements Lcom/igexin/a/a/d/a/a;
.field  a:Ljava/nio/channels/SocketChannel;
.field  b:Z
.field  c:J
.field  d:Ljava/nio/channels/SelectionKey;
.field  e:Ljava/nio/channels/SelectionKey;
.field  f:Ljava/nio/channels/Selector;
.method public constructor <init>(Ljava/nio/channels/Selector;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;
const-string/jumbo v0, "java.net.preferIPv6Addresses"
const-string/jumbo v1, "false"
invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
return-void
.end method
.method public a()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/a/a/d;->a(Z)V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_a
:goto_5
iput-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
iput-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;
return-void
:catch_a
move-exception v0
goto :goto_5
.end method
.method final a(Ljava/nio/channels/Selector;)V
.registers 2
iput-object p1, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;
return-void
.end method
.method public final a(Z)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/d;->b:Z
:goto_6
return-void
:try_start_7
:cond_7
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
:cond_10
:try_end_10
.catchall {:try_start_7 .. :try_end_10} :catchall_31
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
:cond_1e
iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
:cond_2e
iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
goto :goto_6
:catchall_31
move-exception v0
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
if-eqz v1, :cond_40
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
:cond_40
iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
if-eqz v1, :cond_50
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
:cond_50
iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
throw v0
.end method
.method public final a(Ljava/lang/String;)Z
.registers 9
const/4 v6, 0x1
iget-boolean v0, p0, Lcom/igexin/a/a/b/a/a/d;->b:Z
if-eqz v0, :cond_b
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_b
invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/d;->c()Ljava/nio/channels/SocketChannel;
move-result-object v1
invoke-static {p1}, Lcom/igexin/a/a/b/g;->a(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/net/InetSocketAddress;
aget-object v3, v0, v6
const/4 v4, 0x2
aget-object v0, v0, v4
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-direct {v2, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;
const/16 v3, 0x8
invoke-virtual {v1, v0, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
move-result-object v0
iput-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iput-wide v3, p0, Lcom/igexin/a/a/b/a/a/d;->c:J
invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
move-result-object v3
invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;
move-result-object v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "connecting|"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
move-result-object v5
invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
move-result v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v4, "|"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-eqz v0, :cond_8d
invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v0
:goto_70
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ":"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v3}, Ljava/net/Socket;->getLocalPort()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
iput-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
return v6
:cond_8d
const-string/jumbo v0, "0.0.0.0"
goto :goto_70
.end method
.method final b(Z)V
.registers 4
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I
move-result v0
if-eqz p1, :cond_1d
or-int/lit8 v0, v0, 0x4
:goto_17
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;
invoke-virtual {v1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
goto :goto_c
:cond_1d
and-int/lit8 v0, v0, -0x5
goto :goto_17
.end method
.method public final b()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
if-eqz v1, :cond_9
iget-boolean v1, p0, Lcom/igexin/a/a/b/a/a/d;->b:Z
if-eqz v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isOpen()Z
move-result v1
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z
move-result v1
if-nez v1, :cond_22
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z
move-result v1
if-eqz v1, :cond_9
:cond_22
const/4 v0, 0x1
goto :goto_9
.end method
.method  c()Ljava/nio/channels/SocketChannel;
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;
:goto_f
return-object v0
:cond_10
invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V
const/4 v2, 0x1
invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V
const/16 v2, 0x3a98
invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
goto :goto_f
.end method