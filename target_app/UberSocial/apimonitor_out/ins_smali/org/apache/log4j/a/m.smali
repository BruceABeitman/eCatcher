.class  Lorg/apache/log4j/a/m;
.super Ljava/lang/Thread;
.source "SourceFile"
.field static a:Ljava/lang/Class;
.field private static final b:Lorg/apache/log4j/aa;
.field private c:Lorg/apache/log4j/a/q;
.field private d:Ljava/net/ServerSocket;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/a/m;->a:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.a.m"
invoke-static {v0}, Lorg/apache/log4j/a/m;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/m;->a:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/m;->b:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/a/m;->a:Ljava/lang/Class;
goto :goto_c
.end method
.method constructor <init>(Lorg/apache/log4j/a/q;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lorg/apache/log4j/a/m;->setDaemon(Z)V
iput-object p1, p0, Lorg/apache/log4j/a/m;->c:Lorg/apache/log4j/a/q;
new-instance v0, Ljava/net/ServerSocket;
invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/a/m;->d:Ljava/net/ServerSocket;
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method static a(Lorg/apache/log4j/a/m;)Lorg/apache/log4j/a/q;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/a/m;->c:Lorg/apache/log4j/a/q;
return-object v0
.end method
.method static a()Lorg/apache/log4j/aa;
.registers 1
sget-object v0, Lorg/apache/log4j/a/m;->b:Lorg/apache/log4j/aa;
return-object v0
.end method
.method public run()V
.registers 5
sget-object v0, Lorg/apache/log4j/a/m;->b:Lorg/apache/log4j/aa;
const-string v1, "Thread started"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
:try_start_7
:goto_7
sget-object v0, Lorg/apache/log4j/a/m;->b:Lorg/apache/log4j/aa;
const-string v1, "Waiting for a connection"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lorg/apache/log4j/a/m;->d:Ljava/net/ServerSocket;
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
move-result-object v0
sget-object v1, Lorg/apache/log4j/a/m;->b:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Got a connection from "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;
move-result-object v3
invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lorg/apache/log4j/a/n;
invoke-direct {v2, p0, v0}, Lorg/apache/log4j/a/n;-><init>(Lorg/apache/log4j/a/m;Ljava/net/Socket;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
:try_end_45
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_45} :catch_46
goto :goto_7
:catch_46
move-exception v0
sget-object v1, Lorg/apache/log4j/a/m;->b:Lorg/apache/log4j/aa;
const-string v2, "Error in accepting connections, stopping."
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
return-void
.end method