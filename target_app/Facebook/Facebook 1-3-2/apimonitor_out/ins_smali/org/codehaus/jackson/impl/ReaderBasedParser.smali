.class public Lorg/codehaus/jackson/impl/ReaderBasedParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.field final _objectCodec:Lorg/codehaus/jackson/ObjectCodec;
.field protected final _symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
iput-object p4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
iput-object p5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
return-void
.end method
.method private final _nextAfterName()Lorg/codehaus/jackson/JsonToken;
.registers 5
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;
const/4 v1, 0x0
iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_1b
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I
invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
:goto_18
:cond_18
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
return-object v0
:cond_1b
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_18
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I
invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
goto :goto_18
.end method
.method private _reportInvalidToken(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
:goto_5
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v1, v2, :cond_32
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v1
if-nez v1, :cond_32
:cond_11
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unrecognized token \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\': was expecting \'null\', \'true\' or \'false\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V
return-void
:cond_32
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v1, v1, v2
invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
move-result v2
if-eqz v2, :cond_11
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_5
.end method
.method private final _skipCComment()V
.registers 5
const/16 v3, 0x2a
:goto_2
:cond_2
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_e
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_28
:cond_e
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
if-gt v0, v3, :cond_2
if-ne v0, v3, :cond_3f
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_2e
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-nez v0, :cond_2e
:cond_28
const-string v0, " in a comment"
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:goto_2d
return-void
:cond_2e
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
const/16 v1, 0x2f
if-ne v0, v1, :cond_2
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
goto :goto_2d
:cond_3f
const/16 v1, 0x20
if-ge v0, v1, :cond_2
const/16 v1, 0xa
if-ne v0, v1, :cond_4b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V
goto :goto_2
:cond_4b
const/16 v1, 0xd
if-ne v0, v1, :cond_53
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V
goto :goto_2
:cond_53
const/16 v1, 0x9
if-eq v0, v1, :cond_2
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V
goto :goto_2
.end method
.method private final _skipComment()V
.registers 5
const/16 v3, 0x2f
sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
move-result v0
if-nez v0, :cond_f
const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"
invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_f
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_20
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-nez v0, :cond_20
const-string v0, " in a comment"
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_20
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
if-ne v0, v3, :cond_30
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCppComment()V
:goto_2f
return-void
:cond_30
const/16 v1, 0x2a
if-ne v0, v1, :cond_38
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCComment()V
goto :goto_2f
:cond_38
const-string v1, "was expecting either \'*\' or \'/\' for a comment"
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
goto :goto_2f
.end method
.method private final _skipCppComment()V
.registers 4
:goto_0
:cond_0
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_c
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_21
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
const/16 v1, 0x20
if-ge v0, v1, :cond_0
const/16 v1, 0xa
if-ne v0, v1, :cond_22
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V
:goto_21
:cond_21
return-void
:cond_22
const/16 v1, 0xd
if-ne v0, v1, :cond_2a
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V
goto :goto_21
:cond_2a
const/16 v1, 0x9
if-eq v0, v1, :cond_0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V
goto :goto_0
.end method
.method private final _skipWS()I
.registers 5
const/16 v3, 0x20
:goto_2
:cond_2
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_e
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_3d
:cond_e
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
if-le v0, v3, :cond_23
const/16 v1, 0x2f
if-eq v0, v1, :cond_1f
return v0
:cond_1f
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V
goto :goto_2
:cond_23
if-eq v0, v3, :cond_2
const/16 v1, 0xa
if-ne v0, v1, :cond_2d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V
goto :goto_2
:cond_2d
const/16 v1, 0xd
if-ne v0, v1, :cond_35
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V
goto :goto_2
:cond_35
const/16 v1, 0x9
if-eq v0, v1, :cond_2
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V
goto :goto_2
:cond_3d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unexpected end-of-input within/between "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " entries"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
move-result-object v0
throw v0
.end method
.method private final _skipWSOrEnd()I
.registers 5
const/16 v3, 0x20
:goto_2
:cond_2
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_e
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_3d
:cond_e
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
if-le v0, v3, :cond_23
const/16 v1, 0x2f
if-eq v0, v1, :cond_1f
:goto_1e
return v0
:cond_1f
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V
goto :goto_2
:cond_23
if-eq v0, v3, :cond_2
const/16 v1, 0xa
if-ne v0, v1, :cond_2d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V
goto :goto_2
:cond_2d
const/16 v1, 0xd
if-ne v0, v1, :cond_35
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V
goto :goto_2
:cond_35
const/16 v1, 0x9
if-eq v0, v1, :cond_2
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V
goto :goto_2
:cond_3d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleEOF()V
const/4 v0, -0x1
goto :goto_1e
.end method
.method private handleFieldName2(II)V
.registers 12
const/16 v7, 0x5c
const/16 v6, 0x22
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
sub-int/2addr v2, p1
invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I
move-result v1
move v2, p2
move-object v8, v0
move v0, v1
move-object v1, v8
:goto_1e
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v3, v4, :cond_2f
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v3
if-nez v3, :cond_2f
const-string v3, ": was expecting closing quote for name"
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_2f
iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v3, v3, v4
if-gt v3, v7, :cond_82
if-ne v3, v7, :cond_56
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C
move-result v4
:goto_41
mul-int/lit8 v2, v2, 0x1f
add-int/2addr v2, v3
add-int/lit8 v3, v0, 0x1
aput-char v4, v1, v0
array-length v0, v1
if-lt v3, v0, :cond_84
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v0
const/4 v1, 0x0
move v8, v1
move-object v1, v0
move v0, v8
goto :goto_1e
:cond_56
if-gt v3, v6, :cond_82
if-ne v3, v6, :cond_79
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C
move-result-object v1
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I
move-result v3
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I
move-result v0
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
invoke-virtual {v5, v1, v3, v0, v2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V
return-void
:cond_79
const/16 v4, 0x20
if-ge v3, v4, :cond_82
const-string v4, "name"
invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V
:cond_82
move v4, v3
goto :goto_41
:cond_84
move v0, v3
goto :goto_1e
.end method
.method protected _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
.registers 9
const/4 v6, 0x3
const/4 v5, -0x2
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;
move-result-object v0
:goto_6
:cond_6
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v1, v2, :cond_f
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V
:cond_f
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v1, v1, v2
const/16 v2, 0x20
if-le v1, v2, :cond_6
invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I
move-result v2
if-gez v2, :cond_32
const/16 v2, 0x22
if-ne v1, v2, :cond_2c
invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B
move-result-object v0
return-object v0
:cond_2c
const/4 v0, 0x0
invoke-virtual {p0, p1, v1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_32
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v1, v3, :cond_3b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V
:cond_3b
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v1, v1, v3
invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I
move-result v3
if-gez v3, :cond_51
const/4 v0, 0x1
invoke-virtual {p0, p1, v1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_51
shl-int/lit8 v1, v2, 0x6
or-int/2addr v1, v3
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v2, v3, :cond_5d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V
:cond_5d
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v2, v2, v3
invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I
move-result v3
if-gez v3, :cond_b7
if-eq v3, v5, :cond_75
const/4 v0, 0x2
invoke-virtual {p0, p1, v2, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_75
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v2, v3, :cond_7e
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V
:cond_7e
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v2, v2, v3
invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z
move-result v3
if-nez v3, :cond_b0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "expected padding character \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v2, v6, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_b0
shr-int/lit8 v1, v1, 0x4
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V
goto/16 :goto_6
:cond_b7
shl-int/lit8 v1, v1, 0x6
or-int/2addr v1, v3
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v2, v3, :cond_c3
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMoreGuaranteed()V
:cond_c3
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v2, v2, v3
invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I
move-result v3
if-gez v3, :cond_e1
if-eq v3, v5, :cond_da
invoke-virtual {p0, p1, v2, v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_da
shr-int/lit8 v1, v1, 0x2
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V
goto/16 :goto_6
:cond_e1
shl-int/lit8 v1, v1, 0x6
or-int/2addr v1, v3
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V
goto/16 :goto_6
.end method
.method protected final _decodeEscaped()C
.registers 7
const/4 v3, 0x0
const-string v5, " in character escape sequence"
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_14
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-nez v0, :cond_14
const-string v0, " in character escape sequence"
invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_14
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
sparse-switch v0, :sswitch_data_7e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unrecognized character escape "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_getCharDesc(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V
:sswitch_3b
move v0, v3
move v1, v3
:goto_3d
const/4 v2, 0x4
if-ge v0, v2, :cond_7b
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v2, v3, :cond_51
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v2
if-nez v2, :cond_51
const-string v2, " in character escape sequence"
invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_51
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v2, v2, v3
invoke-static {v2}, Lorg/codehaus/jackson/util/CharTypes;->charToHex(I)I
move-result v3
if-gez v3, :cond_66
const-string v4, "expected a hex-digit for character escape sequence"
invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_66
shl-int/lit8 v1, v1, 0x4
or-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_3d
:sswitch_6c
const/16 v0, 0x8
:goto_6e
:sswitch_6e
return v0
:sswitch_6f
const/16 v0, 0x9
goto :goto_6e
:sswitch_72
const/16 v0, 0xa
goto :goto_6e
:sswitch_75
const/16 v0, 0xc
goto :goto_6e
:sswitch_78
const/16 v0, 0xd
goto :goto_6e
:cond_7b
int-to-char v0, v1
goto :goto_6e
nop
:sswitch_data_7e
.sparse-switch
0x22 -> :sswitch_6e
0x2f -> :sswitch_6e
0x5c -> :sswitch_6e
0x62 -> :sswitch_6c
0x66 -> :sswitch_75
0x6e -> :sswitch_72
0x72 -> :sswitch_78
0x74 -> :sswitch_6f
0x75 -> :sswitch_3b
.end sparse-switch
.end method
.method protected _finishString()V
.registers 7
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-ge v0, v1, :cond_2f
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I
move-result-object v2
array-length v3, v2
:cond_b
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
aget-char v4, v4, v0
if-ge v4, v3, :cond_2b
aget v5, v2, v4
if-eqz v5, :cond_2b
const/16 v1, 0x22
if-ne v4, v1, :cond_2f
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
sub-int v4, v0, v4
invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
:goto_2a
return-void
:cond_2b
add-int/lit8 v0, v0, 0x1
if-lt v0, v1, :cond_b
:cond_2f
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
sub-int v4, v0, v4
invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithCopy([CII)V
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString2()V
goto :goto_2a
.end method
.method protected _finishString2()V
.registers 9
const/16 v6, 0x5c
const/16 v5, 0x22
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I
move-result v1
move v7, v1
move-object v1, v0
move v0, v7
:goto_13
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v2, v3, :cond_24
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v2
if-nez v2, :cond_24
const-string v2, ": was expecting closing quote for a string value"
invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_24
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v2, v2, v3
if-gt v2, v6, :cond_36
if-ne v2, v6, :cond_49
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C
move-result v2
:goto_36
:cond_36
array-length v3, v1
if-lt v0, v3, :cond_43
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v0
const/4 v1, 0x0
move v7, v1
move-object v1, v0
move v0, v7
:cond_43
add-int/lit8 v3, v0, 0x1
aput-char v2, v1, v0
move v0, v3
goto :goto_13
:cond_49
if-gt v2, v5, :cond_36
if-ne v2, v5, :cond_53
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V
return-void
:cond_53
const/16 v3, 0x20
if-ge v2, v3, :cond_36
const-string v3, "string value"
invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V
goto :goto_36
.end method
.method protected _handleFieldName(I)V
.registers 11
const/16 v7, 0x22
if-eq p1, v7, :cond_9
const-string v0, "was expecting double-quote to start field name"
invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_9
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
const/4 v1, 0x0
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-ge v0, v2, :cond_48
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I
move-result-object v3
array-length v4, v3
move v8, v1
move v1, v0
move v0, v8
:cond_18
iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
aget-char v5, v5, v1
if-ge v5, v4, :cond_39
aget v6, v3, v5
if-eqz v6, :cond_39
if-ne v5, v7, :cond_40
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
sub-int/2addr v1, v2
invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V
:goto_38
return-void
:cond_39
mul-int/lit8 v0, v0, 0x1f
add-int/2addr v0, v5
add-int/lit8 v1, v1, 0x1
if-lt v1, v2, :cond_18
:goto_40
:cond_40
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->handleFieldName2(II)V
goto :goto_38
:cond_48
move v8, v1
move v1, v0
move v0, v8
goto :goto_40
.end method
.method protected _matchToken(Lorg/codehaus/jackson/JsonToken;)V
.registers 7
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
:goto_9
if-ge v1, v2, :cond_39
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v3, v4, :cond_1c
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v3
if-nez v3, :cond_1c
const-string v3, " in a value"
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_1c
iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v3, v3, v4
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v3, v4, :cond_30
const/4 v3, 0x0
invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;)V
:cond_30
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_39
return-void
.end method
.method protected final _skipCR()V
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
if-lt v0, v1, :cond_c
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_1c
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
aget-char v0, v0, v1
const/16 v1, 0xa
if-ne v0, v1, :cond_1c
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
:cond_1c
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I
return-void
.end method
.method protected final _skipLF()V
.registers 2
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I
return-void
.end method
.method protected _skipString()V
.registers 9
const/16 v6, 0x5c
const/16 v5, 0x22
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C
move v7, v1
move v1, v0
move v0, v7
:goto_10
if-lt v1, v0, :cond_26
iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z
move-result v0
if-nez v0, :cond_1f
const-string v0, ": was expecting closing quote for a string value"
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_1f
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
move v7, v1
move v1, v0
move v0, v7
:cond_26
add-int/lit8 v3, v1, 0x1
aget-char v1, v2, v1
if-gt v1, v6, :cond_4d
if-ne v1, v6, :cond_3b
iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C
iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I
move v7, v1
move v1, v0
move v0, v7
goto :goto_10
:cond_3b
if-gt v1, v5, :cond_4d
if-ne v1, v5, :cond_42
iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
return-void
:cond_42
const/16 v4, 0x20
if-ge v1, v4, :cond_4d
iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
const-string v4, "string value"
invoke-virtual {p0, v1, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V
:cond_4d
move v1, v3
goto :goto_10
.end method
.method public close()V
.registers 2
invoke-super {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->close()V
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->release()V
return-void
.end method
.method public nextToken()Lorg/codehaus/jackson/JsonToken;
.registers 10
const/16 v8, 0x7d
const/16 v7, 0x5d
const/4 v6, 0x1
const/4 v5, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_11
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextAfterName()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z
if-eqz v0, :cond_18
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipString()V
:cond_18
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWSOrEnd()I
move-result v0
if-gez v0, :cond_25
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->close()V
iput-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
move-object v0, v5
goto :goto_10
:cond_25
iget-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
int-to-long v3, v3
add-long/2addr v1, v3
const-wide/16 v3, 0x1
sub-long/2addr v1, v3
iput-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputTotal:J
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I
iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I
sub-int/2addr v1, v2
sub-int/2addr v1, v6
iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I
iput-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B
if-ne v0, v7, :cond_58
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z
move-result v1
if-nez v1, :cond_4b
invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V
:cond_4b
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto :goto_10
:cond_58
if-ne v0, v8, :cond_72
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z
move-result v1
if-nez v1, :cond_65
invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V
:cond_65
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto :goto_10
:cond_72
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->expectComma()Z
move-result v1
if-eqz v1, :cond_a4
const/16 v1, 0x2c
if-eq v0, v1, :cond_a0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "was expecting comma to separate "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " entries"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_a0
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I
move-result v0
:cond_a4
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z
move-result v1
if-eqz v1, :cond_c4
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleFieldName(I)V
sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I
move-result v0
const/16 v2, 0x3a
if-eq v0, v2, :cond_c0
const-string v2, "was expecting a colon to separate field name and value"
invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_c0
invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I
move-result v0
:cond_c4
sparse-switch v0, :sswitch_data_122
const-string v2, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"
invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
move-object v0, v5
:goto_cd
if-eqz v1, :cond_11e
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto/16 :goto_10
:sswitch_d5
iput-boolean v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
goto :goto_cd
:sswitch_da
if-nez v1, :cond_e8
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I
invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
:cond_e8
sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
goto :goto_cd
:sswitch_eb
if-nez v1, :cond_f9
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I
invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
:cond_f9
sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
goto :goto_cd
:sswitch_fc
const-string v2, "expected a value"
invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:sswitch_101
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
goto :goto_cd
:sswitch_109
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
goto :goto_cd
:sswitch_111
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;
goto :goto_cd
:sswitch_119
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto :goto_cd
:cond_11e
iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto/16 :goto_10
:sswitch_data_122
.sparse-switch
0x22 -> :sswitch_d5
0x2d -> :sswitch_119
0x30 -> :sswitch_119
0x31 -> :sswitch_119
0x32 -> :sswitch_119
0x33 -> :sswitch_119
0x34 -> :sswitch_119
0x35 -> :sswitch_119
0x36 -> :sswitch_119
0x37 -> :sswitch_119
0x38 -> :sswitch_119
0x39 -> :sswitch_119
0x5b -> :sswitch_da
0x5d -> :sswitch_fc
0x66 -> :sswitch_109
0x6e -> :sswitch_111
0x74 -> :sswitch_101
0x7b -> :sswitch_eb
0x7d -> :sswitch_fc
.end sparse-switch
.end method
.method public final readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize Json into regular Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final readValueAs(Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize Json into regular Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final readValueAsTree()Lorg/codehaus/jackson/JsonNode;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize Json into JsonNode tree"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
invoke-virtual {v0, p0}, Lorg/codehaus/jackson/ObjectCodec;->readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
move-result-object v0
return-object v0
.end method
.method protected reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CI)Ljava/lang/IllegalArgumentException;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
return-object v0
.end method
.method protected reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)Ljava/lang/IllegalArgumentException;
.registers 8
const-string v2, ") in base64 content"
const/16 v0, 0x20
if-gt p2, v0, :cond_4e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal white space character (code 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") as character #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, p3, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " of 4-char base64 unit: can only used between units"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2f
if-eqz p4, :cond_48
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_48
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
return-object v1
:cond_4e
invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z
move-result v0
if-eqz v0, :cond_7e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unexpected padding character (\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\') as character #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, p3, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2f
:cond_7e
invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z
move-result v0
if-eqz v0, :cond_8a
invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z
move-result v0
if-eqz v0, :cond_a8
:cond_8a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal character (code 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in base64 content"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2f
:cond_a8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Illegal character \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' (code 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") in base64 content"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_2f
.end method