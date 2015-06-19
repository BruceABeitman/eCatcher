.class public Lorg/apache/b/a/d/l;
.super Ljava/io/FilterInputStream;
.source "SourceFile"
.field private a:I
.field private b:I
.field private c:Z
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V
const/4 v0, 0x1
iput v0, p0, Lorg/apache/b/a/d/l;->a:I
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/d/l;->b:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/b/a/d/l;->c:Z
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lorg/apache/b/a/d/l;->a:I
return v0
.end method
.method public b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/b/a/d/l;->c:Z
return-void
.end method
.method public read()I
.registers 4
iget-boolean v0, p0, Lorg/apache/b/a/d/l;->c:Z
if-eqz v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lorg/apache/b/a/d/l;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v0
iget v1, p0, Lorg/apache/b/a/d/l;->b:I
const/16 v2, 0xd
if-ne v1, v2, :cond_1c
const/16 v1, 0xa
if-ne v0, v1, :cond_1c
iget v1, p0, Lorg/apache/b/a/d/l;->a:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/b/a/d/l;->a:I
:cond_1c
iput v0, p0, Lorg/apache/b/a/d/l;->b:I
goto :goto_5
.end method
.method public read([BII)I
.registers 8
iget-boolean v0, p0, Lorg/apache/b/a/d/l;->c:Z
if-eqz v0, :cond_6
const/4 v0, -0x1
:cond_5
return v0
:cond_6
iget-object v0, p0, Lorg/apache/b/a/d/l;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
move v1, p2
:goto_d
add-int v2, p2, v0
if-ge v1, v2, :cond_5
iget v2, p0, Lorg/apache/b/a/d/l;->b:I
const/16 v3, 0xd
if-ne v2, v3, :cond_23
aget-byte v2, p1, v1
const/16 v3, 0xa
if-ne v2, v3, :cond_23
iget v2, p0, Lorg/apache/b/a/d/l;->a:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lorg/apache/b/a/d/l;->a:I
:cond_23
aget-byte v2, p1, v1
iput v2, p0, Lorg/apache/b/a/d/l;->b:I
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method