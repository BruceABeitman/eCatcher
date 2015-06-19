.class public Lorg/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"
.field private eof:Z
.field private mark:J
.field private markSupported:Z
.field private position:J
.field private readlimit:J
.field private size:J
.field private throwEofException:Z
.method public constructor <init>(J)V
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V
return-void
.end method
.method public constructor <init>(JZZ)V
.registers 7
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J
iput-wide p1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
iput-boolean p3, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z
iput-boolean p4, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z
return-void
.end method
.method private doEndOfFile()I
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/io/EOFException;
invoke-direct {v0}, Ljava/io/EOFException;-><init>()V
throw v0
:cond_d
const/4 v0, -0x1
return v0
.end method
.method public available()I
.registers 7
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
sub-long v0, v2, v4
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_e
const/4 v2, 0x0
:goto_d
return v2
:cond_e
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_19
const v2, 0x7fffffff
goto :goto_d
:cond_19
long-to-int v2, v0
goto :goto_d
.end method
.method public close()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
const-wide/16 v0, -0x1
iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J
return-void
.end method
.method public getPosition()J
.registers 3
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
return-wide v0
.end method
.method public getSize()J
.registers 3
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
return-wide v0
.end method
.method public declared-synchronized mark(I)V
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z
if-nez v0, :cond_10
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Mark not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_d
move-exception v0
monitor-exit p0
throw v0
:cond_10
:try_start_10
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J
int-to-long v0, p1
iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
:try_end_17
.catchall {:try_start_10 .. :try_end_17} :catchall_d
monitor-exit p0
return-void
.end method
.method public markSupported()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z
return v0
.end method
.method protected processByte()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected processBytes([BII)V
.registers 4
return-void
.end method
.method public read()I
.registers 5
iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "Read after end of file"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
cmp-long v0, v0, v2
if-nez v0, :cond_19
invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I
move-result v0
:goto_18
return v0
:cond_19
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I
move-result v0
goto :goto_18
.end method
.method public read([B)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I
move-result v0
return v0
.end method
.method public read([BII)I
.registers 9
iget-boolean v1, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
if-eqz v1, :cond_c
new-instance v1, Ljava/io/IOException;
const-string v2, "Read after end of file"
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_c
iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
cmp-long v1, v1, v3
if-nez v1, :cond_19
invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I
move-result v1
:goto_18
return v1
:cond_19
iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
int-to-long v3, p3
add-long/2addr v1, v3
iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
move v0, p3
iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
cmp-long v1, v1, v3
if-lez v1, :cond_34
iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
sub-long/2addr v1, v3
long-to-int v1, v1
sub-int v0, p3, v1
iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
:cond_34
invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V
move v1, v0
goto :goto_18
.end method
.method public declared-synchronized reset()V
.registers 7
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z
if-nez v0, :cond_10
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Mark not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_d
move-exception v0
monitor-exit p0
throw v0
:cond_10
:try_start_10
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gez v0, :cond_20
new-instance v0, Ljava/io/IOException;
const-string v1, "No position has been marked"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J
iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
add-long/2addr v2, v4
cmp-long v0, v0, v2
if-lez v0, :cond_58
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Marked position ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "] is no longer valid - passed the read limit ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_58
iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J
iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
:try_end_5f
.catchall {:try_start_10 .. :try_end_5f} :catchall_d
monitor-exit p0
return-void
.end method
.method public skip(J)J
.registers 9
iget-boolean v2, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
if-eqz v2, :cond_c
new-instance v2, Ljava/io/IOException;
const-string v3, "Skip after end of file"
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
:cond_c
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
cmp-long v2, v2, v4
if-nez v2, :cond_1a
invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I
move-result v2
int-to-long v2, v2
:goto_19
return-wide v2
:cond_1a
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
add-long/2addr v2, p1
iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
move-wide v0, p1
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
cmp-long v2, v2, v4
if-lez v2, :cond_33
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
sub-long/2addr v2, v4
sub-long v0, p1, v2
iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J
iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J
:cond_33
move-wide v2, v0
goto :goto_19
.end method