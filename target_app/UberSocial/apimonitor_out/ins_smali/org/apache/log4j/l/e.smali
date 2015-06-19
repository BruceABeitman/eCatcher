.class  Lorg/apache/log4j/l/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field  a:Ljava/net/Socket;
.field  b:Ljava/io/DataInputStream;
.field  c:Ljava/io/DataOutputStream;
.field  d:Lorg/apache/log4j/l/b;
.method public constructor <init>(Ljava/net/Socket;Lorg/apache/log4j/l/b;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/l/e;->a:Ljava/net/Socket;
iput-object p2, p0, Lorg/apache/log4j/l/e;->d:Lorg/apache/log4j/l/b;
:try_start_7
new-instance v0, Ljava/io/DataInputStream;
invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lorg/apache/log4j/l/e;->b:Ljava/io/DataInputStream;
new-instance v0, Ljava/io/DataOutputStream;
invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v0, p0, Lorg/apache/log4j/l/e;->c:Ljava/io/DataOutputStream;
:goto_1d
:try_end_1d
.catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_1d} :catch_1e
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_1d} :catch_2a
.catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1d} :catch_2f
return-void
:catch_1e
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V
goto :goto_1d
:catch_2a
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1d
:catch_2f
move-exception v0
invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
goto :goto_1d
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lorg/apache/log4j/l/e;->b:Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
move-result-object v0
const-string v1, "Got external roll over signal."
invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
const-string v1, "RollOver"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3a
iget-object v1, p0, Lorg/apache/log4j/l/e;->d:Lorg/apache/log4j/l/b;
monitor-enter v1
:try_start_16
:try_end_16
.catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_16} :catch_2c
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_42
.catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_49
iget-object v0, p0, Lorg/apache/log4j/l/e;->d:Lorg/apache/log4j/l/b;
invoke-virtual {v0}, Lorg/apache/log4j/l/b;->n()V
monitor-exit v1
:try_start_1c
:try_end_1c
.catchall {:try_start_16 .. :try_end_1c} :catchall_29
iget-object v0, p0, Lorg/apache/log4j/l/e;->c:Ljava/io/DataOutputStream;
const-string v1, "OK"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
:goto_23
iget-object v0, p0, Lorg/apache/log4j/l/e;->c:Ljava/io/DataOutputStream;
invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
:goto_28
:try_end_28
.catch Ljava/io/InterruptedIOException; {:try_start_1c .. :try_end_28} :catch_2c
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_42
.catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_28} :catch_49
return-void
:catchall_29
move-exception v0
:try_start_2a
monitor-exit v1
:try_start_2b
:try_end_2b
.catchall {:try_start_2a .. :try_end_2b} :catchall_29
throw v0
:try_end_2c
.catch Ljava/io/InterruptedIOException; {:try_start_2b .. :try_end_2c} :catch_2c
.catch Ljava/io/IOException; {:try_start_2b .. :try_end_2c} :catch_42
.catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2c} :catch_49
:catch_2c
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
const-string v1, "Unexpected exception. Exiting HUPNode."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_28
:try_start_3a
:cond_3a
iget-object v0, p0, Lorg/apache/log4j/l/e;->c:Ljava/io/DataOutputStream;
const-string v1, "Expecting [RollOver] string."
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
:try_end_41
.catch Ljava/io/InterruptedIOException; {:try_start_3a .. :try_end_41} :catch_2c
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_42
.catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_41} :catch_49
goto :goto_23
:catch_42
move-exception v0
const-string v1, "Unexpected exception. Exiting HUPNode."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_28
:catch_49
move-exception v0
const-string v1, "Unexpected exception. Exiting HUPNode."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_28
.end method