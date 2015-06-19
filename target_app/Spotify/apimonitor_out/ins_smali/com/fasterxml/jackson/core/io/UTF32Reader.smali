.class public Lcom/fasterxml/jackson/core/io/UTF32Reader;
.super Lcom/fasterxml/jackson/core/io/BaseReader;
.source "SourceFile"
.field protected final _bigEndian:Z
.field protected _byteCount:I
.field protected _charCount:I
.field protected final _managedBuffers:Z
.field protected _surrogate:C
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
.registers 8
const/4 v0, 0x0
invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/core/io/BaseReader;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I
iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z
if-eqz p2, :cond_f
const/4 v0, 0x1
:cond_f
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z
return-void
.end method
.method private loadMore(I)Z
.registers 9
const/4 v6, 0x4
const/4 v1, -0x1
const/4 v0, 0x0
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I
iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
sub-int/2addr v3, p1
add-int/2addr v2, v3
iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I
if-lez p1, :cond_48
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
if-lez v2, :cond_24
move v2, v0
:goto_12
if-ge v2, p1, :cond_22
iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
add-int/2addr v5, v2
aget-byte v4, v4, v5
aput-byte v4, v3, v2
add-int/lit8 v2, v2, 0x1
goto :goto_12
:cond_22
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
:cond_24
iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
:goto_26
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
if-ge v0, v6, :cond_7d
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;
if-nez v0, :cond_6c
move v0, v1
:goto_2f
if-gtz v0, :cond_42
if-gez v0, :cond_3f
iget-boolean v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z
if-eqz v2, :cond_3a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V
:cond_3a
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
invoke-direct {p0, v2, v6}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V
:cond_3f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V
:cond_42
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
add-int/2addr v0, v2
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
goto :goto_26
:cond_48
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;
if-nez v2, :cond_5d
move v2, v1
:goto_4f
if-gtz v2, :cond_69
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
if-gez v2, :cond_66
iget-boolean v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z
if-eqz v1, :cond_5c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V
:goto_5c
:cond_5c
return v0
:cond_5d
iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;
iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
move-result v2
goto :goto_4f
:cond_66
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V
:cond_69
iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
goto :goto_26
:cond_6c
iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;
iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
array-length v4, v4
iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
sub-int/2addr v4, v5
invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
move-result v0
goto :goto_2f
:cond_7d
const/4 v0, 0x1
goto :goto_5c
.end method
.method private reportInvalid(IILjava/lang/String;)V
.registers 9
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I
add-int/2addr v1, p2
new-instance v2, Ljava/io/CharConversionException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Invalid UTF-32 character 0x"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
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
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I
add-int/2addr v0, p1
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I
new-instance v2, Ljava/io/CharConversionException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
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
invoke-super {p0}, Lcom/fasterxml/jackson/core/io/BaseReader;->close()V
return-void
.end method
.method public bridge synthetic read()I
.registers 2
invoke-super {p0}, Lcom/fasterxml/jackson/core/io/BaseReader;->read()I
move-result v0
return v0
.end method
.method public read([CII)I
.registers 11
const v6, 0x10ffff
const/4 v0, -0x1
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
if-nez v1, :cond_a
move p3, v0
:goto_9
:cond_9
return p3
:cond_a
if-lez p3, :cond_9
if-ltz p2, :cond_13
add-int v1, p2, p3
array-length v2, p1
if-le v1, v2, :cond_16
:cond_13
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportBounds([CII)V
:cond_16
add-int v3, p3, p2
iget-char v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C
if-eqz v1, :cond_9f
add-int/lit8 v2, p2, 0x1
iget-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C
aput-char v0, p1, p2
const/4 v0, 0x0
iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C
:goto_25
:cond_25
if-ge v2, v3, :cond_e3
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
iget-boolean v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z
if-eqz v1, :cond_b0
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
aget-byte v1, v1, v0
shl-int/lit8 v1, v1, 0x18
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
add-int/lit8 v5, v0, 0x1
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x10
or-int/2addr v1, v4
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
add-int/lit8 v5, v0, 0x2
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x8
or-int/2addr v1, v4
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
add-int/lit8 v0, v0, 0x3
aget-byte v0, v4, v0
and-int/lit16 v0, v0, 0xff
or-int/2addr v0, v1
:goto_52
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
add-int/lit8 v1, v1, 0x4
iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
const v1, 0xffff
if-le v0, v1, :cond_d7
if-le v0, v6, :cond_7d
sub-int v1, v2, p2
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "(above "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ") "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v0, v1, v4}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V
:cond_7d
const/high16 v1, 0x1
sub-int/2addr v0, v1
add-int/lit8 v1, v2, 0x1
const v4, 0xd800
shr-int/lit8 v5, v0, 0xa
add-int/2addr v4, v5
int-to-char v4, v4
aput-char v4, p1, v2
const v2, 0xdc00
and-int/lit16 v0, v0, 0x3ff
or-int/2addr v0, v2
if-lt v1, v3, :cond_d8
int-to-char v0, v0
iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C
:goto_96
sub-int p3, v1, p2
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I
add-int/2addr v0, p3
iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I
goto/16 :goto_9
:cond_9f
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
sub-int/2addr v1, v2
const/4 v2, 0x4
if-ge v1, v2, :cond_e5
invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->loadMore(I)Z
move-result v1
if-nez v1, :cond_e5
move p3, v0
goto/16 :goto_9
:cond_b0
iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
aget-byte v1, v1, v0
and-int/lit16 v1, v1, 0xff
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
add-int/lit8 v5, v0, 0x1
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x8
or-int/2addr v1, v4
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
add-int/lit8 v5, v0, 0x2
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
shl-int/lit8 v4, v4, 0x10
or-int/2addr v1, v4
iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B
add-int/lit8 v0, v0, 0x3
aget-byte v0, v4, v0
shl-int/lit8 v0, v0, 0x18
or-int/2addr v0, v1
goto/16 :goto_52
:cond_d7
move v1, v2
:cond_d8
add-int/lit8 v2, v1, 0x1
int-to-char v0, v0
aput-char v0, p1, v1
iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I
iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I
if-lt v0, v1, :cond_25
:cond_e3
move v1, v2
goto :goto_96
:cond_e5
move v2, p2
goto/16 :goto_25
.end method