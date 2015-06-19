.class public Lorg/apache/commons/io/input/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"
.field private final in:Ljava/io/InputStream;
.field private mark:J
.field private final max:J
.field private pos:J
.field private propagateClose:Z
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
const-wide/16 v0, -0x1
invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;J)V
.registers 6
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
const-wide/16 v0, -0x1
iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z
iput-wide p2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
iput-object p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
return-void
.end method
.method public available()I
.registers 5
iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-ltz v0, :cond_12
iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
cmp-long v0, v0, v2
if-ltz v0, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v0
goto :goto_11
.end method
.method public close()V
.registers 2
iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z
if-eqz v0, :cond_9
iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:cond_9
return-void
.end method
.method public isPropagateClose()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z
return v0
.end method
.method public declared-synchronized mark(I)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public markSupported()Z
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z
move-result v0
return v0
.end method
.method public read()I
.registers 6
iget-wide v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-ltz v1, :cond_12
iget-wide v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
iget-wide v3, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
cmp-long v1, v1, v3
if-ltz v1, :cond_12
const/4 v0, -0x1
:goto_11
return v0
:cond_12
iget-object v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v0
iget-wide v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
const-wide/16 v3, 0x1
add-long/2addr v1, v3
iput-wide v1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
goto :goto_11
.end method
.method public read([B)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->read([BII)I
move-result v0
return v0
.end method
.method public read([BII)I
.registers 14
const-wide/16 v8, 0x0
const/4 v3, -0x1
iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
cmp-long v4, v4, v8
if-ltz v4, :cond_13
iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
cmp-long v4, v4, v6
if-ltz v4, :cond_13
move v0, v3
:goto_12
return v0
:cond_13
iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
cmp-long v4, v4, v8
if-ltz v4, :cond_2e
int-to-long v4, p3
iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
iget-wide v8, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
sub-long/2addr v6, v8
invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
move-result-wide v1
:goto_23
iget-object v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
long-to-int v5, v1
invoke-virtual {v4, p1, p2, v5}, Ljava/io/InputStream;->read([BII)I
move-result v0
if-ne v0, v3, :cond_30
move v0, v3
goto :goto_12
:cond_2e
int-to-long v1, p3
goto :goto_23
:cond_30
iget-wide v3, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
int-to-long v5, v0
add-long/2addr v3, v5
iput-wide v3, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
goto :goto_12
.end method
.method public declared-synchronized reset()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public setPropagateClose(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z
return-void
.end method
.method public skip(J)J
.registers 11
iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-ltz v4, :cond_1d
iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->max:J
iget-wide v6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
sub-long/2addr v4, v6
invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J
move-result-wide v2
:goto_11
iget-object v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J
move-result-wide v0
iget-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
add-long/2addr v4, v0
iput-wide v4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->pos:J
return-wide v0
:cond_1d
move-wide v2, p1
goto :goto_11
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method