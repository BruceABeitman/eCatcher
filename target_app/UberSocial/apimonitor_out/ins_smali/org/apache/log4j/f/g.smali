.class public abstract Lorg/apache/log4j/f/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field protected static a:J
.field protected b:Lorg/apache/log4j/f/e;
.field protected c:Ljava/lang/String;
.field protected d:J
.field protected e:J
.field protected f:Ljava/lang/String;
.field protected g:Ljava/lang/String;
.field protected h:Ljava/lang/String;
.field protected i:Ljava/lang/Throwable;
.field protected j:Ljava/lang/String;
.field protected k:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, 0x0
sput-wide v0, Lorg/apache/log4j/f/g;->a:J
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lorg/apache/log4j/f/g;->e:J
const-string v0, "Debug"
iput-object v0, p0, Lorg/apache/log4j/f/g;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/f/g;->c:Ljava/lang/String;
sget-object v0, Lorg/apache/log4j/f/e;->d:Lorg/apache/log4j/f/e;
iput-object v0, p0, Lorg/apache/log4j/f/g;->b:Lorg/apache/log4j/f/e;
invoke-static {}, Lorg/apache/log4j/f/g;->o()J
move-result-wide v0
iput-wide v0, p0, Lorg/apache/log4j/f/g;->d:J
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/f/g;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/f/g;->j:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/f/g;->k:Ljava/lang/String;
return-void
.end method
.method public static declared-synchronized n()V
.registers 3
const-class v0, Lorg/apache/log4j/f/g;
monitor-enter v0
const-wide/16 v1, 0x0
:try_start_5
sput-wide v1, Lorg/apache/log4j/f/g;->a:J
:try_end_7
.catchall {:try_start_5 .. :try_end_7} :catchall_9
monitor-exit v0
return-void
:catchall_9
move-exception v1
monitor-exit v0
throw v1
.end method
.method protected static declared-synchronized o()J
.registers 6
const-class v1, Lorg/apache/log4j/f/g;
monitor-enter v1
:try_start_3
sget-wide v2, Lorg/apache/log4j/f/g;->a:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
sput-wide v2, Lorg/apache/log4j/f/g;->a:J
sget-wide v2, Lorg/apache/log4j/f/g;->a:J
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_e
monitor-exit v1
return-wide v2
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lorg/apache/log4j/f/g;->d:J
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/g;->f:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/Throwable;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iput-object p1, p0, Lorg/apache/log4j/f/g;->i:Ljava/lang/Throwable;
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lorg/apache/log4j/f/g;->h:Ljava/lang/String;
:try_start_1b
invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
:try_end_21
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_22
goto :goto_2
:catch_22
move-exception v0
goto :goto_2
.end method
.method public a(Lorg/apache/log4j/f/e;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/g;->b:Lorg/apache/log4j/f/e;
return-void
.end method
.method public abstract a()Z
.end method
.method public b()Lorg/apache/log4j/f/e;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->b:Lorg/apache/log4j/f/e;
return-object v0
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lorg/apache/log4j/f/g;->e:J
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/g;->c:Ljava/lang/String;
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/g;->g:Ljava/lang/String;
return-void
.end method
.method public c()Z
.registers 3
const/4 v0, 0x0
invoke-virtual {p0}, Lorg/apache/log4j/f/g;->k()Ljava/lang/Throwable;
move-result-object v1
if-nez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_7
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/g;->h:Ljava/lang/String;
return-void
.end method
.method public d()Z
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/f/g;->a()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0}, Lorg/apache/log4j/f/g;->c()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->f:Ljava/lang/String;
return-object v0
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/g;->j:Ljava/lang/String;
return-void
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->c:Ljava/lang/String;
return-object v0
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/g;->k:Ljava/lang/String;
return-void
.end method
.method public g()J
.registers 3
iget-wide v0, p0, Lorg/apache/log4j/f/g;->d:J
return-wide v0
.end method
.method public h()J
.registers 3
iget-wide v0, p0, Lorg/apache/log4j/f/g;->e:J
return-wide v0
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->g:Ljava/lang/String;
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->h:Ljava/lang/String;
return-object v0
.end method
.method public k()Ljava/lang/Throwable;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->i:Ljava/lang/Throwable;
return-object v0
.end method
.method public l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->j:Ljava/lang/String;
return-object v0
.end method
.method public m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/g;->k:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "LogRecord: ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/f/g;->b:Lorg/apache/log4j/f/e;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/f/g;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method