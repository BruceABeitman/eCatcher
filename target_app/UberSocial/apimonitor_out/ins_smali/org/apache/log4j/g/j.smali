.class  Lorg/apache/log4j/g/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private a:I
.field private b:Ljava/util/Vector;
.field private c:Z
.field private d:Ljava/lang/Thread;
.field private final e:Lorg/apache/log4j/g/i;
.method public constructor <init>(Lorg/apache/log4j/g/i;ILjava/util/Vector;)V
.registers 7
const/4 v1, 0x1
iput-object p1, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lorg/apache/log4j/g/j;->a:I
iput-object p3, p0, Lorg/apache/log4j/g/j;->b:Ljava/util/Vector;
iput-boolean v1, p0, Lorg/apache/log4j/g/j;->c:Z
new-instance v0, Ljava/lang/Thread;
invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lorg/apache/log4j/g/j;->d:Ljava/lang/Thread;
iget-object v0, p0, Lorg/apache/log4j/g/j;->d:Ljava/lang/Thread;
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V
iget-object v0, p0, Lorg/apache/log4j/g/j;->d:Ljava/lang/Thread;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "SocketHubAppender-Monitor-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget v2, p0, Lorg/apache/log4j/g/j;->a:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/g/j;->d:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method private a(Ljava/io/ObjectOutputStream;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->b(Lorg/apache/log4j/g/i;)Lorg/apache/log4j/c/e;
move-result-object v0
if-eqz v0, :cond_2b
const/4 v0, 0x0
:goto_9
iget-object v1, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v1}, Lorg/apache/log4j/g/i;->b(Lorg/apache/log4j/g/i;)Lorg/apache/log4j/c/e;
move-result-object v1
invoke-virtual {v1}, Lorg/apache/log4j/c/e;->c()I
move-result v1
if-ge v0, v1, :cond_25
iget-object v1, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v1}, Lorg/apache/log4j/g/i;->b(Lorg/apache/log4j/g/i;)Lorg/apache/log4j/c/e;
move-result-object v1
invoke-virtual {v1, v0}, Lorg/apache/log4j/c/e;->a(I)Lorg/apache/log4j/k/k;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_25
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->reset()V
:cond_2b
return-void
.end method
.method public declared-synchronized a()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lorg/apache/log4j/g/j;->c:Z
if-eqz v0, :cond_31
const-string v0, "server monitor thread shutting down"
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/g/j;->c:Z
:try_start_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_3c
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v0
if-eqz v0, :cond_24
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
const/4 v1, 0x0
invoke-static {v0, v1}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
:goto_24
:cond_24
:try_end_24
.catchall {:try_start_d .. :try_end_24} :catchall_3c
.catch Ljava/io/IOException; {:try_start_d .. :try_end_24} :catch_3f
:try_start_24
iget-object v0, p0, Lorg/apache/log4j/g/j;->d:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->join()V
:goto_29
:try_end_29
.catchall {:try_start_24 .. :try_end_29} :catchall_3c
.catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_33
const/4 v0, 0x0
:try_start_2a
iput-object v0, p0, Lorg/apache/log4j/g/j;->d:Ljava/lang/Thread;
const-string v0, "server monitor thread shut down"
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
:cond_31
:try_end_31
.catchall {:try_start_2a .. :try_end_31} :catchall_3c
monitor-exit p0
return-void
:catch_33
move-exception v0
:try_start_34
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:try_end_3b
.catchall {:try_start_34 .. :try_end_3b} :catchall_3c
goto :goto_29
:catchall_3c
move-exception v0
monitor-exit p0
throw v0
:catch_3f
move-exception v0
goto :goto_24
.end method
.method public run()V
.registers 6
const/4 v1, 0x0
const/4 v4, 0x0
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0, v1}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
:try_start_7
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
iget-object v2, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
iget v3, p0, Lorg/apache/log4j/g/j;->a:I
invoke-virtual {v2, v3}, Lorg/apache/log4j/g/i;->c(I)Ljava/net/ServerSocket;
move-result-object v2
invoke-static {v0, v2}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v0
const/16 v2, 0x3e8
invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V
:try_start_1f
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_af
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v0
const/16 v2, 0x3e8
invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V
:try_start_2a
:goto_2a
:cond_2a
:try_end_2a
.catchall {:try_start_1f .. :try_end_2a} :catchall_a4
.catch Ljava/net/SocketException; {:try_start_1f .. :try_end_2a} :catch_c7
iget-boolean v0, p0, Lorg/apache/log4j/g/j;->c:Z
:try_end_2c
.catchall {:try_start_2a .. :try_end_2c} :catchall_a4
if-eqz v0, :cond_f9
:try_start_2e
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
:try_end_37
.catchall {:try_start_2e .. :try_end_37} :catchall_a4
.catch Ljava/io/InterruptedIOException; {:try_start_2e .. :try_end_37} :catch_e0
.catch Ljava/net/SocketException; {:try_start_2e .. :try_end_37} :catch_e4
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_f0
move-result-object v0
:goto_38
if-eqz v0, :cond_2a
:try_start_3a
invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;
move-result-object v2
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "accepting connection from "
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, " ("
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
new-instance v2, Ljava/io/ObjectOutputStream;
invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->b(Lorg/apache/log4j/g/i;)Lorg/apache/log4j/c/e;
move-result-object v0
if-eqz v0, :cond_8c
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->b(Lorg/apache/log4j/g/i;)Lorg/apache/log4j/c/e;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/c/e;->c()I
move-result v0
if-lez v0, :cond_8c
invoke-direct {p0, v2}, Lorg/apache/log4j/g/j;->a(Ljava/io/ObjectOutputStream;)V
:cond_8c
iget-object v0, p0, Lorg/apache/log4j/g/j;->b:Ljava/util/Vector;
invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_91
.catchall {:try_start_3a .. :try_end_91} :catchall_a4
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_91} :catch_92
goto :goto_2a
:catch_92
move-exception v0
:try_start_93
instance-of v2, v0, Ljava/io/InterruptedIOException;
if-eqz v2, :cond_9e
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
:cond_9e
const-string v2, "exception creating output stream on socket."
invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a3
.catchall {:try_start_93 .. :try_end_a3} :catchall_a4
goto :goto_2a
:catchall_a4
move-exception v0
:try_start_a5
iget-object v1, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v1}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v1
invoke-static {v1}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_ae
.catch Ljava/io/InterruptedIOException; {:try_start_a5 .. :try_end_ae} :catch_10c
.catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ae} :catch_115
:goto_ae
throw v0
:catch_af
move-exception v0
instance-of v1, v0, Ljava/io/InterruptedIOException;
if-nez v1, :cond_b8
instance-of v1, v0, Ljava/lang/InterruptedException;
if-eqz v1, :cond_bf
:cond_b8
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
:cond_bf
const-string v1, "exception setting timeout, shutting down server socket."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
iput-boolean v4, p0, Lorg/apache/log4j/g/j;->c:Z
:goto_c6
return-void
:catch_c7
move-exception v0
:try_start_c8
const-string v1, "exception setting timeout, shutting down server socket."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_cd
.catchall {:try_start_c8 .. :try_end_cd} :catchall_a4
:try_start_cd
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_d6
.catch Ljava/io/InterruptedIOException; {:try_start_cd .. :try_end_d6} :catch_d7
.catch Ljava/io/IOException; {:try_start_cd .. :try_end_d6} :catch_119
goto :goto_c6
:catch_d7
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
goto :goto_c6
:catch_e0
move-exception v0
move-object v0, v1
goto/16 :goto_38
:catch_e4
move-exception v0
:try_start_e5
const-string v2, "exception accepting socket, shutting down server socket."
invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/g/j;->c:Z
move-object v0, v1
goto/16 :goto_38
:catch_f0
move-exception v0
const-string v2, "exception accepting socket."
invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_f6
.catchall {:try_start_e5 .. :try_end_f6} :catchall_a4
move-object v0, v1
goto/16 :goto_38
:cond_f9
:try_start_f9
iget-object v0, p0, Lorg/apache/log4j/g/j;->e:Lorg/apache/log4j/g/i;
invoke-static {v0}, Lorg/apache/log4j/g/i;->a(Lorg/apache/log4j/g/i;)Ljava/net/ServerSocket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_102
.catch Ljava/io/InterruptedIOException; {:try_start_f9 .. :try_end_102} :catch_103
.catch Ljava/io/IOException; {:try_start_f9 .. :try_end_102} :catch_117
goto :goto_c6
:catch_103
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
goto :goto_c6
:catch_10c
move-exception v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
goto :goto_ae
:catch_115
move-exception v1
goto :goto_ae
:catch_117
move-exception v0
goto :goto_c6
:catch_119
move-exception v0
goto :goto_c6
.end method