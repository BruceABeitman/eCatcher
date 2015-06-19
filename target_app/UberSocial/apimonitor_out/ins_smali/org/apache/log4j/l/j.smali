.class public Lorg/apache/log4j/l/j;
.super Ljava/lang/Object;
.source "SourceFile"
.field static a:Lorg/apache/log4j/aa;
.field static b:Ljava/lang/String;
.field static c:I
.field static d:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/l/j;->d:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.l.j"
invoke-static {v0}, Lorg/apache/log4j/l/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/l/j;->d:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/l/j;->a:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/l/j;->d:Ljava/lang/Class;
goto :goto_c
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a()V
.registers 5
const/4 v4, 0x2
:try_start_1
new-instance v0, Ljava/net/Socket;
sget-object v1, Lorg/apache/log4j/l/j;->b:Ljava/lang/String;
sget v2, Lorg/apache/log4j/l/j;->c:I
invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
new-instance v1, Ljava/io/DataOutputStream;
invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v2, Ljava/io/DataInputStream;
invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
const-string v0, "RollOver"
invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
move-result-object v0
const-string v1, "OK"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_39
sget-object v0, Lorg/apache/log4j/l/j;->a:Lorg/apache/log4j/aa;
const-string v1, "Roll over signal acknowledged by remote appender."
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
:goto_34
:try_end_34
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_5c
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/System;->exit(I)V
return-void
:cond_39
:try_start_39
sget-object v1, Lorg/apache/log4j/l/j;->a:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Unexpected return code "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " from remote entity."
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V
const/4 v0, 0x2
invoke-static {v0}, Ljava/lang/System;->exit(I)V
:try_end_5b
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_5b} :catch_5c
goto :goto_34
:catch_5c
move-exception v0
sget-object v1, Lorg/apache/log4j/l/j;->a:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not send roll signal on host "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
sget-object v3, Lorg/apache/log4j/l/j;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " port "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
sget v3, Lorg/apache/log4j/l/j;->c:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " ."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V
invoke-static {v4}, Ljava/lang/System;->exit(I)V
goto :goto_34
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
sget-object v0, Lorg/apache/log4j/l/j;->d:Ljava/lang/Class;
if-nez v0, :cond_38
const-string v0, "org.apache.log4j.l.j"
invoke-static {v0}, Lorg/apache/log4j/l/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/l/j;->d:Ljava/lang/Class;
:goto_1e
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, "host_name port_number"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/System;->exit(I)V
return-void
:cond_38
sget-object v0, Lorg/apache/log4j/l/j;->d:Ljava/lang/Class;
goto :goto_1e
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
sput-object p0, Lorg/apache/log4j/l/j;->b:Ljava/lang/String;
:try_start_2
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
sput v0, Lorg/apache/log4j/l/j;->c:I
:try_end_8
.catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "Second argument "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, " is not a valid integer."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/l/j;->a(Ljava/lang/String;)V
goto :goto_8
.end method
.method public static a([Ljava/lang/String;)V
.registers 3
invoke-static {}, Lorg/apache/log4j/f;->a()V
array-length v0, p0
const/4 v1, 0x2
if-ne v0, v1, :cond_14
const/4 v0, 0x0
aget-object v0, p0, v0
const/4 v1, 0x1
aget-object v1, p0, v1
invoke-static {v0, v1}, Lorg/apache/log4j/l/j;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_10
invoke-static {}, Lorg/apache/log4j/l/j;->a()V
return-void
:cond_14
const-string v0, "Wrong number of arguments."
invoke-static {v0}, Lorg/apache/log4j/l/j;->a(Ljava/lang/String;)V
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