.class public Lcom/pinguo/album/data/download/FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "FlushedInputStream.java"
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public skip(J)J
.registers 11
const-wide/16 v3, 0x0
:goto_2
cmp-long v5, v3, p1
if-ltz v5, :cond_7
:cond_6
return-wide v3
:cond_7
iget-object v5, p0, Lcom/pinguo/album/data/download/FlushedInputStream;->in:Ljava/io/InputStream;
sub-long v6, p1, v3
invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J
move-result-wide v1
const-wide/16 v5, 0x0
cmp-long v5, v1, v5
if-nez v5, :cond_1d
invoke-virtual {p0}, Lcom/pinguo/album/data/download/FlushedInputStream;->read()I
move-result v0
if-ltz v0, :cond_6
const-wide/16 v1, 0x1
:cond_1d
add-long/2addr v3, v1
goto :goto_2
.end method