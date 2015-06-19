.class public final Lorg/codehaus/jackson/io/UTF8Writer;
.super Ljava/io/Writer;
.field static final SURR1_FIRST:I = 0xd800
.field static final SURR1_LAST:I = 0xdbff
.field static final SURR2_FIRST:I = 0xdc00
.field static final SURR2_LAST:I = 0xdfff
.field protected final mContext:Lorg/codehaus/jackson/io/IOContext;
.field  mOut:Ljava/io/OutputStream;
.field  mOutBuffer:[B
.field final mOutBufferLast:I
.field  mOutPtr:I
.field  mSurrogate:I
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
iput-object p1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mContext:Lorg/codehaus/jackson/io/IOContext;
iput-object p2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocWriteIOBuffer()[B
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
array-length v0, v0
const/4 v1, 0x4
sub-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I
iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
return-void
.end method
.method private convertSurrogate(I)I
.registers 6
const v3, 0xdc00
iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
const/4 v1, 0x0
iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
if-lt p1, v3, :cond_f
const v1, 0xdfff
if-le p1, v1, :cond_40
:cond_f
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Broken surrogate pair: first char 0x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
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
:cond_40
const/high16 v1, 0x1
const v2, 0xd800
sub-int/2addr v0, v2
shl-int/lit8 v0, v0, 0xa
add-int/2addr v0, v1
sub-int v1, p1, v3
add-int/2addr v0, v1
return v0
.end method
.method private throwIllegal(I)V
.registers 7
const-string v4, "Illegal character point (0x"
const-string v3, ")"
const v0, 0x10ffff
if-le p1, v0, :cond_2c
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Illegal character point (0x"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
const v0, 0xd800
if-lt p1, v0, :cond_7c
const v0, 0xdbff
if-gt p1, v0, :cond_59
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unmatched first part of surrogate pair (0x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_59
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unmatched second part of surrogate pair (0x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_7c
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Illegal character point (0x"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") to output"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public append(C)Ljava/io/Writer;
.registers 2
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V
return-object p0
.end method
.method public bridge synthetic append(C)Ljava/lang/Appendable;
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->append(C)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public close()V
.registers 6
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
if-eqz v0, :cond_30
iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
if-lez v0, :cond_15
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
:cond_15
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
iput-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
if-eqz v1, :cond_24
iput-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mContext:Lorg/codehaus/jackson/io/IOContext;
invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->releaseWriteIOBuffer([B)V
:cond_24
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
if-lez v0, :cond_30
invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V
:cond_30
return-void
.end method
.method public flush()V
.registers 5
const/4 v3, 0x0
iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
if-lez v0, :cond_10
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
:cond_10
iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public write(I)V
.registers 7
const/4 v4, 0x0
iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
if-lez v0, :cond_2a
invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I
move-result v0
:goto_9
iget v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I
if-lt v1, v2, :cond_1a
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
iput v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
:cond_1a
const/16 v1, 0x80
if-ge v0, v1, :cond_3f
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
int-to-byte v0, v0
aput-byte v0, v1, v2
:goto_29
return-void
:cond_2a
const v0, 0xd800
if-lt p1, v0, :cond_c3
const v0, 0xdfff
if-gt p1, v0, :cond_c3
const v0, 0xdbff
if-le p1, v0, :cond_3c
invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V
:cond_3c
iput p1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
goto :goto_29
:cond_3f
iget v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
const/16 v2, 0x800
if-ge v0, v2, :cond_5f
iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v3, v1, 0x1
shr-int/lit8 v4, v0, 0x6
or-int/lit16 v4, v4, 0xc0
int-to-byte v4, v4
aput-byte v4, v2, v1
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v2, v3, 0x1
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v1, v3
move v0, v2
:goto_5c
iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
goto :goto_29
:cond_5f
const v2, 0xffff
if-gt v0, v2, :cond_89
iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v3, v1, 0x1
shr-int/lit8 v4, v0, 0xc
or-int/lit16 v4, v4, 0xe0
int-to-byte v4, v4
aput-byte v4, v2, v1
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v2, v3, 0x1
shr-int/lit8 v4, v0, 0x6
and-int/lit8 v4, v4, 0x3f
or-int/lit16 v4, v4, 0x80
int-to-byte v4, v4
aput-byte v4, v1, v3
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v3, v2, 0x1
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v1, v2
move v0, v3
goto :goto_5c
:cond_89
const v2, 0x10ffff
if-le v0, v2, :cond_91
invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V
:cond_91
iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v3, v1, 0x1
shr-int/lit8 v4, v0, 0x12
or-int/lit16 v4, v4, 0xf0
int-to-byte v4, v4
aput-byte v4, v2, v1
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v2, v3, 0x1
shr-int/lit8 v4, v0, 0xc
and-int/lit8 v4, v4, 0x3f
or-int/lit16 v4, v4, 0x80
int-to-byte v4, v4
aput-byte v4, v1, v3
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v3, v2, 0x1
shr-int/lit8 v4, v0, 0x6
and-int/lit8 v4, v4, 0x3f
or-int/lit16 v4, v4, 0x80
int-to-byte v4, v4
aput-byte v4, v1, v2
iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
add-int/lit8 v2, v3, 0x1
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v1, v3
move v0, v2
goto :goto_5c
:cond_c3
move v0, p1
goto/16 :goto_9
.end method
.method public write(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(Ljava/lang/String;II)V
return-void
.end method
.method public write(Ljava/lang/String;II)V
.registers 15
const/16 v9, 0x80
const/4 v8, 0x0
const/4 v0, 0x2
if-ge p3, v0, :cond_11
const/4 v0, 0x1
if-ne p3, v0, :cond_10
invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V
:cond_10
:goto_10
return-void
:cond_11
iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
if-lez v0, :cond_105
add-int/lit8 v0, p2, 0x1
invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C
move-result v1
add-int/lit8 v2, p3, -0x1
invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I
move-result v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V
move v1, v0
move v0, v2
:goto_26
iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I
add-int/2addr v0, v1
move v10, v2
move v2, v1
move v1, v10
:goto_30
if-ge v2, v0, :cond_103
if-lt v1, v4, :cond_3a
iget-object v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
invoke-virtual {v5, v3, v8, v1}, Ljava/io/OutputStream;->write([BII)V
move v1, v8
:cond_3a
add-int/lit8 v5, v2, 0x1
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
if-ge v2, v9, :cond_fe
add-int/lit8 v6, v1, 0x1
int-to-byte v2, v2
aput-byte v2, v3, v1
sub-int v1, v0, v5
sub-int v2, v4, v6
if-le v1, v2, :cond_4e
move v1, v2
:cond_4e
add-int/2addr v1, v5
move v2, v6
:goto_50
if-lt v5, v1, :cond_55
move v1, v2
move v2, v5
goto :goto_30
:cond_55
add-int/lit8 v6, v5, 0x1
invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
if-lt v5, v9, :cond_78
move v1, v5
move v5, v6
:goto_5f
const/16 v6, 0x800
if-ge v1, v6, :cond_80
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v1, 0x6
or-int/lit16 v7, v7, 0xc0
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
aput-byte v1, v3, v6
move v1, v2
move v2, v5
goto :goto_30
:cond_78
add-int/lit8 v7, v2, 0x1
int-to-byte v5, v5
aput-byte v5, v3, v2
move v2, v7
move v5, v6
goto :goto_50
:cond_80
const v6, 0xd800
if-lt v1, v6, :cond_8a
const v6, 0xdfff
if-le v1, v6, :cond_aa
:cond_8a
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v1, 0xc
or-int/lit16 v7, v7, 0xe0
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
shr-int/lit8 v7, v1, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v3, v6
add-int/lit8 v6, v2, 0x1
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
aput-byte v1, v3, v2
move v1, v6
move v2, v5
goto :goto_30
:cond_aa
const v6, 0xdbff
if-le v1, v6, :cond_b4
iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V
:cond_b4
iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
if-lt v5, v0, :cond_bd
move v0, v2
:goto_b9
iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
goto/16 :goto_10
:cond_bd
add-int/lit8 v1, v5, 0x1
invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I
move-result v5
const v6, 0x10ffff
if-le v5, v6, :cond_d1
iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V
:cond_d1
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v5, 0x12
or-int/lit16 v7, v7, 0xf0
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
shr-int/lit8 v7, v5, 0xc
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v3, v6
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v5, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
and-int/lit8 v5, v5, 0x3f
or-int/lit16 v5, v5, 0x80
int-to-byte v5, v5
aput-byte v5, v3, v6
move v10, v2
move v2, v1
move v1, v10
goto/16 :goto_30
:cond_fe
move v10, v2
move v2, v1
move v1, v10
goto/16 :goto_5f
:cond_103
move v0, v1
goto :goto_b9
:cond_105
move v0, p3
move v1, p2
goto/16 :goto_26
.end method
.method public write([C)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write([CII)V
return-void
.end method
.method public write([CII)V
.registers 15
const/16 v9, 0x80
const/4 v8, 0x0
const/4 v0, 0x2
if-ge p3, v0, :cond_f
const/4 v0, 0x1
if-ne p3, v0, :cond_e
aget-char v0, p1, p2
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V
:cond_e
:goto_e
return-void
:cond_f
iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
if-lez v0, :cond_fb
add-int/lit8 v0, p2, 0x1
aget-char v1, p1, p2
add-int/lit8 v2, p3, -0x1
invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I
move-result v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V
move v1, v0
move v0, v2
:goto_22
iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBuffer:[B
iget v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutBufferLast:I
add-int/2addr v0, v1
move v10, v2
move v2, v1
move v1, v10
:goto_2c
if-ge v2, v0, :cond_f9
if-lt v1, v4, :cond_36
iget-object v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOut:Ljava/io/OutputStream;
invoke-virtual {v5, v3, v8, v1}, Ljava/io/OutputStream;->write([BII)V
move v1, v8
:cond_36
add-int/lit8 v5, v2, 0x1
aget-char v2, p1, v2
if-ge v2, v9, :cond_f4
add-int/lit8 v6, v1, 0x1
int-to-byte v2, v2
aput-byte v2, v3, v1
sub-int v1, v0, v5
sub-int v2, v4, v6
if-le v1, v2, :cond_48
move v1, v2
:cond_48
add-int/2addr v1, v5
move v2, v6
:goto_4a
if-lt v5, v1, :cond_4f
move v1, v2
move v2, v5
goto :goto_2c
:cond_4f
add-int/lit8 v6, v5, 0x1
aget-char v5, p1, v5
if-lt v5, v9, :cond_70
move v1, v5
move v5, v6
:goto_57
const/16 v6, 0x800
if-ge v1, v6, :cond_78
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v1, 0x6
or-int/lit16 v7, v7, 0xc0
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
aput-byte v1, v3, v6
move v1, v2
move v2, v5
goto :goto_2c
:cond_70
add-int/lit8 v7, v2, 0x1
int-to-byte v5, v5
aput-byte v5, v3, v2
move v2, v7
move v5, v6
goto :goto_4a
:cond_78
const v6, 0xd800
if-lt v1, v6, :cond_82
const v6, 0xdfff
if-le v1, v6, :cond_a2
:cond_82
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v1, 0xc
or-int/lit16 v7, v7, 0xe0
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
shr-int/lit8 v7, v1, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v3, v6
add-int/lit8 v6, v2, 0x1
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
aput-byte v1, v3, v2
move v1, v6
move v2, v5
goto :goto_2c
:cond_a2
const v6, 0xdbff
if-le v1, v6, :cond_ac
iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V
:cond_ac
iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mSurrogate:I
if-lt v5, v0, :cond_b5
move v0, v2
:goto_b1
iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
goto/16 :goto_e
:cond_b5
add-int/lit8 v1, v5, 0x1
aget-char v5, p1, v5
invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->convertSurrogate(I)I
move-result v5
const v6, 0x10ffff
if-le v5, v6, :cond_c7
iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->mOutPtr:I
invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->throwIllegal(I)V
:cond_c7
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v5, 0x12
or-int/lit16 v7, v7, 0xf0
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
shr-int/lit8 v7, v5, 0xc
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v3, v6
add-int/lit8 v6, v2, 0x1
shr-int/lit8 v7, v5, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v6, 0x1
and-int/lit8 v5, v5, 0x3f
or-int/lit16 v5, v5, 0x80
int-to-byte v5, v5
aput-byte v5, v3, v6
move v10, v2
move v2, v1
move v1, v10
goto/16 :goto_2c
:cond_f4
move v10, v2
move v2, v1
move v1, v10
goto/16 :goto_57
:cond_f9
move v0, v1
goto :goto_b1
:cond_fb
move v0, p3
move v1, p2
goto/16 :goto_22
.end method