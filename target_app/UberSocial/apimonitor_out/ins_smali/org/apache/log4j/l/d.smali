.class  Lorg/apache/log4j/l/d;
.super Ljava/lang/Thread;
.source "SourceFile"
.field  a:I
.field  b:Lorg/apache/log4j/l/b;
.method constructor <init>(Lorg/apache/log4j/l/b;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/l/d;->b:Lorg/apache/log4j/l/b;
iput p2, p0, Lorg/apache/log4j/l/d;->a:I
return-void
.end method
.method public run()V
.registers 6
:goto_0
invoke-virtual {p0}, Lorg/apache/log4j/l/d;->isInterrupted()Z
move-result v0
if-nez v0, :cond_53
:try_start_6
new-instance v0, Ljava/net/ServerSocket;
iget v1, p0, Lorg/apache/log4j/l/d;->a:I
invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V
:goto_d
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
move-result-object v1
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Connected to client at "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lorg/apache/log4j/l/e;
iget-object v4, p0, Lorg/apache/log4j/l/d;->b:Lorg/apache/log4j/l/b;
invoke-direct {v3, v1, v4}, Lorg/apache/log4j/l/e;-><init>(Ljava/net/Socket;Lorg/apache/log4j/l/b;)V
const-string v1, "ExternallyRolledFileAppender-HUP"
invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
:try_end_3c
.catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_3c} :catch_3d
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_3c} :catch_49
.catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_3c} :catch_4e
goto :goto_d
:catch_3d
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V
goto :goto_0
:catch_49
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_0
:catch_4e
move-exception v0
invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
goto :goto_0
:cond_53
return-void
.end method