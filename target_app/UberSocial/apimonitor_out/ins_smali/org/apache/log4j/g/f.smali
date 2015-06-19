.class public Lorg/apache/log4j/g/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field static a:Lorg/apache/log4j/aa;
.field static b:I
.field static c:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/g/f;->c:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.g.f"
invoke-static {v0}, Lorg/apache/log4j/g/f;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/f;->c:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/f;->a:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/g/f;->c:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;)V
.registers 4
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Usage: java "
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
sget-object v0, Lorg/apache/log4j/g/f;->c:Ljava/lang/Class;
if-nez v0, :cond_38
const-string v0, "org.apache.log4j.g.f"
invoke-static {v0}, Lorg/apache/log4j/g/f;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/f;->c:Ljava/lang/Class;
:goto_1e
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " port configFile"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/System;->exit(I)V
return-void
:cond_38
sget-object v0, Lorg/apache/log4j/g/f;->c:Ljava/lang/Class;
goto :goto_1e
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
:try_start_0
invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
sput v0, Lorg/apache/log4j/g/f;->b:I
:goto_6
:try_end_6
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_12
const-string v0, ".xml"
invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
invoke-static {p1}, Lorg/apache/log4j/m/a;->b(Ljava/lang/String;)V
:goto_11
return-void
:catch_12
move-exception v0
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "Could not interpret port number ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/g/f;->a(Ljava/lang/String;)V
goto :goto_6
:cond_33
invoke-static {p1}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;)V
goto :goto_11
.end method
.method public static a([Ljava/lang/String;)V
.registers 6
array-length v0, p0
const/4 v1, 0x2
if-ne v0, v1, :cond_88
const/4 v0, 0x0
aget-object v0, p0, v0
const/4 v1, 0x1
aget-object v1, p0, v1
invoke-static {v0, v1}, Lorg/apache/log4j/g/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_d
:goto_d
sget-object v0, Lorg/apache/log4j/g/f;->a:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Listening on port "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
sget v2, Lorg/apache/log4j/g/f;->b:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
new-instance v0, Ljava/net/ServerSocket;
sget v1, Lorg/apache/log4j/g/f;->b:I
invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V
:goto_2e
sget-object v1, Lorg/apache/log4j/g/f;->a:Lorg/apache/log4j/aa;
const-string v2, "Waiting to accept a new client."
invoke-virtual {v1, v2}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
move-result-object v1
sget-object v2, Lorg/apache/log4j/g/f;->a:Lorg/apache/log4j/aa;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "Connected to client at "
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
sget-object v2, Lorg/apache/log4j/g/f;->a:Lorg/apache/log4j/aa;
const-string v3, "Starting new socket node."
invoke-virtual {v2, v3}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lorg/apache/log4j/g/k;
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v4
invoke-direct {v3, v1, v4}, Lorg/apache/log4j/g/k;-><init>(Ljava/net/Socket;Lorg/apache/log4j/k/j;)V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "SimpleSocketServer-"
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
sget v4, Lorg/apache/log4j/g/f;->b:I
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
:try_end_82
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_82} :catch_83
goto :goto_2e
:catch_83
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
return-void
:cond_88
const-string v0, "Wrong number of arguments."
invoke-static {v0}, Lorg/apache/log4j/g/f;->a(Ljava/lang/String;)V
goto :goto_d
.end method
.method static b(Ljava/lang/String;)Ljava/lang/Class;
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