.class public final Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x3c7eae24203b8ca4L
.field private buffer:[B
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
new-array v0, p1, [B
iput-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
return-void
.end method
.method private expand(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
array-length v0, v0
shl-int/lit8 v0, v0, 0x1
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v0
new-array v0, v0, [B
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
return-void
.end method
.method public final append(I)V
.registers 6
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
array-length v1, v1
if-le v0, v1, :cond_c
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V
:cond_c
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
int-to-byte v3, p1
aput-byte v3, v1, v2
iput v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
return-void
.end method
.method public final append(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;II)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer()[C
move-result-object v0
invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([CII)V
goto :goto_2
.end method
.method public final append([BII)V
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
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
add-int/2addr v0, p3
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
array-length v1, v1
if-le v0, v1, :cond_4a
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V
:cond_4a
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
goto :goto_2
.end method
.method public final append([CII)V
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
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
add-int v1, v0, p3
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
array-length v2, v2
if-le v1, v2, :cond_4b
invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V
:goto_4b
:cond_4b
if-ge v0, v1, :cond_59
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
aget-char v3, p1, p2
int-to-byte v3, v3
aput-byte v3, v2, v0
add-int/lit8 p2, p2, 0x1
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_59
iput v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
goto :goto_2
.end method
.method public final buffer()[B
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
return-object v0
.end method
.method public final byteAt(I)I
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
aget-byte v0, v0, p1
return v0
.end method
.method public final capacity()I
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
array-length v0, v0
return v0
.end method
.method public final clear()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
return-void
.end method
.method public final ensureCapacity(I)V
.registers 4
if-gtz p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
array-length v0, v0
iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
sub-int/2addr v0, v1
if-le p1, v0, :cond_2
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
add-int/2addr v0, p1
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->expand(I)V
goto :goto_2
.end method
.method public final indexOf(B)I
.registers 4
const/4 v0, 0x0
iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->indexOf(BII)I
move-result v0
return v0
.end method
.method public final indexOf(BII)I
.registers 7
const/4 v0, -0x1
if-gez p2, :cond_4
const/4 p2, 0x0
:cond_4
iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
if-le p3, v1, :cond_a
iget p3, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
:cond_a
if-le p2, p3, :cond_19
:cond_c
:goto_c
return v0
:cond_d
add-int/lit8 v1, v1, 0x1
:goto_f
if-ge v1, p3, :cond_c
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
aget-byte v2, v2, v1
if-ne v2, p1, :cond_d
move v0, v1
goto :goto_c
:cond_19
move v1, p2
goto :goto_f
.end method
.method public final isEmpty()Z
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
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
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
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
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
return v0
.end method
.method public final setLength(I)V
.registers 5
if-ltz p1, :cond_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
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
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
array-length v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iput p1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
return-void
.end method
.method public final toByteArray()[B
.registers 5
const/4 v3, 0x0
iget v0, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
new-array v0, v0, [B
iget v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
if-lez v1, :cond_10
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->buffer:[B
iget v2, p0, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->len:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_10
return-object v0
.end method