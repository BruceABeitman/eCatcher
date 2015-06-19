.class public Lorg/apache/b/a/d/f;
.super Lorg/apache/b/a/d/e;
.source "SourceFile"
.field private final a:Lorg/apache/b/a/d/e;
.field private final b:I
.field private c:Z
.field private d:Z
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, -0x1
invoke-direct {p0, p1, v0}, Lorg/apache/b/a/d/f;-><init>(Ljava/io/InputStream;I)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1}, Lorg/apache/b/a/d/e;-><init>(Ljava/io/InputStream;)V
iput-boolean v0, p0, Lorg/apache/b/a/d/f;->c:Z
iput-boolean v0, p0, Lorg/apache/b/a/d/f;->d:Z
instance-of v0, p1, Lorg/apache/b/a/d/e;
if-eqz v0, :cond_13
check-cast p1, Lorg/apache/b/a/d/e;
iput-object p1, p0, Lorg/apache/b/a/d/f;->a:Lorg/apache/b/a/d/e;
:goto_10
iput p2, p0, Lorg/apache/b/a/d/f;->b:I
return-void
:cond_13
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/d/f;->a:Lorg/apache/b/a/d/e;
goto :goto_10
.end method
.method private b(Lorg/apache/b/a/g/a;)I
.registers 7
const/4 v1, -0x1
const/4 v0, 0x0
:cond_2
iget-object v2, p0, Lorg/apache/b/a/d/f;->in:Ljava/io/InputStream;
invoke-virtual {v2}, Ljava/io/InputStream;->read()I
move-result v2
if-eq v2, v1, :cond_27
invoke-virtual {p1, v2}, Lorg/apache/b/a/g/a;->a(I)V
add-int/lit8 v0, v0, 0x1
iget v3, p0, Lorg/apache/b/a/d/f;->b:I
if-lez v3, :cond_23
invoke-virtual {p1}, Lorg/apache/b/a/g/a;->d()I
move-result v3
iget v4, p0, Lorg/apache/b/a/d/f;->b:I
if-lt v3, v4, :cond_23
new-instance v0, Lorg/apache/b/a/d/h;
const-string v1, "Maximum line length limit exceeded"
invoke-direct {v0, v1}, Lorg/apache/b/a/d/h;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
const/16 v3, 0xa
if-ne v2, v3, :cond_2
:cond_27
if-nez v0, :cond_2c
if-ne v2, v1, :cond_2c
move v0, v1
:cond_2c
return v0
.end method
.method public a(Lorg/apache/b/a/g/a;)I
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Lorg/apache/b/a/d/f;->a:Lorg/apache/b/a/d/e;
if-eqz v0, :cond_15
iget-object v0, p0, Lorg/apache/b/a/d/f;->a:Lorg/apache/b/a/d/e;
invoke-virtual {v0, p1}, Lorg/apache/b/a/d/e;->a(Lorg/apache/b/a/g/a;)I
move-result v0
move v2, v0
:goto_c
const/4 v0, -0x1
if-ne v2, v0, :cond_1b
move v0, v1
:goto_10
iput-boolean v0, p0, Lorg/apache/b/a/d/f;->d:Z
iput-boolean v1, p0, Lorg/apache/b/a/d/f;->c:Z
return v2
:cond_15
invoke-direct {p0, p1}, Lorg/apache/b/a/d/f;->b(Lorg/apache/b/a/g/a;)I
move-result v0
move v2, v0
goto :goto_c
:cond_1b
const/4 v0, 0x0
goto :goto_10
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/b/a/d/f;->d:Z
return v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/b/a/d/f;->c:Z
return v0
.end method
.method public read()I
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lorg/apache/b/a/d/f;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v2
const/4 v0, -0x1
if-ne v2, v0, :cond_10
move v0, v1
:goto_b
iput-boolean v0, p0, Lorg/apache/b/a/d/f;->d:Z
iput-boolean v1, p0, Lorg/apache/b/a/d/f;->c:Z
return v2
:cond_10
const/4 v0, 0x0
goto :goto_b
.end method
.method public read([BII)I
.registers 7
const/4 v1, 0x1
iget-object v0, p0, Lorg/apache/b/a/d/f;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v2
const/4 v0, -0x1
if-ne v2, v0, :cond_10
move v0, v1
:goto_b
iput-boolean v0, p0, Lorg/apache/b/a/d/f;->d:Z
iput-boolean v1, p0, Lorg/apache/b/a/d/f;->c:Z
return v2
:cond_10
const/4 v0, 0x0
goto :goto_b
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "[LineReaderInputStreamAdaptor: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget-object v1, p0, Lorg/apache/b/a/d/f;->a:Lorg/apache/b/a/d/e;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method