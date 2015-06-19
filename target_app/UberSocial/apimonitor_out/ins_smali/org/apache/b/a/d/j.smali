.class public Lorg/apache/b/a/d/j;
.super Lorg/apache/b/a/d/k;
.source "SourceFile"
.field private final b:J
.method public constructor <init>(Ljava/io/InputStream;JJ)V
.registers 8
invoke-direct {p0, p1}, Lorg/apache/b/a/d/k;-><init>(Ljava/io/InputStream;)V
invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J
add-long v0, p2, p4
iput-wide v0, p0, Lorg/apache/b/a/d/j;->b:J
return-void
.end method
.method private b()I
.registers 7
const-wide/32 v0, 0x7fffffff
iget-wide v2, p0, Lorg/apache/b/a/d/j;->b:J
iget-wide v4, p0, Lorg/apache/b/a/d/j;->a:J
sub-long/2addr v2, v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method public available()I
.registers 3
invoke-super {p0}, Lorg/apache/b/a/d/k;->available()I
move-result v0
invoke-direct {p0}, Lorg/apache/b/a/d/j;->b()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method
.method public read()I
.registers 5
iget-wide v0, p0, Lorg/apache/b/a/d/j;->b:J
iget-wide v2, p0, Lorg/apache/b/a/d/j;->a:J
cmp-long v0, v0, v2
if-lez v0, :cond_d
invoke-super {p0}, Lorg/apache/b/a/d/k;->read()I
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, -0x1
goto :goto_c
.end method
.method public read([BII)I
.registers 5
invoke-direct {p0}, Lorg/apache/b/a/d/j;->b()I
move-result v0
invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-super {p0, p1, p2, v0}, Lorg/apache/b/a/d/k;->read([BII)I
move-result v0
return v0
.end method
.method public skip(J)J
.registers 5
invoke-direct {p0}, Lorg/apache/b/a/d/j;->b()I
move-result v0
int-to-long v0, v0
invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
invoke-super {p0, v0, v1}, Lorg/apache/b/a/d/k;->skip(J)J
move-result-wide v0
return-wide v0
.end method