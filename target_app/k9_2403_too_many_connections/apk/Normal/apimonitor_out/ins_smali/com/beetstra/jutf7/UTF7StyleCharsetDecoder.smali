.class  Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF7StyleCharsetDecoder.java"
.field private final base64:Lcom/beetstra/jutf7/Base64Util;
.field private base64mode:Z
.field private bitsRead:I
.field private justShifted:Z
.field private justUnshifted:Z
.field private final shift:B
.field private final strict:Z
.field private tempChar:I
.field private final unshift:B
.method constructor <init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
.registers 6
const v0, 0x3f19999a
const/high16 v1, 0x3f80
invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V
iput-object p2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;
iput-boolean p3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z
invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->shift()B
move-result v0
iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B
invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->unshift()B
move-result v0
iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B
return-void
.end method
.method private base64bitsWaiting()Z
.registers 3
iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
if-nez v0, :cond_9
iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
const/4 v1, 0x6
if-lt v0, v1, :cond_b
:cond_9
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method private handleBase64(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;B)Ljava/nio/charset/CoderResult;
.registers 9
const/16 v4, 0x10
const/4 v0, 0x0
iget-object v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64:Lcom/beetstra/jutf7/Base64Util;
invoke-virtual {v2, p3}, Lcom/beetstra/jutf7/Base64Util;->getSextet(B)I
move-result v1
if-ltz v1, :cond_43
iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
add-int/lit8 v2, v2, 0x6
iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
if-ge v2, v4, :cond_22
iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
iget v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
sub-int v3, v4, v3
shl-int v3, v1, v3
add-int/2addr v2, v3
iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
:goto_20
move-object v2, v0
:goto_21
return-object v2
:cond_22
iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
sub-int/2addr v2, v4
iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
iget v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
shr-int v3, v1, v3
add-int/2addr v2, v3
iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
sub-int v2, v4, v2
shl-int v2, v1, v2
const v3, 0xffff
and-int/2addr v2, v3
iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
goto :goto_20
:cond_43
iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z
if-eqz v2, :cond_4c
invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
move-result-object v2
goto :goto_21
:cond_4c
int-to-char v2, p3
invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z
move-result v2
if-eqz v2, :cond_5a
invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
move-result-object v0
:cond_5a
invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V
goto :goto_20
.end method
.method private malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.registers 4
const/4 v1, 0x1
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v0
sub-int/2addr v0, v1
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
move-result-object v0
return-object v0
.end method
.method private overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.registers 4
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v0
const/4 v1, 0x1
sub-int/2addr v0, v1
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
return-object v0
.end method
.method private setUnshifted()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z
iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->bitsRead:I
iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->tempChar:I
return-void
.end method
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
:goto_2
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v2
if-eqz v2, :cond_78
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B
move-result v0
iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z
if-eqz v2, :cond_50
iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->unshift:B
if-ne v0, v2, :cond_3d
invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z
move-result v2
if-eqz v2, :cond_1f
invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
move-result-object v2
:goto_1e
return-object v2
:cond_1f
iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z
if-eqz v2, :cond_3a
invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v2
if-nez v2, :cond_2e
invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
move-result-object v2
goto :goto_1e
:cond_2e
iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
:goto_34
invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V
:cond_37
iput-boolean v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z
goto :goto_2
:cond_3a
iput-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z
goto :goto_34
:cond_3d
invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v2
if-nez v2, :cond_48
invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
move-result-object v2
goto :goto_1e
:cond_48
invoke-direct {p0, p1, p2, v0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->handleBase64(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;B)Ljava/nio/charset/CoderResult;
move-result-object v1
if-eqz v1, :cond_37
move-object v2, v1
goto :goto_1e
:cond_50
iget-byte v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->shift:B
if-ne v0, v2, :cond_66
iput-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z
iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z
if-eqz v2, :cond_63
iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z
if-eqz v2, :cond_63
invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->malformed(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
move-result-object v2
goto :goto_1e
:cond_63
iput-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justShifted:Z
goto :goto_2
:cond_66
invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z
move-result v2
if-nez v2, :cond_71
invoke-direct {p0, p1}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->overflow(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
move-result-object v2
goto :goto_1e
:cond_71
int-to-char v2, v0
invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
iput-boolean v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z
goto :goto_2
:cond_78
sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
goto :goto_1e
.end method
.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.registers 3
iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64mode:Z
if-eqz v0, :cond_8
iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->strict:Z
if-nez v0, :cond_e
:cond_8
invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->base64bitsWaiting()Z
move-result v0
if-eqz v0, :cond_14
:cond_e
const/4 v0, 0x1
invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
move-result-object v0
:goto_13
return-object v0
:cond_14
sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
goto :goto_13
.end method
.method protected implReset()V
.registers 2
invoke-direct {p0}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->setUnshifted()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;->justUnshifted:Z
return-void
.end method