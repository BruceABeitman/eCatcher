.class public final Lcom/fasterxml/jackson/a/c/n;
.super Ljava/io/Writer;
.source "UTF8Writer.java"
.field private final a:Lcom/fasterxml/jackson/a/c/d;
.field private b:Ljava/io/OutputStream;
.field private c:[B
.field private final d:I
.field private e:I
.field private f:I
.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/OutputStream;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
iput-object p1, p0, Lcom/fasterxml/jackson/a/c/n;->a:Lcom/fasterxml/jackson/a/c/d;
iput-object p2, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->f()[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
array-length v0, v0
add-int/lit8 v0, v0, -0x4
iput v0, p0, Lcom/fasterxml/jackson/a/c/n;->d:I
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
return-void
.end method
.method protected static a(I)Ljava/lang/String;
.registers 3
const v0, 0x10ffff
if-le p0, v0, :cond_1f
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal character point (0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") to output; max is 0x10FFFF as per RFC 4627"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1e
return-object v0
:cond_1f
const v0, 0xd800
if-lt p0, v0, :cond_5d
const v0, 0xdbff
if-gt p0, v0, :cond_43
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unmatched first part of surrogate pair (0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1e
:cond_43
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unmatched second part of surrogate pair (0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1e
:cond_5d
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal character point (0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") to output"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1e
.end method
.method private b(I)I
.registers 6
const v3, 0xdc00
iget v0, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
const/4 v1, 0x0
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
if-lt p1, v3, :cond_f
const v1, 0xdfff
if-le p1, v1, :cond_3c
:cond_f
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Broken surrogate pair: first char 0x"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", second 0x"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "; illegal combination"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3c
const/high16 v1, 0x1
const v2, 0xd800
sub-int/2addr v0, v2
shl-int/lit8 v0, v0, 0xa
add-int/2addr v0, v1
sub-int v1, p1, v3
add-int/2addr v0, v1
return v0
.end method
.method private static c(I)V
.registers 3
new-instance v0, Ljava/io/IOException;
invoke-static {p0}, Lcom/fasterxml/jackson/a/c/n;->a(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final append(C)Ljava/io/Writer;
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/n;->write(I)V
return-object p0
.end method
.method public final bridge synthetic append(C)Ljava/lang/Appendable;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/n;->append(C)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public final close()V
.registers 6
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
if-eqz v0, :cond_30
iget v0, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
if-lez v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget v2, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
:cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
iput-object v4, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
if-eqz v1, :cond_24
iput-object v4, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget-object v2, p0, Lcom/fasterxml/jackson/a/c/n;->a:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->b([B)V
:cond_24
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
iget v0, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
iput v3, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
if-lez v0, :cond_30
invoke-static {v0}, Lcom/fasterxml/jackson/a/c/n;->c(I)V
:cond_30
return-void
.end method
.method public final flush()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
if-eqz v0, :cond_19
iget v0, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
if-lez v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget v2, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:cond_19
return-void
.end method
.method public final write(I)V
.registers 6
const/4 v3, 0x0
iget v0, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
if-lez v0, :cond_2a
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/c/n;->b(I)I
move-result p1
:cond_9
iget v0, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
iget v1, p0, Lcom/fasterxml/jackson/a/c/n;->d:I
if-lt v0, v1, :cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget v2, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
:cond_1a
const/16 v0, 0x80
if-ge p1, v0, :cond_3f
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
int-to-byte v2, p1
aput-byte v2, v0, v1
:goto_29
return-void
:cond_2a
const v0, 0xd800
if-lt p1, v0, :cond_9
const v0, 0xdfff
if-gt p1, v0, :cond_9
const v0, 0xdbff
if-le p1, v0, :cond_3c
invoke-static {p1}, Lcom/fasterxml/jackson/a/c/n;->c(I)V
:cond_3c
iput p1, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
goto :goto_29
:cond_3f
iget v0, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
const/16 v1, 0x800
if-ge p1, v1, :cond_5e
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v2, v0, 0x1
shr-int/lit8 v3, p1, 0x6
or-int/lit16 v3, v3, 0xc0
int-to-byte v3, v3
aput-byte v3, v1, v0
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v0, v2, 0x1
and-int/lit8 v3, p1, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
:goto_5b
iput v0, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
goto :goto_29
:cond_5e
const v1, 0xffff
if-gt p1, v1, :cond_87
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v2, v0, 0x1
shr-int/lit8 v3, p1, 0xc
or-int/lit16 v3, v3, 0xe0
int-to-byte v3, v3
aput-byte v3, v1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v1, v2, 0x1
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v0, v2
iget-object v2, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v0, v1, 0x1
and-int/lit8 v3, p1, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v2, v1
goto :goto_5b
:cond_87
const v1, 0x10ffff
if-le p1, v1, :cond_8f
invoke-static {p1}, Lcom/fasterxml/jackson/a/c/n;->c(I)V
:cond_8f
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v2, v0, 0x1
shr-int/lit8 v3, p1, 0x12
or-int/lit16 v3, v3, 0xf0
int-to-byte v3, v3
aput-byte v3, v1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v1, v2, 0x1
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v0, v2
iget-object v0, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v2, v1, 0x1
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v0, v1
iget-object v1, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
add-int/lit8 v0, v2, 0x1
and-int/lit8 v3, p1, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
goto :goto_5b
.end method
.method public final write(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/a/c/n;->write(Ljava/lang/String;II)V
return-void
.end method
.method public final write(Ljava/lang/String;II)V
.registers 14
const/16 v8, 0x80
const/4 v2, 0x0
const/4 v1, 0x2
if-ge p3, v1, :cond_11
const/4 v1, 0x1
if-ne p3, v1, :cond_10
invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/c/n;->write(I)V
:cond_10
:goto_10
return-void
:cond_11
iget v1, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
if-lez v1, :cond_25
add-int/lit8 v0, p2, 0x1
invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C
move-result v1
add-int/lit8 p3, p3, -0x1
invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/c/n;->b(I)I
move-result v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/c/n;->write(I)V
move p2, v0
:cond_25
iget v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
iget-object v5, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget v6, p0, Lcom/fasterxml/jackson/a/c/n;->d:I
add-int/2addr p3, p2
move v0, p2
:goto_2d
if-ge v0, p3, :cond_f0
if-lt v1, v6, :cond_37
iget-object v3, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
invoke-virtual {v3, v5, v2, v1}, Ljava/io/OutputStream;->write([BII)V
move v1, v2
:cond_37
add-int/lit8 p2, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ge v3, v8, :cond_fb
add-int/lit8 v4, v1, 0x1
int-to-byte v3, v3
aput-byte v3, v5, v1
sub-int v3, p3, p2
sub-int v1, v6, v4
if-le v3, v1, :cond_f8
:goto_4a
add-int v7, v1, p2
move v3, v4
move v0, p2
:goto_4e
if-ge v0, v7, :cond_f5
add-int/lit8 p2, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-ge v1, v8, :cond_60
add-int/lit8 v4, v3, 0x1
int-to-byte v1, v1
aput-byte v1, v5, v3
move v3, v4
move v0, p2
goto :goto_4e
:cond_60
move v0, p2
move v9, v3
move v3, v1
move v1, v9
:goto_64
const/16 v4, 0x800
if-ge v3, v4, :cond_7b
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0x6
or-int/lit16 v7, v7, 0xc0
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v1, v4, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v4
goto :goto_2d
:cond_7b
const v4, 0xd800
if-lt v3, v4, :cond_85
const v4, 0xdfff
if-le v3, v4, :cond_a3
:cond_85
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0xc
or-int/lit16 v7, v7, 0xe0
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v7, v4, 0x1
shr-int/lit8 v1, v3, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
aput-byte v1, v5, v4
add-int/lit8 v1, v7, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v7
goto :goto_2d
:cond_a3
const v4, 0xdbff
if-le v3, v4, :cond_ad
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
invoke-static {v3}, Lcom/fasterxml/jackson/a/c/n;->c(I)V
:cond_ad
iput v3, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
if-ge v0, p3, :cond_f0
add-int/lit8 p2, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-direct {p0, v3}, Lcom/fasterxml/jackson/a/c/n;->b(I)I
move-result v3
const v4, 0x10ffff
if-le v3, v4, :cond_c5
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
invoke-static {v3}, Lcom/fasterxml/jackson/a/c/n;->c(I)V
:cond_c5
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0x12
or-int/lit16 v7, v7, 0xf0
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v1, v4, 0x1
shr-int/lit8 v7, v3, 0xc
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v5, v4
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v1, v4, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v4
move v0, p2
goto/16 :goto_2d
:cond_f0
move p2, v0
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
goto/16 :goto_10
:cond_f5
move v1, v3
goto/16 :goto_2d
:cond_f8
move v1, v3
goto/16 :goto_4a
:cond_fb
move v0, p2
goto/16 :goto_64
.end method
.method public final write([C)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/a/c/n;->write([CII)V
return-void
.end method
.method public final write([CII)V
.registers 14
const/16 v8, 0x80
const/4 v2, 0x0
const/4 v1, 0x2
if-ge p3, v1, :cond_f
const/4 v1, 0x1
if-ne p3, v1, :cond_e
aget-char v1, p1, p2
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/c/n;->write(I)V
:goto_e
:cond_e
return-void
:cond_f
iget v1, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
if-lez v1, :cond_21
add-int/lit8 v0, p2, 0x1
aget-char v1, p1, p2
add-int/lit8 p3, p3, -0x1
invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/c/n;->b(I)I
move-result v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/c/n;->write(I)V
move p2, v0
:cond_21
iget v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
iget-object v5, p0, Lcom/fasterxml/jackson/a/c/n;->c:[B
iget v6, p0, Lcom/fasterxml/jackson/a/c/n;->d:I
add-int/2addr p3, p2
move v0, p2
:goto_29
if-ge v0, p3, :cond_e6
if-lt v1, v6, :cond_33
iget-object v3, p0, Lcom/fasterxml/jackson/a/c/n;->b:Ljava/io/OutputStream;
invoke-virtual {v3, v5, v2, v1}, Ljava/io/OutputStream;->write([BII)V
move v1, v2
:cond_33
add-int/lit8 p2, v0, 0x1
aget-char v3, p1, v0
if-ge v3, v8, :cond_f1
add-int/lit8 v4, v1, 0x1
int-to-byte v3, v3
aput-byte v3, v5, v1
sub-int v3, p3, p2
sub-int v1, v6, v4
if-le v3, v1, :cond_ee
:goto_44
add-int v7, v1, p2
move v3, v4
move v0, p2
:goto_48
if-ge v0, v7, :cond_eb
add-int/lit8 p2, v0, 0x1
aget-char v1, p1, v0
if-ge v1, v8, :cond_58
add-int/lit8 v4, v3, 0x1
int-to-byte v1, v1
aput-byte v1, v5, v3
move v3, v4
move v0, p2
goto :goto_48
:cond_58
move v0, p2
move v9, v3
move v3, v1
move v1, v9
:goto_5c
const/16 v4, 0x800
if-ge v3, v4, :cond_73
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0x6
or-int/lit16 v7, v7, 0xc0
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v1, v4, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v4
goto :goto_29
:cond_73
const v4, 0xd800
if-lt v3, v4, :cond_7d
const v4, 0xdfff
if-le v3, v4, :cond_9b
:cond_7d
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0xc
or-int/lit16 v7, v7, 0xe0
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v7, v4, 0x1
shr-int/lit8 v1, v3, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
aput-byte v1, v5, v4
add-int/lit8 v1, v7, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v7
goto :goto_29
:cond_9b
const v4, 0xdbff
if-le v3, v4, :cond_a5
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
invoke-static {v3}, Lcom/fasterxml/jackson/a/c/n;->c(I)V
:cond_a5
iput v3, p0, Lcom/fasterxml/jackson/a/c/n;->f:I
if-ge v0, p3, :cond_e6
add-int/lit8 p2, v0, 0x1
aget-char v3, p1, v0
invoke-direct {p0, v3}, Lcom/fasterxml/jackson/a/c/n;->b(I)I
move-result v3
const v4, 0x10ffff
if-le v3, v4, :cond_bb
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
invoke-static {v3}, Lcom/fasterxml/jackson/a/c/n;->c(I)V
:cond_bb
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0x12
or-int/lit16 v7, v7, 0xf0
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v1, v4, 0x1
shr-int/lit8 v7, v3, 0xc
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v5, v4
add-int/lit8 v4, v1, 0x1
shr-int/lit8 v7, v3, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v5, v1
add-int/lit8 v1, v4, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v4
move v0, p2
goto/16 :goto_29
:cond_e6
move p2, v0
iput v1, p0, Lcom/fasterxml/jackson/a/c/n;->e:I
goto/16 :goto_e
:cond_eb
move v1, v3
goto/16 :goto_29
:cond_ee
move v1, v3
goto/16 :goto_44
:cond_f1
move v0, p2
goto/16 :goto_5c
.end method