.class abstract Lcom/fasterxml/jackson/a/c/a;
.super Ljava/io/Reader;
.source "BaseReader.java"
.field protected final a:Lcom/fasterxml/jackson/a/c/d;
.field protected b:Ljava/io/InputStream;
.field protected c:[B
.field protected d:I
.field protected e:I
.field protected f:[C
.method protected constructor <init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;[BII)V
.registers 7
invoke-direct {p0}, Ljava/io/Reader;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/c/a;->f:[C
iput-object p1, p0, Lcom/fasterxml/jackson/a/c/a;->a:Lcom/fasterxml/jackson/a/c/d;
iput-object p2, p0, Lcom/fasterxml/jackson/a/c/a;->b:Ljava/io/InputStream;
iput-object p3, p0, Lcom/fasterxml/jackson/a/c/a;->c:[B
iput p4, p0, Lcom/fasterxml/jackson/a/c/a;->d:I
iput p5, p0, Lcom/fasterxml/jackson/a/c/a;->e:I
return-void
.end method
.method protected static a([CII)V
.registers 6
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "read(buf,"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "), cbuf["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
array-length v2, p0
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected static b()V
.registers 2
new-instance v0, Ljava/io/IOException;
const-string v1, "Strange I/O stream, returned 0 bytes on read"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/a;->c:[B
if-eqz v0, :cond_c
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/a/c/a;->c:[B
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/a;->a:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->a([B)V
:cond_c
return-void
.end method
.method public close()V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/a;->b:Ljava/io/InputStream;
if-eqz v0, :cond_d
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/a/c/a;->b:Ljava/io/InputStream;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/c/a;->a()V
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:cond_d
return-void
.end method
.method public read()I
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/a;->f:[C
if-nez v0, :cond_a
new-array v0, v2, [C
iput-object v0, p0, Lcom/fasterxml/jackson/a/c/a;->f:[C
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/a;->f:[C
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/c/a;->read([CII)I
move-result v0
if-gtz v0, :cond_14
const/4 v0, -0x1
:goto_13
return v0
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/a;->f:[C
aget-char v0, v0, v1
goto :goto_13
.end method