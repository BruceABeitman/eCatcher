.class public Lco/vine/android/util/MeasureInputStream;
.super Ljava/io/InputStream;
.source "MeasureInputStream.java"
.field private final mInputStream:Ljava/io/InputStream;
.field private mReadTimeMs:J
.field private mReadTimeNs:J
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-object p1, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
return-void
.end method
.method public available()I
.registers 2
iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v0
return v0
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method
.method public getReadTime()J
.registers 7
iget-wide v0, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
iget-wide v2, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeNs:J
const-wide/32 v4, 0xf4240
div-long/2addr v2, v4
add-long/2addr v0, v2
return-wide v0
.end method
.method public mark(I)V
.registers 3
iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
return-void
.end method
.method public markSupported()Z
.registers 2
iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z
move-result v0
return v0
.end method
.method public read()I
.registers 8
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iget-object v3, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v3}, Ljava/io/InputStream;->read()I
move-result v2
iget-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeNs:J
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v5
sub-long/2addr v5, v0
add-long/2addr v3, v5
iput-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeNs:J
return v2
.end method
.method public read([B)I
.registers 9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v3, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I
move-result v2
iget-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v5, v0
add-long/2addr v3, v5
iput-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
return v2
.end method
.method public read([BII)I
.registers 11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v3, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v2
iget-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v5, v0
add-long/2addr v3, v5
iput-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
return v2
.end method
.method public declared-synchronized reset()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
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
.registers 11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J
move-result-wide v2
iget-wide v4, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long/2addr v6, v0
add-long/2addr v4, v6
iput-wide v4, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J
return-wide v2
.end method