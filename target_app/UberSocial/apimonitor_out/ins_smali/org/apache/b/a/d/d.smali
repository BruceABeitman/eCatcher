.class public Lorg/apache/b/a/d/d;
.super Lorg/apache/b/a/d/k;
.source "SourceFile"
.field private final b:J
.method public constructor <init>(Ljava/io/InputStream;J)V
.registers 6
invoke-direct {p0, p1}, Lorg/apache/b/a/d/k;-><init>(Ljava/io/InputStream;)V
const-wide/16 v0, 0x0
cmp-long v0, p2, v0
if-gez v0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Limit may not be negative"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iput-wide p2, p0, Lorg/apache/b/a/d/d;->b:J
return-void
.end method
.method private b()V
.registers 5
iget-wide v0, p0, Lorg/apache/b/a/d/d;->a:J
iget-wide v2, p0, Lorg/apache/b/a/d/d;->b:J
cmp-long v0, v0, v2
if-ltz v0, :cond_10
new-instance v0, Ljava/io/IOException;
const-string v1, "Input stream limit exceeded"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method private c()I
.registers 7
const-wide/32 v0, 0x7fffffff
iget-wide v2, p0, Lorg/apache/b/a/d/d;->b:J
iget-wide v4, p0, Lorg/apache/b/a/d/d;->a:J
sub-long/2addr v2, v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method public read()I
.registers 2
invoke-direct {p0}, Lorg/apache/b/a/d/d;->b()V
invoke-super {p0}, Lorg/apache/b/a/d/k;->read()I
move-result v0
return v0
.end method
.method public read([BII)I
.registers 5
invoke-direct {p0}, Lorg/apache/b/a/d/d;->b()V
invoke-direct {p0}, Lorg/apache/b/a/d/d;->c()I
move-result v0
invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-super {p0, p1, p2, v0}, Lorg/apache/b/a/d/k;->read([BII)I
move-result v0
return v0
.end method
.method public skip(J)J
.registers 5
invoke-direct {p0}, Lorg/apache/b/a/d/d;->b()V
invoke-direct {p0}, Lorg/apache/b/a/d/d;->c()I
move-result v0
int-to-long v0, v0
invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
invoke-super {p0, v0, v1}, Lorg/apache/b/a/d/k;->skip(J)J
move-result-wide v0
return-wide v0
.end method