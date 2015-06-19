.class public final Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x562aa19b667920bfL
.field private buffer:[C
.field private len:I
.method public constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Buffer capacity may not be negative"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
new-array v0, p1, [C
iput-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
return-void
.end method
.method private expand(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v0, v0
shl-int/lit8 v0, v0, 0x1
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v0
new-array v0, v0, [C
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
return-void
.end method
.method public final append(C)V
.registers 5
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v1, v1
if-le v0, v1, :cond_c
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V
:cond_c
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
aput-char p1, v1, v2
iput v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
return-void
.end method
.method public final append(Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;II)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer()[B
move-result-object v0
invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([BII)V
goto :goto_2
.end method
.method public final append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
const/4 v1, 0x0
iget v2, p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([CII)V
goto :goto_2
.end method
.method public final append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([CII)V
goto :goto_2
.end method
.method public final append(Ljava/lang/Object;)V
.registers 3
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V
return-void
.end method
.method public final append(Ljava/lang/String;)V
.registers 7
if-nez p1, :cond_4
const-string p1, "null"
:cond_4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
add-int/2addr v1, v0
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v2, v2
if-le v1, v2, :cond_13
invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V
:cond_13
const/4 v2, 0x0
iget-object v3, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
iget v4, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V
iput v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
return-void
.end method
.method public final append([BII)V
.registers 8
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
if-ltz p2, :cond_13
array-length v0, p1
if-gt p2, v0, :cond_13
if-ltz p3, :cond_13
add-int v0, p2, p3
if-ltz v0, :cond_13
add-int v0, p2, p3
array-length v1, p1
if-le v0, v1, :cond_3d
:cond_13
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "off: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " len: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " b.length: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
array-length v2, p1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3d
if-eqz p3, :cond_2
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
add-int v1, v0, p3
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v2, v2
if-le v1, v2, :cond_4b
invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V
:goto_4b
:cond_4b
if-ge v0, v1, :cond_5b
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
aget-byte v3, p1, p2
and-int/lit16 v3, v3, 0xff
int-to-char v3, v3
aput-char v3, v2, v0
add-int/lit8 p2, p2, 0x1
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_5b
iput v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
goto :goto_2
.end method
.method public final append([CII)V
.registers 7
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
if-ltz p2, :cond_13
array-length v0, p1
if-gt p2, v0, :cond_13
if-ltz p3, :cond_13
add-int v0, p2, p3
if-ltz v0, :cond_13
add-int v0, p2, p3
array-length v1, p1
if-le v0, v1, :cond_3d
:cond_13
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "off: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " len: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " b.length: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
array-length v2, p1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3d
if-eqz p3, :cond_2
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
add-int/2addr v0, p3
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v1, v1
if-le v0, v1, :cond_4a
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V
:cond_4a
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
goto :goto_2
.end method
.method public final buffer()[C
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
return-object v0
.end method
.method public final capacity()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v0, v0
return v0
.end method
.method public final charAt(I)C
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
aget-char v0, v0, p1
return v0
.end method
.method public final clear()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
return-void
.end method
.method public final ensureCapacity(I)V
.registers 4
if-gtz p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v0, v0
iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
sub-int/2addr v0, v1
if-le p1, v0, :cond_2
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
add-int/2addr v0, p1
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->expand(I)V
goto :goto_2
.end method
.method public final indexOf(I)I
.registers 4
const/4 v0, 0x0
iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->indexOf(III)I
move-result v0
return v0
.end method
.method public final indexOf(III)I
.registers 7
const/4 v0, -0x1
if-gez p2, :cond_4
const/4 p2, 0x0
:cond_4
iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
if-le p3, v1, :cond_a
iget p3, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
:cond_a
if-le p2, p3, :cond_19
:cond_c
:goto_c
return v0
:cond_d
add-int/lit8 v1, v1, 0x1
:goto_f
if-ge v1, p3, :cond_c
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
aget-char v2, v2, v1
if-ne v2, p1, :cond_d
move v0, v1
goto :goto_c
:cond_19
move v1, p2
goto :goto_f
.end method
.method public final isEmpty()Z
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final isFull()Z
.registers 3
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v1, v1
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final length()I
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
return v0
.end method
.method public final setLength(I)V
.registers 5
if-ltz p1, :cond_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v0, v0
if-le p1, v0, :cond_29
:cond_7
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "len: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " < 0 or > buffer len: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
array-length v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iput p1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
return-void
.end method
.method public final substring(II)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
sub-int v2, p2, p1
invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V
return-object v0
.end method
.method public final substringTrimmed(II)Ljava/lang/String;
.registers 6
if-gez p1, :cond_17
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Negative beginIndex: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
if-le p2, v0, :cond_3c
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "endIndex: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " > length: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3c
if-le p1, p2, :cond_5d
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "beginIndex: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " > endIndex: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:goto_5d
:cond_5d
if-ge p1, p2, :cond_6c
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
aget-char v0, v0, p1
invoke-static {v0}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v0
if-eqz v0, :cond_6c
add-int/lit8 p1, p1, 0x1
goto :goto_5d
:goto_6c
:cond_6c
if-le p2, p1, :cond_7d
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
add-int/lit8 v1, p2, -0x1
aget-char v0, v0, v1
invoke-static {v0}, Lch/boye/httpclientandroidlib/protocol/HTTP;->isWhitespace(C)Z
move-result v0
if-eqz v0, :cond_7d
add-int/lit8 p2, p2, -0x1
goto :goto_6c
:cond_7d
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
sub-int v2, p2, p1
invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V
return-object v0
.end method
.method public final toCharArray()[C
.registers 5
const/4 v3, 0x0
iget v0, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
new-array v0, v0, [C
iget v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
if-lez v1, :cond_10
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
iget v2, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_10
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/String;
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer:[C
const/4 v2, 0x0
iget v3, p0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->len:I
invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
return-object v0
.end method