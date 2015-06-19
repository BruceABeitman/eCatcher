.class public Lorg/apache/log4j/g/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field static a:Ljava/lang/String;
.field static b:Ljava/lang/String;
.field static c:Lorg/apache/log4j/aa;
.field static d:Lorg/apache/log4j/g/l;
.field static e:I
.field static i:Ljava/lang/Class;
.field  f:Ljava/util/Hashtable;
.field  g:Lorg/apache/log4j/k/j;
.field  h:Ljava/io/File;
.method static constructor <clinit>()V
.registers 1
const-string v0, "generic"
sput-object v0, Lorg/apache/log4j/g/l;->a:Ljava/lang/String;
const-string v0, ".lcf"
sput-object v0, Lorg/apache/log4j/g/l;->b:Ljava/lang/String;
sget-object v0, Lorg/apache/log4j/g/l;->i:Ljava/lang/Class;
if-nez v0, :cond_1b
const-string v0, "org.apache.log4j.g.l"
invoke-static {v0}, Lorg/apache/log4j/g/l;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/l;->i:Ljava/lang/Class;
:goto_14
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
return-void
:cond_1b
sget-object v0, Lorg/apache/log4j/g/l;->i:Ljava/lang/Class;
goto :goto_14
.end method
.method public constructor <init>(Ljava/io/File;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/g/l;->h:Ljava/io/File;
new-instance v0, Ljava/util/Hashtable;
const/16 v1, 0xb
invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/g/l;->f:Ljava/util/Hashtable;
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
sget-object v0, Lorg/apache/log4j/g/l;->i:Ljava/lang/Class;
if-nez v0, :cond_38
const-string v0, "org.apache.log4j.g.l"
invoke-static {v0}, Lorg/apache/log4j/g/l;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/l;->i:Ljava/lang/Class;
:goto_1e
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " port configFile directory"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/System;->exit(I)V
return-void
:cond_38
sget-object v0, Lorg/apache/log4j/g/l;->i:Ljava/lang/Class;
goto :goto_1e
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
sput v0, Lorg/apache/log4j/g/l;->e:I
:goto_6
:try_end_6
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_38
invoke-static {p1}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_30
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "["
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "] is not a directory."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/g/l;->a(Ljava/lang/String;)V
:cond_30
new-instance v1, Lorg/apache/log4j/g/l;
invoke-direct {v1, v0}, Lorg/apache/log4j/g/l;-><init>(Ljava/io/File;)V
sput-object v1, Lorg/apache/log4j/g/l;->d:Lorg/apache/log4j/g/l;
return-void
:catch_38
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
invoke-static {v0}, Lorg/apache/log4j/g/l;->a(Ljava/lang/String;)V
goto :goto_6
.end method
.method public static a([Ljava/lang/String;)V
.registers 7
array-length v0, p0
const/4 v1, 0x3
if-ne v0, v1, :cond_84
const/4 v0, 0x0
aget-object v0, p0, v0
const/4 v1, 0x1
aget-object v1, p0, v1
const/4 v2, 0x2
aget-object v2, p0, v2
invoke-static {v0, v1, v2}, Lorg/apache/log4j/g/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_start_10
:goto_10
sget-object v0, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Listening on port "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
sget v2, Lorg/apache/log4j/g/l;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
new-instance v1, Ljava/net/ServerSocket;
sget v0, Lorg/apache/log4j/g/l;->e:I
invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V
:goto_31
sget-object v0, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
const-string v2, "Waiting to accept a new client."
invoke-virtual {v0, v2}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
invoke-static {v1}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
move-result-object v2
invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;
move-result-object v3
sget-object v0, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const-string v5, "Connected to client at "
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
sget-object v0, Lorg/apache/log4j/g/l;->d:Lorg/apache/log4j/g/l;
iget-object v0, v0, Lorg/apache/log4j/g/l;->f:Ljava/util/Hashtable;
invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/k/j;
if-nez v0, :cond_6a
sget-object v0, Lorg/apache/log4j/g/l;->d:Lorg/apache/log4j/g/l;
invoke-virtual {v0, v3}, Lorg/apache/log4j/g/l;->a(Ljava/net/InetAddress;)Lorg/apache/log4j/k/j;
move-result-object v0
:cond_6a
sget-object v3, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
const-string v4, "Starting new socket node."
invoke-virtual {v3, v4}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
new-instance v3, Ljava/lang/Thread;
new-instance v4, Lorg/apache/log4j/g/k;
invoke-direct {v4, v2, v0}, Lorg/apache/log4j/g/k;-><init>(Ljava/net/Socket;Lorg/apache/log4j/k/j;)V
invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v3}, Ljava/lang/Thread;->start()V
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_7e} :catch_7f
goto :goto_31
:catch_7f
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
return-void
:cond_84
const-string v0, "Wrong number of arguments."
invoke-static {v0}, Lorg/apache/log4j/g/l;->a(Ljava/lang/String;)V
goto :goto_10
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
.method  a()Lorg/apache/log4j/k/j;
.registers 5
iget-object v0, p0, Lorg/apache/log4j/g/l;->g:Lorg/apache/log4j/k/j;
if-nez v0, :cond_42
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lorg/apache/log4j/g/l;->h:Ljava/io/File;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
sget-object v3, Lorg/apache/log4j/g/l;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
sget-object v3, Lorg/apache/log4j/g/l;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_45
new-instance v1, Lorg/apache/log4j/t;
new-instance v2, Lorg/apache/log4j/k/s;
sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-direct {v2, v3}, Lorg/apache/log4j/k/s;-><init>(Lorg/apache/log4j/v;)V
invoke-direct {v1, v2}, Lorg/apache/log4j/t;-><init>(Lorg/apache/log4j/aa;)V
iput-object v1, p0, Lorg/apache/log4j/g/l;->g:Lorg/apache/log4j/k/j;
new-instance v1, Lorg/apache/log4j/ah;
invoke-direct {v1}, Lorg/apache/log4j/ah;-><init>()V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lorg/apache/log4j/g/l;->g:Lorg/apache/log4j/k/j;
invoke-virtual {v1, v0, v2}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;Lorg/apache/log4j/k/j;)V
:goto_42
:cond_42
iget-object v0, p0, Lorg/apache/log4j/g/l;->g:Lorg/apache/log4j/k/j;
return-object v0
:cond_45
sget-object v1, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not find config file ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, "]. Will use the default hierarchy."
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/g/l;->g:Lorg/apache/log4j/k/j;
goto :goto_42
.end method
.method  a(Ljava/net/InetAddress;)Lorg/apache/log4j/k/j;
.registers 6
sget-object v0, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Locating configuration file for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_48
sget-object v0, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Could not parse the inetAddress ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "]. Using default hierarchy."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V
invoke-virtual {p0}, Lorg/apache/log4j/g/l;->a()Lorg/apache/log4j/k/j;
move-result-object v0
:goto_47
return-object v0
:cond_48
const/4 v2, 0x0
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lorg/apache/log4j/g/l;->h:Ljava/io/File;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
sget-object v3, Lorg/apache/log4j/g/l;->b:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_8b
new-instance v0, Lorg/apache/log4j/t;
new-instance v2, Lorg/apache/log4j/k/s;
sget-object v3, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-direct {v2, v3}, Lorg/apache/log4j/k/s;-><init>(Lorg/apache/log4j/v;)V
invoke-direct {v0, v2}, Lorg/apache/log4j/t;-><init>(Lorg/apache/log4j/aa;)V
iget-object v2, p0, Lorg/apache/log4j/g/l;->f:Ljava/util/Hashtable;
invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Lorg/apache/log4j/ah;
invoke-direct {v2}, Lorg/apache/log4j/ah;-><init>()V
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1, v0}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;Lorg/apache/log4j/k/j;)V
goto :goto_47
:cond_8b
sget-object v0, Lorg/apache/log4j/g/l;->c:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not find config file ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "]."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V
invoke-virtual {p0}, Lorg/apache/log4j/g/l;->a()Lorg/apache/log4j/k/j;
move-result-object v0
goto :goto_47
.end method