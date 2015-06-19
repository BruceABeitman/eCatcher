.class public Lorg/apache/commons/io/input/CharSequenceInputStream;
.super Ljava/io/InputStream;
.source "CharSequenceInputStream.java"
.field private final bbuf:Ljava/nio/ByteBuffer;
.field private final cbuf:Ljava/nio/CharBuffer;
.field private final encoder:Ljava/nio/charset/CharsetEncoder;
.field private mark:I
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
.registers 4
const/16 v0, 0x800
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V
.registers 5
invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
.registers 4
const/16 v0, 0x800
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V
.registers 6
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;
move-result-object v0
sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;
invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
move-result-object v0
sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;
invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
move-result-object v0
iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;
invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
move-result-object v0
iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
const/4 v0, -0x1
iput v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I
return-void
.end method
.method private fillBuffer()V
.registers 6
iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;
iget-object v2, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
const/4 v4, 0x1
invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
:cond_19
iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
return-void
.end method
.method public available()I
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I
move-result v0
return v0
.end method
.method public close()V
.registers 1
return-void
.end method
.method public declared-synchronized mark(I)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I
move-result v0
iput v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public markSupported()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public read()I
.registers 2
:cond_0
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
move-result v0
and-int/lit16 v0, v0, 0xff
:goto_10
return v0
:cond_11
invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v0
if-nez v0, :cond_0
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v0
if-nez v0, :cond_0
const/4 v0, -0x1
goto :goto_10
.end method
.method public read([B)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/CharSequenceInputStream;->read([BII)I
move-result v0
return v0
.end method
.method public read([BII)I
.registers 9
const/4 v2, -0x1
if-nez p1, :cond_b
new-instance v2, Ljava/lang/NullPointerException;
const-string v3, "Byte array is null"
invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v2
:cond_b
if-ltz p3, :cond_12
add-int v3, p2, p3
array-length v4, p1
if-le v3, v4, :cond_40
:cond_12
new-instance v2, Ljava/lang/IndexOutOfBoundsException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Array Size="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
array-length v4, p1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", offset="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", length="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v2
:cond_40
if-nez p3, :cond_44
const/4 v2, 0x0
:goto_43
:cond_43
return v2
:cond_44
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v3
if-nez v3, :cond_54
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v3
if-eqz v3, :cond_43
:cond_54
const/4 v0, 0x0
:goto_55
:cond_55
if-lez p3, :cond_85
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v3
if-eqz v3, :cond_72
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I
move-result v3
invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I
move-result v1
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v3, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
add-int/2addr p2, v1
sub-int/2addr p3, v1
add-int/2addr v0, v1
goto :goto_55
:cond_72
invoke-direct {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->fillBuffer()V
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->bbuf:Ljava/nio/ByteBuffer;
invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v3
if-nez v3, :cond_55
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v3
if-nez v3, :cond_55
:cond_85
if-nez v0, :cond_90
iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v3
if-nez v3, :cond_90
move v0, v2
:cond_90
move v2, v0
goto :goto_43
.end method
.method public declared-synchronized reset()V
.registers 3
const/4 v1, -0x1
monitor-enter p0
:try_start_2
iget v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I
if-eq v0, v1, :cond_10
iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
iget v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I
invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;
const/4 v0, -0x1
iput v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->mark:I
:try_end_10
.catchall {:try_start_2 .. :try_end_10} :catchall_12
:cond_10
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method public skip(J)J
.registers 6
const/4 v0, 0x0
:goto_1
const-wide/16 v1, 0x0
cmp-long v1, p1, v1
if-lez v1, :cond_1a
iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceInputStream;->cbuf:Ljava/nio/CharBuffer;
invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C
const-wide/16 v1, 0x1
sub-long/2addr p1, v1
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_1a
int-to-long v1, v0
return-wide v1
.end method