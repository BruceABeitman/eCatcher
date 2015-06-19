.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"
.field private count:J
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 2
invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public declared-synchronized getByteCount()J
.registers 3
monitor-enter p0
:try_start_1
iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-wide v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getCount()I
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->getByteCount()J
move-result-wide v0
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_2e
new-instance v2, Ljava/lang/ArithmeticException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "The byte count "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " is too large to be converted to an int"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v2
:try_end_2b
.catchall {:try_start_1 .. :try_end_2b} :catchall_2b
:catchall_2b
move-exception v2
monitor-exit p0
throw v2
:cond_2e
long-to-int v2, v0
monitor-exit p0
return v2
.end method
.method public read()I
.registers 6
invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I
move-result v0
iget-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
if-ltz v0, :cond_e
const-wide/16 v3, 0x1
:goto_a
add-long/2addr v1, v3
iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
return v0
:cond_e
const-wide/16 v3, 0x0
goto :goto_a
.end method
.method public read([B)I
.registers 7
invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I
move-result v0
iget-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
if-ltz v0, :cond_d
int-to-long v3, v0
:goto_9
add-long/2addr v1, v3
iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
return v0
:cond_d
const-wide/16 v3, 0x0
goto :goto_9
.end method
.method public read([BII)I
.registers 9
invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I
move-result v0
iget-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
if-ltz v0, :cond_d
int-to-long v3, v0
:goto_9
add-long/2addr v1, v3
iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
return v0
:cond_d
const-wide/16 v3, 0x0
goto :goto_9
.end method
.method public declared-synchronized resetByteCount()J
.registers 5
monitor-enter p0
:try_start_1
iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
const-wide/16 v2, 0x0
iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-wide v0
:catchall_9
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized resetCount()I
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->resetByteCount()J
move-result-wide v0
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_2e
new-instance v2, Ljava/lang/ArithmeticException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "The byte count "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " is too large to be converted to an int"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V
throw v2
:try_end_2b
.catchall {:try_start_1 .. :try_end_2b} :catchall_2b
:catchall_2b
move-exception v2
monitor-exit p0
throw v2
:cond_2e
long-to-int v2, v0
monitor-exit p0
return v2
.end method
.method public skip(J)J
.registers 7
invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J
move-result-wide v0
iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
add-long/2addr v2, v0
iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
return-wide v0
.end method