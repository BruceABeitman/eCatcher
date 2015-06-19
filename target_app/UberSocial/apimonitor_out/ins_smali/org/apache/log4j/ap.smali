.class public Lorg/apache/log4j/ap;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.field protected x:Z
.field protected y:Ljava/lang/String;
.field protected z:Lorg/apache/log4j/c/aa;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/ap;->x:Z
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;Ljava/io/OutputStream;)V
.registers 4
new-instance v0, Ljava/io/OutputStreamWriter;
invoke-direct {v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
invoke-direct {p0, p1, v0}, Lorg/apache/log4j/ap;-><init>(Lorg/apache/log4j/u;Ljava/io/Writer;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;Ljava/io/Writer;)V
.registers 4
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/ap;->x:Z
iput-object p1, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
invoke-virtual {p0, p2}, Lorg/apache/log4j/ap;->b(Ljava/io/Writer;)V
return-void
.end method
.method protected a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Lorg/apache/log4j/ap;->w()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2a
:try_start_7
new-instance v0, Ljava/io/OutputStreamWriter;
invoke-direct {v0, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
:goto_c
:try_end_c
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_14
if-nez v0, :cond_13
new-instance v0, Ljava/io/OutputStreamWriter;
invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
:cond_13
return-object v0
:catch_14
move-exception v0
instance-of v0, v0, Ljava/io/InterruptedIOException;
if-eqz v0, :cond_20
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_20
const-string v0, "Error initializing output writer."
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
const-string v0, "Unsupported encoding?"
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
:cond_2a
move-object v0, v1
goto :goto_c
.end method
.method public declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lorg/apache/log4j/ap;->h:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_11
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:cond_7
const/4 v0, 0x1
:try_start_8
iput-boolean v0, p0, Lorg/apache/log4j/ap;->h:Z
invoke-virtual {p0}, Lorg/apache/log4j/ap;->x()V
invoke-virtual {p0}, Lorg/apache/log4j/ap;->t()V
:try_end_10
.catchall {:try_start_8 .. :try_end_10} :catchall_11
goto :goto_5
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lorg/apache/log4j/k/e;)V
.registers 3
monitor-enter p0
if-nez p1, :cond_a
:try_start_3
const-string v0, "You have tried to set a null error-handler."
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_16
:goto_8
:cond_8
monitor-exit p0
return-void
:try_start_a
:cond_a
iput-object p1, p0, Lorg/apache/log4j/ap;->e:Lorg/apache/log4j/k/e;
iget-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
if-eqz v0, :cond_8
iget-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/aa;->a(Lorg/apache/log4j/k/e;)V
:try_end_15
.catchall {:try_start_a .. :try_end_15} :catchall_16
goto :goto_8
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Lorg/apache/log4j/k/k;)V
.registers 3
invoke-virtual {p0}, Lorg/apache/log4j/ap;->v()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p0, p1}, Lorg/apache/log4j/ap;->c(Lorg/apache/log4j/k/k;)V
goto :goto_6
.end method
.method public declared-synchronized b(Ljava/io/Writer;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lorg/apache/log4j/ap;->t()V
new-instance v0, Lorg/apache/log4j/c/aa;
iget-object v1, p0, Lorg/apache/log4j/ap;->e:Lorg/apache/log4j/k/e;
invoke-direct {v0, p1, v1}, Lorg/apache/log4j/c/aa;-><init>(Ljava/io/Writer;Lorg/apache/log4j/k/e;)V
iput-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {p0}, Lorg/apache/log4j/ap;->y()V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected c(Lorg/apache/log4j/k/k;)V
.registers 7
iget-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
iget-object v1, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/c/aa;->write(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
invoke-virtual {v0}, Lorg/apache/log4j/u;->b()Z
move-result v0
if-eqz v0, :cond_2e
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2e
array-length v2, v1
const/4 v0, 0x0
:goto_1b
if-ge v0, v2, :cond_2e
iget-object v3, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
aget-object v4, v1, v0
invoke-virtual {v3, v4}, Lorg/apache/log4j/c/aa;->write(Ljava/lang/String;)V
iget-object v3, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
sget-object v4, Lorg/apache/log4j/u;->h:Ljava/lang/String;
invoke-virtual {v3, v4}, Lorg/apache/log4j/c/aa;->write(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_2e
invoke-virtual {p0, p1}, Lorg/apache/log4j/ap;->d(Lorg/apache/log4j/k/k;)Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v0}, Lorg/apache/log4j/c/aa;->flush()V
:cond_39
return-void
.end method
.method public c(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/ap;->x:Z
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/ap;->y:Ljava/lang/String;
return-void
.end method
.method protected d(Lorg/apache/log4j/k/k;)Z
.registers 3
iget-boolean v0, p0, Lorg/apache/log4j/ap;->x:Z
return v0
.end method
.method public i()V
.registers 1
return-void
.end method
.method protected m()V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
if-eqz v0, :cond_9
:try_start_4
iget-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v0}, Lorg/apache/log4j/c/aa;->close()V
:try_end_9
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a
:goto_9
:cond_9
return-void
:catch_a
move-exception v0
instance-of v1, v0, Ljava/io/InterruptedIOException;
if-eqz v1, :cond_16
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
:cond_16
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Could not close "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method protected t()V
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/ap;->m()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
return-void
.end method
.method public u()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/ap;->x:Z
return v0
.end method
.method protected v()Z
.registers 5
const/4 v0, 0x0
iget-boolean v1, p0, Lorg/apache/log4j/ap;->h:Z
if-eqz v1, :cond_b
const-string v1, "Not allowed to write to a closed appender."
invoke-static {v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
:goto_a
return v0
:cond_b
iget-object v1, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
if-nez v1, :cond_30
iget-object v1, p0, Lorg/apache/log4j/ap;->e:Lorg/apache/log4j/k/e;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "No output stream or file set for the appender named ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/ap;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V
goto :goto_a
:cond_30
iget-object v1, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
if-nez v1, :cond_55
iget-object v1, p0, Lorg/apache/log4j/ap;->e:Lorg/apache/log4j/k/e;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "No layout set for the appender named ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/ap;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V
goto :goto_a
:cond_55
const/4 v0, 0x1
goto :goto_a
.end method
.method public w()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/ap;->y:Ljava/lang/String;
return-object v0
.end method
.method protected x()V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
if-eqz v0, :cond_1a
iget-object v0, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
invoke-virtual {v0}, Lorg/apache/log4j/u;->f()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v1, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
if-eqz v1, :cond_1a
iget-object v1, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v1, v0}, Lorg/apache/log4j/c/aa;->write(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v0}, Lorg/apache/log4j/c/aa;->flush()V
:cond_1a
return-void
.end method
.method protected y()V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
if-eqz v0, :cond_15
iget-object v0, p0, Lorg/apache/log4j/ap;->b:Lorg/apache/log4j/u;
invoke-virtual {v0}, Lorg/apache/log4j/u;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_15
iget-object v1, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
if-eqz v1, :cond_15
iget-object v1, p0, Lorg/apache/log4j/ap;->z:Lorg/apache/log4j/c/aa;
invoke-virtual {v1, v0}, Lorg/apache/log4j/c/aa;->write(Ljava/lang/String;)V
:cond_15
return-void
.end method