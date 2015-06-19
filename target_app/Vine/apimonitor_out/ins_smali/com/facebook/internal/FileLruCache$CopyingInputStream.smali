.class final Lcom/facebook/internal/FileLruCache$CopyingInputStream;
.super Ljava/io/InputStream;
.source "FileLruCache.java"
.field final input:Ljava/io/InputStream;
.field final output:Ljava/io/OutputStream;
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 3
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-object p1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;
iput-object p2, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;
return-void
.end method
.method public available()I
.registers 2
iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v0
return v0
.end method
.method public close()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_b
iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
return-void
:catchall_b
move-exception v0
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
throw v0
.end method
.method public mark(I)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public markSupported()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public read()I
.registers 3
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v0
if-ltz v0, :cond_d
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;
invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V
:cond_d
return v0
.end method
.method public read([B)I
.registers 5
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;
invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
move-result v0
if-lez v0, :cond_e
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;
const/4 v2, 0x0
invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
:cond_e
return v0
.end method
.method public read([BII)I
.registers 6
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;
invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
if-lez v0, :cond_d
iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;
invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V
:cond_d
return v0
.end method
.method public declared-synchronized reset()V
.registers 2
monitor-enter p0
:try_start_1
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
:catchall_7
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public skip(J)J
.registers 12
const/16 v4, 0x400
new-array v0, v4, [B
const-wide/16 v2, 0x0
:goto_6
cmp-long v4, v2, p1
if-gez v4, :cond_1a
const/4 v4, 0x0
sub-long v5, p1, v2
array-length v7, v0
int-to-long v7, v7
invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J
move-result-wide v5
long-to-int v5, v5
invoke-virtual {p0, v0, v4, v5}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->read([BII)I
move-result v1
if-gez v1, :cond_1b
:cond_1a
return-wide v2
:cond_1b
int-to-long v4, v1
add-long/2addr v2, v4
goto :goto_6
.end method