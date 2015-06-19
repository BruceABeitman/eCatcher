.class  Lorg/apache/log4j/a/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/net/Socket;
.field private final b:Lorg/apache/log4j/a/m;
.method constructor <init>(Lorg/apache/log4j/a/m;Ljava/net/Socket;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/a/n;->b:Lorg/apache/log4j/a/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lorg/apache/log4j/a/n;->a:Ljava/net/Socket;
return-void
.end method
.method public run()V
.registers 5
invoke-static {}, Lorg/apache/log4j/a/m;->a()Lorg/apache/log4j/aa;
move-result-object v0
const-string v1, "Starting to get data"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
:try_start_9
new-instance v1, Ljava/io/ObjectInputStream;
iget-object v0, p0, Lorg/apache/log4j/a/n;->a:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:goto_14
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/k/k;
iget-object v2, p0, Lorg/apache/log4j/a/n;->b:Lorg/apache/log4j/a/m;
invoke-static {v2}, Lorg/apache/log4j/a/m;->a(Lorg/apache/log4j/a/m;)Lorg/apache/log4j/a/q;
move-result-object v2
new-instance v3, Lorg/apache/log4j/a/j;
invoke-direct {v3, v0}, Lorg/apache/log4j/a/j;-><init>(Lorg/apache/log4j/k/k;)V
invoke-virtual {v2, v3}, Lorg/apache/log4j/a/q;->a(Lorg/apache/log4j/a/j;)V
:try_end_28
.catch Ljava/io/EOFException; {:try_start_9 .. :try_end_28} :catch_29
.catch Ljava/net/SocketException; {:try_start_9 .. :try_end_28} :catch_39
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_28} :catch_44
.catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_28} :catch_4f
goto :goto_14
:catch_29
move-exception v0
invoke-static {}, Lorg/apache/log4j/a/m;->a()Lorg/apache/log4j/aa;
move-result-object v0
const-string v1, "Reached EOF, closing connection"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
:goto_33
:try_start_33
iget-object v0, p0, Lorg/apache/log4j/a/n;->a:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:goto_38
:try_end_38
.catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_5a
return-void
:catch_39
move-exception v0
invoke-static {}, Lorg/apache/log4j/a/m;->a()Lorg/apache/log4j/aa;
move-result-object v0
const-string v1, "Caught SocketException, closing connection"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
goto :goto_33
:catch_44
move-exception v0
invoke-static {}, Lorg/apache/log4j/a/m;->a()Lorg/apache/log4j/aa;
move-result-object v1
const-string v2, "Got IOException, closing connection"
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_33
:catch_4f
move-exception v0
invoke-static {}, Lorg/apache/log4j/a/m;->a()Lorg/apache/log4j/aa;
move-result-object v1
const-string v2, "Got ClassNotFoundException, closing connection"
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_33
:catch_5a
move-exception v0
invoke-static {}, Lorg/apache/log4j/a/m;->a()Lorg/apache/log4j/aa;
move-result-object v1
const-string v2, "Error closing connection"
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_38
.end method