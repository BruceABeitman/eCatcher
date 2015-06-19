.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.super Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.field protected _inputBuffer:[C
.field protected _reader:Ljava/io/Reader;
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
.registers 5
invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V
iput-object p3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;
invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C
return-void
.end method
.method protected _closeInput()V
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;
if-eqz v0, :cond_1c
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;
invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z
move-result v0
if-nez v0, :cond_14
sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->isFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
move-result v0
if-eqz v0, :cond_19
:cond_14
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->close()V
:cond_19
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;
:cond_1c
return-void
.end method
.method protected _releaseBuffers()V
.registers 3
invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_releaseBuffers()V
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C
if-eqz v0, :cond_f
const/4 v1, 0x0
iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;
invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V
:cond_f
return-void
.end method
.method protected getNextChar(Ljava/lang/String;)C
.registers 5
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I
if-lt v0, v1, :cond_f
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z
move-result v0
if-nez v0, :cond_f
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_f
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I
aget-char v0, v0, v1
return v0
.end method
.method protected final loadMore()Z
.registers 6
const/4 v4, 0x0
iget-wide v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I
sub-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;
if-eqz v0, :cond_47
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C
array-length v2, v2
invoke-virtual {v0, v1, v4, v2}, Ljava/io/Reader;->read([CII)I
move-result v0
if-lez v0, :cond_27
iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I
const/4 v0, 0x1
:goto_26
return v0
:cond_27
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_closeInput()V
if-nez v0, :cond_47
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Reader returned 0 characters when trying to read "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_47
move v0, v4
goto :goto_26
.end method