.class public abstract Lorg/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "ThresholdingOutputStream.java"
.field private threshold:I
.field private thresholdExceeded:Z
.field private written:J
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
iput p1, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I
return-void
.end method
.method protected checkThreshold(I)V
.registers 6
iget-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z
if-nez v0, :cond_15
iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
int-to-long v2, p1
add-long/2addr v0, v2
iget v2, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I
int-to-long v2, v2
cmp-long v0, v0, v2
if-lez v0, :cond_15
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z
invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdReached()V
:cond_15
return-void
.end method
.method public close()V
.registers 2
:try_start_0
invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->flush()V
:goto_3
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_b
invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
return-void
:catch_b
move-exception v0
goto :goto_3
.end method
.method public flush()V
.registers 2
invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public getByteCount()J
.registers 3
iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
return-wide v0
.end method
.method protected abstract getStream()Ljava/io/OutputStream;
.end method
.method public getThreshold()I
.registers 2
iget v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I
return v0
.end method
.method public isThresholdExceeded()Z
.registers 5
iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
iget v2, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->threshold:I
int-to-long v2, v2
cmp-long v0, v0, v2
if-lez v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method protected resetByteCount()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
return-void
.end method
.method protected abstract thresholdReached()V
.end method
.method public write(I)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V
invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
return-void
.end method
.method public write([B)V
.registers 6
array-length v0, p1
invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V
invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
array-length v2, p1
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
return-void
.end method
.method public write([BII)V
.registers 8
invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V
invoke-virtual {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
iget-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
int-to-long v2, p3
add-long/2addr v0, v2
iput-wide v0, p0, Lorg/apache/commons/io/output/ThresholdingOutputStream;->written:J
return-void
.end method