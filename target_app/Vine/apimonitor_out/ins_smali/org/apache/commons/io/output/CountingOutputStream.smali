.class public Lorg/apache/commons/io/output/CountingOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CountingOutputStream.java"
.field private count:J
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 4
invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
return-void
.end method
.method protected declared-synchronized beforeWrite(I)V
.registers 6
monitor-enter p0
:try_start_1
iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
int-to-long v2, p1
add-long/2addr v0, v2
iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized getByteCount()J
.registers 3
monitor-enter p0
:try_start_1
iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-wide v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getCount()I
.registers 6
invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->getByteCount()J
move-result-wide v0
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_2a
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
:cond_2a
long-to-int v2, v0
return v2
.end method
.method public declared-synchronized resetByteCount()J
.registers 5
monitor-enter p0
:try_start_1
iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
const-wide/16 v2, 0x0
iput-wide v2, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-wide v0
:catchall_9
move-exception v2
monitor-exit p0
throw v2
.end method
.method public resetCount()I
.registers 6
invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->resetByteCount()J
move-result-wide v0
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_2a
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
:cond_2a
long-to-int v2, v0
return v2
.end method