.class public Lcom/glympse/android/hal/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"
.implements Lcom/glympse/android/hal/GByteVector;
.field private static final O:I = 0x80
.field private L:[B
.field private M:I
.field private N:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x80
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
new-array v0, v0, [B
iput-object v0, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
return-void
.end method
.method public constructor <init>(I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gez p1, :cond_7
move p1, v0
:cond_7
iput p1, p0, Lcom/glympse/android/hal/ByteVector;->N:I
iget v1, p0, Lcom/glympse/android/hal/ByteVector;->N:I
new-array v1, v1, [B
iput-object v1, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
return-void
.end method
.method public append([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/glympse/android/hal/ByteVector;->appendRange([BII)V
return-void
.end method
.method public appendRange([BII)V
.registers 6
if-eqz p1, :cond_4
if-gtz p3, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
add-int/2addr v0, p3
invoke-virtual {p0, v0}, Lcom/glympse/android/hal/ByteVector;->ensureCapacity(I)V
iget-object v0, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
iget v1, p0, Lcom/glympse/android/hal/ByteVector;->M:I
invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
add-int/2addr v0, p3
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
goto :goto_4
.end method
.method public clearBytes()V
.registers 2
const/16 v0, 0x80
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
new-array v0, v0, [B
iput-object v0, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
return-void
.end method
.method public ensureCapacity(I)V
.registers 6
const/4 v3, 0x0
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
if-le p1, v0, :cond_22
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v0, v0, 0x2
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
if-ge v0, p1, :cond_15
iput p1, p0, Lcom/glympse/android/hal/ByteVector;->N:I
:cond_15
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
new-array v0, v0, [B
iget-object v1, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
iget v2, p0, Lcom/glympse/android/hal/ByteVector;->M:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
:cond_22
return-void
.end method
.method public get(I)B
.registers 3
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
if-gt p1, v0, :cond_6
if-gez p1, :cond_c
:cond_6
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V
throw v0
:cond_c
iget-object v0, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
aget-byte v0, v0, p1
return v0
.end method
.method public getByte(I)B
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
aget-byte v0, v0, p1
return v0
.end method
.method public getBytes()[B
.registers 5
const/4 v3, 0x0
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
new-array v0, v0, [B
iget-object v1, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
iget v2, p0, Lcom/glympse/android/hal/ByteVector;->M:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method public removeFront(I)V
.registers 6
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
sub-int/2addr v0, p1
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
new-array v0, v0, [B
iget-object v1, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
const/4 v2, 0x0
iget v3, p0, Lcom/glympse/android/hal/ByteVector;->N:I
invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->N:I
iput v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
return-void
.end method
.method public size()I
.registers 2
iget v0, p0, Lcom/glympse/android/hal/ByteVector;->M:I
return v0
.end method
.method public stringEncode(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/glympse/android/hal/ByteVector;->stringEncode(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public stringEncode(Ljava/lang/String;Z)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
if-eqz p2, :cond_5a
invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
move-result-object v1
:try_start_b
iget-object v2, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
const/4 v3, 0x0
iget v4, p0, Lcom/glympse/android/hal/ByteVector;->M:I
invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
:try_end_17
.catch Ljava/nio/charset/CharacterCodingException; {:try_start_b .. :try_end_17} :catch_58
move-result-object v1
move-object v2, v1
:goto_19
:try_start_19
new-instance v1, Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
const/4 v4, 0x0
iget v5, p0, Lcom/glympse/android/hal/ByteVector;->M:I
invoke-direct {v1, v3, v4, v5, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
if-eqz p2, :cond_52
const-string v3, "UTF-8"
invoke-static {p1, v3}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_52
const-string v3, "\ufffd"
invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_52
invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v3
invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;
:try_end_3c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_3c} :catch_54
move-result-object v3
:try_start_3d
invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/hal/ByteVector;->L:[B
const/4 v4, 0x0
iget v5, p0, Lcom/glympse/android/hal/ByteVector;->M:I
invoke-static {v3, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I
:try_end_4d
.catch Ljava/nio/charset/CharacterCodingException; {:try_start_3d .. :try_end_4d} :catch_56
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_4d} :catch_54
move-result v2
if-nez v2, :cond_51
move-object v0, v1
:goto_51
:cond_51
return-object v0
:cond_52
move-object v0, v1
goto :goto_51
:catch_54
move-exception v1
goto :goto_51
:catch_56
move-exception v1
goto :goto_51
:catch_58
move-exception v1
goto :goto_51
:cond_5a
move-object v2, v0
goto :goto_19
.end method