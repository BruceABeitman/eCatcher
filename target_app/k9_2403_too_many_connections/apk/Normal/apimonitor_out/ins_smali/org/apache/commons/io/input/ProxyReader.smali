.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "ProxyReader.java"
.method public constructor <init>(Ljava/io/Reader;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->close()V
return-void
.end method
.method public declared-synchronized mark(I)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public markSupported()Z
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z
move-result v0
return v0
.end method
.method public read()I
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->read()I
move-result v0
return v0
.end method
.method public read([C)I
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I
move-result v0
return v0
.end method
.method public read([CII)I
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I
move-result v0
return v0
.end method
.method public ready()Z
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
move-result v0
return v0
.end method
.method public declared-synchronized reset()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->reset()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public skip(J)J
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;
invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J
move-result-wide v0
return-wide v0
.end method