.class public final Lcom/fasterxml/jackson/core/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"
.field static final SURR1_FIRST:I = 0xd800
.field static final SURR1_LAST:I = 0xdbff
.field static final SURR2_FIRST:I = 0xdc00
.field static final SURR2_LAST:I = 0xdfff
.field private final _context:Lcom/fasterxml/jackson/core/io/IOContext;
.field private _out:Ljava/io/OutputStream;
.field private _outBuffer:[B
.field private final _outBufferEnd:I
.field private _outPtr:I
.field private _surrogate:I
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
array-length v0, v0
add-int/lit8 v0, v0, -0x4
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I
iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
return-void
.end method
.method protected static illegalSurrogate(I)V
.registers 3
new-instance v0, Ljava/io/IOException;
invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected static illegalSurrogateDesc(I)Ljava/lang/String;
.registers 3
const v0, 0x10ffff
if-le p0, v0, :cond_23
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal character point (0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") to output; max is 0x10FFFF as per RFC 4627"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_22
return-object v0
:cond_23
const v0, 0xd800
if-lt p0, v0, :cond_69
const v0, 0xdbff
if-gt p0, v0, :cond_4b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unmatched first part of surrogate pair (0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_22
:cond_4b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unmatched second part of surrogate pair (0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_22
:cond_69
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal character point (0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") to output"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_22
.end method
.method public append(C)Ljava/io/Writer;
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V
return-object p0
.end method
.method public bridge synthetic append(C)Ljava/lang/Appendable;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->append(C)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public close()V
.registers 6
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
if-eqz v0, :cond_30
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
if-lez v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
:cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
iput-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
if-eqz v1, :cond_24
iput-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V
:cond_24
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
if-lez v0, :cond_30
invoke-static {v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V
:cond_30
return-void
.end method
.method protected convertSurrogate(I)I
.registers 6
const v3, 0xdc00
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
const/4 v1, 0x0
iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
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
.method public flush()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
if-eqz v0, :cond_19
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
if-lez v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:cond_19
return-void
.end method
.method public write(I)V
.registers 6
const/4 v3, 0x0
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
if-lez v0, :cond_2a
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I
move-result p1
:cond_9
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I
if-lt v0, v1, :cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
:cond_1a
const/16 v0, 0x80
if-ge p1, v0, :cond_3f
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
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
invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V
:cond_3c
iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
goto :goto_29
:cond_3f
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
const/16 v1, 0x800
if-ge p1, v1, :cond_5e
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v2, v0, 0x1
shr-int/lit8 v3, p1, 0x6
or-int/lit16 v3, v3, 0xc0
int-to-byte v3, v3
aput-byte v3, v1, v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v0, v2, 0x1
and-int/lit8 v3, p1, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
:goto_5b
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
goto :goto_29
:cond_5e
const v1, 0xffff
if-gt p1, v1, :cond_87
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v2, v0, 0x1
shr-int/lit8 v3, p1, 0xc
or-int/lit16 v3, v3, 0xe0
int-to-byte v3, v3
aput-byte v3, v1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v1, v2, 0x1
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v0, v2
iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v0, v1, 0x1
and-int/lit8 v3, p1, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v2, v1
goto :goto_5b
:cond_87
const v1, 0x10ffff
if-le p1, v1, :cond_8f
invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V
:cond_8f
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v2, v0, 0x1
shr-int/lit8 v3, p1, 0x12
or-int/lit16 v3, v3, 0xf0
int-to-byte v3, v3
aput-byte v3, v1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v1, v2, 0x1
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v0, v2
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v2, v1, 0x1
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v0, v1
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
add-int/lit8 v0, v2, 0x1
and-int/lit8 v3, p1, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
goto :goto_5b
.end method
.method public write(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(Ljava/lang/String;II)V
return-void
.end method
.method public write(Ljava/lang/String;II)V
.registers 15
const/16 v9, 0x80
const/4 v1, 0x0
const/4 v0, 0x2
if-ge p3, v0, :cond_11
const/4 v0, 0x1
if-ne p3, v0, :cond_10
invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V
:cond_10
:goto_10
return-void
:cond_11
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
if-lez v0, :cond_25
add-int/lit8 v0, p2, 0x1
invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C
move-result v2
add-int/lit8 p3, p3, -0x1
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I
move-result v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V
move p2, v0
:cond_25
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I
add-int v7, p3, p2
move v2, p2
:goto_2e
if-ge v2, v7, :cond_b6
if-lt v0, v6, :cond_38
iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
invoke-virtual {v3, v5, v1, v0}, Ljava/io/OutputStream;->write([BII)V
move v0, v1
:cond_38
add-int/lit8 v3, v2, 0x1
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
if-ge v2, v9, :cond_fc
add-int/lit8 v4, v0, 0x1
int-to-byte v2, v2
aput-byte v2, v5, v0
sub-int v2, v7, v3
sub-int v0, v6, v4
if-le v2, v0, :cond_f9
:goto_4b
add-int v8, v0, v3
move v2, v4
move v0, v3
:goto_4f
if-lt v0, v8, :cond_55
move v10, v2
move v2, v0
move v0, v10
goto :goto_2e
:cond_55
add-int/lit8 v3, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
if-lt v0, v9, :cond_78
move v10, v0
move v0, v2
move v2, v3
move v3, v10
:goto_61
const/16 v4, 0x800
if-ge v3, v4, :cond_80
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v3, 0x6
or-int/lit16 v8, v8, 0xc0
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v0, v4, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v4
goto :goto_2e
:cond_78
add-int/lit8 v4, v2, 0x1
int-to-byte v0, v0
aput-byte v0, v5, v2
move v2, v4
move v0, v3
goto :goto_4f
:cond_80
const v4, 0xd800
if-lt v3, v4, :cond_8a
const v4, 0xdfff
if-le v3, v4, :cond_a8
:cond_8a
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v3, 0xc
or-int/lit16 v8, v8, 0xe0
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v8, v4, 0x1
shr-int/lit8 v0, v3, 0x6
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v5, v4
add-int/lit8 v0, v8, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v8
goto :goto_2e
:cond_a8
const v4, 0xdbff
if-le v3, v4, :cond_b2
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
invoke-static {v3}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V
:cond_b2
iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
if-lt v2, v7, :cond_ba
:cond_b6
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
goto/16 :goto_10
:cond_ba
add-int/lit8 v3, v2, 0x1
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I
move-result v2
const v4, 0x10ffff
if-le v2, v4, :cond_ce
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
invoke-static {v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V
:cond_ce
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v2, 0x12
or-int/lit16 v8, v8, 0xf0
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v0, v4, 0x1
shr-int/lit8 v8, v2, 0xc
and-int/lit8 v8, v8, 0x3f
or-int/lit16 v8, v8, 0x80
int-to-byte v8, v8
aput-byte v8, v5, v4
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v2, 0x6
and-int/lit8 v8, v8, 0x3f
or-int/lit16 v8, v8, 0x80
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v0, v4, 0x1
and-int/lit8 v2, v2, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v5, v4
move v2, v3
goto/16 :goto_2e
:cond_f9
move v0, v2
goto/16 :goto_4b
:cond_fc
move v10, v2
move v2, v3
move v3, v10
goto/16 :goto_61
.end method
.method public write([C)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write([CII)V
return-void
.end method
.method public write([CII)V
.registers 15
const/16 v9, 0x80
const/4 v1, 0x0
const/4 v0, 0x2
if-ge p3, v0, :cond_f
const/4 v0, 0x1
if-ne p3, v0, :cond_e
aget-char v0, p1, p2
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V
:cond_e
:goto_e
return-void
:cond_f
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
if-lez v0, :cond_21
add-int/lit8 v0, p2, 0x1
aget-char v2, p1, p2
add-int/lit8 p3, p3, -0x1
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I
move-result v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V
move p2, v0
:cond_21
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B
iget v6, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I
add-int v7, p3, p2
move v2, p2
:goto_2a
if-ge v2, v7, :cond_ae
if-lt v0, v6, :cond_34
iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;
invoke-virtual {v3, v5, v1, v0}, Ljava/io/OutputStream;->write([BII)V
move v0, v1
:cond_34
add-int/lit8 v3, v2, 0x1
aget-char v2, p1, v2
if-ge v2, v9, :cond_f2
add-int/lit8 v4, v0, 0x1
int-to-byte v2, v2
aput-byte v2, v5, v0
sub-int v2, v7, v3
sub-int v0, v6, v4
if-le v2, v0, :cond_ef
:goto_45
add-int v8, v0, v3
move v2, v4
move v0, v3
:goto_49
if-lt v0, v8, :cond_4f
move v10, v2
move v2, v0
move v0, v10
goto :goto_2a
:cond_4f
add-int/lit8 v3, v0, 0x1
aget-char v0, p1, v0
if-lt v0, v9, :cond_70
move v10, v0
move v0, v2
move v2, v3
move v3, v10
:goto_59
const/16 v4, 0x800
if-ge v3, v4, :cond_78
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v3, 0x6
or-int/lit16 v8, v8, 0xc0
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v0, v4, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v4
goto :goto_2a
:cond_70
add-int/lit8 v4, v2, 0x1
int-to-byte v0, v0
aput-byte v0, v5, v2
move v2, v4
move v0, v3
goto :goto_49
:cond_78
const v4, 0xd800
if-lt v3, v4, :cond_82
const v4, 0xdfff
if-le v3, v4, :cond_a0
:cond_82
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v3, 0xc
or-int/lit16 v8, v8, 0xe0
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v8, v4, 0x1
shr-int/lit8 v0, v3, 0x6
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v5, v4
add-int/lit8 v0, v8, 0x1
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v5, v8
goto :goto_2a
:cond_a0
const v4, 0xdbff
if-le v3, v4, :cond_aa
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
invoke-static {v3}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V
:cond_aa
iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I
if-lt v2, v7, :cond_b2
:cond_ae
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
goto/16 :goto_e
:cond_b2
add-int/lit8 v3, v2, 0x1
aget-char v2, p1, v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I
move-result v2
const v4, 0x10ffff
if-le v2, v4, :cond_c4
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I
invoke-static {v2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V
:cond_c4
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v2, 0x12
or-int/lit16 v8, v8, 0xf0
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v0, v4, 0x1
shr-int/lit8 v8, v2, 0xc
and-int/lit8 v8, v8, 0x3f
or-int/lit16 v8, v8, 0x80
int-to-byte v8, v8
aput-byte v8, v5, v4
add-int/lit8 v4, v0, 0x1
shr-int/lit8 v8, v2, 0x6
and-int/lit8 v8, v8, 0x3f
or-int/lit16 v8, v8, 0x80
int-to-byte v8, v8
aput-byte v8, v5, v0
add-int/lit8 v0, v4, 0x1
and-int/lit8 v2, v2, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v5, v4
move v2, v3
goto/16 :goto_2a
:cond_ef
move v0, v2
goto/16 :goto_45
:cond_f2
move v10, v2
move v2, v3
move v3, v10
goto/16 :goto_59
.end method