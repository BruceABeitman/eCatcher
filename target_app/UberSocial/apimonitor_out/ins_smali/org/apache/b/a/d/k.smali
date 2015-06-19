.class public Lorg/apache/b/a/d/k;
.super Ljava/io/FilterInputStream;
.source "SourceFile"
.field protected a:J
.field private b:J
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
const-wide/16 v0, 0x0
invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V
iput-wide v0, p0, Lorg/apache/b/a/d/k;->a:J
iput-wide v0, p0, Lorg/apache/b/a/d/k;->b:J
return-void
.end method
.method public a()J
.registers 3
iget-wide v0, p0, Lorg/apache/b/a/d/k;->a:J
return-wide v0
.end method
.method public available()I
.registers 2
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v0
return v0
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method
.method public mark(I)V
.registers 4
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
iget-wide v0, p0, Lorg/apache/b/a/d/k;->a:J
iput-wide v0, p0, Lorg/apache/b/a/d/k;->b:J
return-void
.end method
.method public markSupported()Z
.registers 2
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z
move-result v0
return v0
.end method
.method public read()I
.registers 6
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_10
iget-wide v1, p0, Lorg/apache/b/a/d/k;->a:J
const-wide/16 v3, 0x1
add-long/2addr v1, v3
iput-wide v1, p0, Lorg/apache/b/a/d/k;->a:J
:cond_10
return v0
.end method
.method public read([BII)I
.registers 9
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
if-lez v0, :cond_e
iget-wide v1, p0, Lorg/apache/b/a/d/k;->a:J
int-to-long v3, v0
add-long/2addr v1, v3
iput-wide v1, p0, Lorg/apache/b/a/d/k;->a:J
:cond_e
return v0
.end method
.method public reset()V
.registers 3
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
iget-wide v0, p0, Lorg/apache/b/a/d/k;->b:J
iput-wide v0, p0, Lorg/apache/b/a/d/k;->a:J
return-void
.end method
.method public skip(J)J
.registers 7
iget-object v0, p0, Lorg/apache/b/a/d/k;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-lez v2, :cond_11
iget-wide v2, p0, Lorg/apache/b/a/d/k;->a:J
add-long/2addr v2, v0
iput-wide v2, p0, Lorg/apache/b/a/d/k;->a:J
:cond_11
return-wide v0
.end method