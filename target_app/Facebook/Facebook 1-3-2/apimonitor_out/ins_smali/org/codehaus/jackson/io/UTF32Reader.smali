.class public final Lorg/codehaus/jackson/io/UTF32Reader;
.super Lorg/codehaus/jackson/io/BaseReader;
.field final mBigEndian:Z
.field  mByteCount:I
.field  mCharCount:I
.field  mSurrogate:C
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V
.registers 8
const/4 v0, 0x0
invoke-direct/range {p0 .. p5}, Lorg/codehaus/jackson/io/BaseReader;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mSurrogate:C
iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mCharCount:I
iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mByteCount:I
iput-boolean p6, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBigEndian:Z
return-void
.end method
.method private loadMore(I)Z
.registers 9
const/4 v6, 0x4
const/4 v5, 0x1
const/4 v4, 0x0
iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mByteCount:I
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
sub-int/2addr v1, p1
add-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mByteCount:I
if-lez p1, :cond_4f
iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
if-lez v0, :cond_24
move v0, v4
:goto_12
if-ge v0, p1, :cond_22
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
iget-object v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
add-int/2addr v3, v0
aget-byte v2, v2, v3
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_22
iput v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
:cond_24
iput p1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
:goto_26
iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
if-ge v0, v6, :cond_6a
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mIn:Ljava/io/InputStream;
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
array-length v3, v3
iget v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
sub-int/2addr v3, v4
invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
move-result v0
if-ge v0, v5, :cond_49
if-gez v0, :cond_46
invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->freeBuffers()V
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
invoke-direct {p0, v1, v6}, Lorg/codehaus/jackson/io/UTF32Reader;->reportUnexpectedEOF(II)V
:cond_46
invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V
:cond_49
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
add-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
goto :goto_26
:cond_4f
iput v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mIn:Ljava/io/InputStream;
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
move-result v0
if-ge v0, v5, :cond_67
iput v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
if-gez v0, :cond_64
invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->freeBuffers()V
move v0, v4
:goto_63
return v0
:cond_64
invoke-virtual {p0}, Lorg/codehaus/jackson/io/UTF32Reader;->reportStrangeStream()V
:cond_67
iput v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
goto :goto_26
:cond_6a
move v0, v5
goto :goto_63
.end method
.method private reportInvalid(IILjava/lang/String;)V
.registers 9
iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mByteCount:I
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
add-int/2addr v0, v1
const/4 v1, 0x1
sub-int/2addr v0, v1
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mCharCount:I
add-int/2addr v1, p2
new-instance v2, Ljava/io/CharConversionException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Invalid UTF-32 character 0x"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " at char #"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ", byte #"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method private reportUnexpectedEOF(II)V
.registers 8
iget v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mByteCount:I
add-int/2addr v0, p1
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mCharCount:I
new-instance v2, Ljava/io/CharConversionException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", needed "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", at char #"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ", byte #"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public bridge synthetic close()V
.registers 1
invoke-super {p0}, Lorg/codehaus/jackson/io/BaseReader;->close()V
return-void
.end method
.method public bridge synthetic read()I
.registers 2
invoke-super {p0}, Lorg/codehaus/jackson/io/BaseReader;->read()I
move-result v0
return v0
.end method
.method public read([CII)I
.registers 12
const v6, 0x10ffff
const/4 v3, -0x1
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
if-nez v0, :cond_a
move v0, v3
:goto_9
return v0
:cond_a
const/4 v0, 0x1
if-ge p3, v0, :cond_f
move v0, p3
goto :goto_9
:cond_f
if-ltz p2, :cond_16
add-int v0, p2, p3
array-length v1, p1
if-le v0, v1, :cond_19
:cond_16
invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/io/UTF32Reader;->reportBounds([CII)V
:cond_19
add-int v0, p3, p2
iget-char v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mSurrogate:C
if-eqz v1, :cond_a6
add-int/lit8 v1, p2, 0x1
iget-char v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mSurrogate:C
aput-char v2, p1, p2
const/4 v2, 0x0
iput-char v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mSurrogate:C
:goto_28
if-ge v1, v0, :cond_f3
iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
iget-boolean v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBigEndian:Z
if-eqz v3, :cond_b7
iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
aget-byte v3, v3, v2
shl-int/lit8 v3, v3, 0x18
iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
add-int/lit8 v5, v2, 0x1
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x10
or-int/2addr v3, v4
iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
add-int/lit8 v5, v2, 0x2
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x8
or-int/2addr v3, v4
iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
add-int/lit8 v2, v2, 0x3
aget-byte v2, v4, v2
and-int/lit16 v2, v2, 0xff
or-int/2addr v2, v3
:goto_55
iget v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
add-int/lit8 v3, v3, 0x4
iput v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
const v3, 0xffff
if-le v2, v3, :cond_ef
if-le v2, v6, :cond_84
sub-int v3, v1, p2
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "(above "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ") "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v2, v3, v4}, Lorg/codehaus/jackson/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V
:cond_84
const/high16 v3, 0x1
sub-int/2addr v2, v3
add-int/lit8 v3, v1, 0x1
const v4, 0xd800
shr-int/lit8 v5, v2, 0xa
add-int/2addr v4, v5
int-to-char v4, v4
aput-char v4, p1, v1
const v1, 0xdc00
and-int/lit16 v2, v2, 0x3ff
or-int/2addr v1, v2
if-lt v3, v0, :cond_de
int-to-char v0, v1
iput-char v0, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mSurrogate:C
move v0, v3
:goto_9e
sub-int/2addr v0, p2
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mCharCount:I
add-int/2addr v1, v0
iput v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mCharCount:I
goto/16 :goto_9
:cond_a6
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
sub-int/2addr v1, v2
const/4 v2, 0x4
if-ge v1, v2, :cond_f5
invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF32Reader;->loadMore(I)Z
move-result v1
if-nez v1, :cond_f5
move v0, v3
goto/16 :goto_9
:cond_b7
iget-object v3, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
aget-byte v3, v3, v2
and-int/lit16 v3, v3, 0xff
iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
add-int/lit8 v5, v2, 0x1
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x8
or-int/2addr v3, v4
iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
add-int/lit8 v5, v2, 0x2
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x10
or-int/2addr v3, v4
iget-object v4, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mBuffer:[B
add-int/lit8 v2, v2, 0x3
aget-byte v2, v4, v2
shl-int/lit8 v2, v2, 0x18
or-int/2addr v2, v3
goto/16 :goto_55
:cond_de
move v2, v3
:goto_df
add-int/lit8 v3, v2, 0x1
int-to-char v1, v1
aput-char v1, p1, v2
iget v1, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mPtr:I
iget v2, p0, Lorg/codehaus/jackson/io/UTF32Reader;->mLength:I
if-lt v1, v2, :cond_ec
move v0, v3
goto :goto_9e
:cond_ec
move v1, v3
goto/16 :goto_28
:cond_ef
move v7, v2
move v2, v1
move v1, v7
goto :goto_df
:cond_f3
move v0, v1
goto :goto_9e
:cond_f5
move v1, p2
goto/16 :goto_28
.end method