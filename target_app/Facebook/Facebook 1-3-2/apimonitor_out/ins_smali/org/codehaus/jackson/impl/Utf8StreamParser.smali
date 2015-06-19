.class public final Lorg/codehaus/jackson/impl/Utf8StreamParser;
.super Lorg/codehaus/jackson/impl/Utf8NumericParser;
.field static final BYTE_LF:B = 0xat
.field final _objectCodec:Lorg/codehaus/jackson/ObjectCodec;
.field protected _quadBuffer:[I
.field protected final _symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
.registers 18
move-object v0, p0
move-object v1, p1
move v2, p2
move-object v3, p3
move-object v4, p6
move v5, p7
move/from16 v6, p8
move/from16 v7, p9
invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/impl/Utf8NumericParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
const/16 v0, 0x20
new-array v0, v0, [I
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
iput-object p4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
iput-object p5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
return-void
.end method
.method private final _decodeUtf8_2(I)I
.registers 5
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_9
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v1, v0, 0xc0
const/16 v2, 0x80
if-eq v1, v2, :cond_20
and-int/lit16 v1, v0, 0xff
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_20
and-int/lit8 v1, p1, 0x1f
shl-int/lit8 v1, v1, 0x6
and-int/lit8 v0, v0, 0x3f
or-int/2addr v0, v1
return v0
.end method
.method private final _decodeUtf8_3(I)I
.registers 7
const/16 v4, 0x80
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_b
and-int/lit8 v0, p1, 0xf
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v2, v1, 0xc0
if-eq v2, v4, :cond_22
and-int/lit16 v2, v1, 0xff
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_22
shl-int/lit8 v0, v0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/2addr v0, v1
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_30
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_30
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v2, v1, 0xc0
if-eq v2, v4, :cond_45
and-int/lit16 v2, v1, 0xff
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_45
shl-int/lit8 v0, v0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/2addr v0, v1
return v0
.end method
.method private final _decodeUtf8_3fast(I)I
.registers 7
const/16 v4, 0x80
and-int/lit8 v0, p1, 0xf
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v2, v1, 0xc0
if-eq v2, v4, :cond_19
and-int/lit16 v2, v1, 0xff
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_19
shl-int/lit8 v0, v0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/2addr v0, v1
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v2, v1, 0xc0
if-eq v2, v4, :cond_33
and-int/lit16 v2, v1, 0xff
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_33
shl-int/lit8 v0, v0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/2addr v0, v1
return v0
.end method
.method private final _decodeUtf8_4(I)I
.registers 7
const/16 v4, 0x80
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_b
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v1, v0, 0xc0
if-eq v1, v4, :cond_20
and-int/lit16 v1, v0, 0xff
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_20
and-int/lit8 v1, p1, 0x7
shl-int/lit8 v1, v1, 0x6
and-int/lit8 v0, v0, 0x3f
or-int/2addr v0, v1
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_30
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_30
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v2, v1, 0xc0
if-eq v2, v4, :cond_45
and-int/lit16 v2, v1, 0xff
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_45
shl-int/lit8 v0, v0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/2addr v0, v1
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_53
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_53
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v2, v1, 0xc0
if-eq v2, v4, :cond_68
and-int/lit16 v2, v1, 0xff
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_68
shl-int/lit8 v0, v0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/2addr v0, v1
const/high16 v1, 0x1
sub-int/2addr v0, v1
return v0
.end method
.method private final _nextAfterName()Lorg/codehaus/jackson/JsonToken;
.registers 5
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;
const/4 v1, 0x0
iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_1b
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I
invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
:goto_18
:cond_18
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
return-object v0
:cond_1b
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_18
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I
invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
goto :goto_18
.end method
.method private _reportInvalidToken(Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
:goto_5
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_32
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
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
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V
return-void
:cond_32
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I
move-result v1
int-to-char v1, v1
invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z
move-result v2
if-eqz v2, :cond_11
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_5
.end method
.method private final _skipCComment()V
.registers 5
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I
move-result-object v0
:goto_4
:cond_4
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_10
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v1
if-eqz v1, :cond_40
:cond_10
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v1, v1, 0xff
aget v2, v0, v1
if-eqz v2, :cond_4
sparse-switch v2, :sswitch_data_46
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V
goto :goto_4
:sswitch_27
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
const/16 v2, 0x2f
if-ne v1, v2, :cond_4
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
:goto_37
return-void
:sswitch_38
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V
goto :goto_4
:sswitch_3c
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V
goto :goto_4
:cond_40
const-string v0, " in a comment"
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V
goto :goto_37
:sswitch_data_46
.sparse-switch
0xa -> :sswitch_38
0xd -> :sswitch_3c
0x2a -> :sswitch_27
.end sparse-switch
.end method
.method private final _skipComment()V
.registers 5
const/16 v3, 0x2f
sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
move-result v0
if-nez v0, :cond_f
const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"
invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_f
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_20
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v0
if-nez v0, :cond_20
const-string v0, " in a comment"
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_20
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v0, v0, 0xff
if-ne v0, v3, :cond_32
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCppComment()V
:goto_31
return-void
:cond_32
const/16 v1, 0x2a
if-ne v0, v1, :cond_3a
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCComment()V
goto :goto_31
:cond_3a
const-string v1, "was expecting either \'*\' or \'/\' for a comment"
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
goto :goto_31
.end method
.method private final _skipCppComment()V
.registers 5
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I
move-result-object v0
:sswitch_4
:goto_4
:cond_4
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_10
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v1
if-eqz v1, :cond_2a
:cond_10
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v1, v1, 0xff
aget v2, v0, v1
if-eqz v2, :cond_4
sparse-switch v2, :sswitch_data_30
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V
goto :goto_4
:sswitch_27
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V
:goto_2a
:cond_2a
return-void
:sswitch_2b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V
goto :goto_2a
nop
:sswitch_data_30
.sparse-switch
0xa -> :sswitch_27
0xd -> :sswitch_2b
0x2a -> :sswitch_4
.end sparse-switch
.end method
.method private final _skipUtf8_2(I)V
.registers 5
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_9
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v1, v0, 0xc0
const/16 v2, 0x80
if-eq v1, v2, :cond_20
and-int/lit16 v0, v0, 0xff
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_20
return-void
.end method
.method private final _skipUtf8_3(I)V
.registers 6
const/16 v3, 0x80
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_b
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v1, v0, 0xc0
if-eq v1, v3, :cond_20
and-int/lit16 v0, v0, 0xff
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_20
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_29
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_29
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v1, v0, 0xc0
if-eq v1, v3, :cond_3e
and-int/lit16 v0, v0, 0xff
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_3e
return-void
.end method
.method private final _skipUtf8_4(I)V
.registers 6
const/16 v3, 0x80
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_b
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v1, v0, 0xc0
if-eq v1, v3, :cond_20
and-int/lit16 v1, v0, 0xff
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_20
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_29
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_29
and-int/lit16 v1, v0, 0xc0
if-eq v1, v3, :cond_34
and-int/lit16 v0, v0, 0xff
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_34
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_3d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_3d
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v1, v0, 0xc0
if-eq v1, v3, :cond_52
and-int/lit16 v0, v0, 0xff
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V
:cond_52
return-void
.end method
.method private final _skipWS()I
.registers 5
const/16 v3, 0x20
:goto_2
:cond_2
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_e
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_3f
:cond_e
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v0, v0, 0xff
if-le v0, v3, :cond_25
const/16 v1, 0x2f
if-eq v0, v1, :cond_21
return v0
:cond_21
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V
goto :goto_2
:cond_25
if-eq v0, v3, :cond_2
const/16 v1, 0xa
if-ne v0, v1, :cond_2f
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V
goto :goto_2
:cond_2f
const/16 v1, 0xd
if-ne v0, v1, :cond_37
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V
goto :goto_2
:cond_37
const/16 v1, 0x9
if-eq v0, v1, :cond_2
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V
goto :goto_2
:cond_3f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Unexpected end-of-input within/between "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " entries"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
move-result-object v0
throw v0
.end method
.method private final _skipWSOrEnd()I
.registers 5
const/16 v3, 0x20
:goto_2
:cond_2
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_e
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_3f
:cond_e
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v0, v0, 0xff
if-le v0, v3, :cond_25
const/16 v1, 0x2f
if-eq v0, v1, :cond_21
:goto_20
return v0
:cond_21
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V
goto :goto_2
:cond_25
if-eq v0, v3, :cond_2
const/16 v1, 0xa
if-ne v0, v1, :cond_2f
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V
goto :goto_2
:cond_2f
const/16 v1, 0xd
if-ne v0, v1, :cond_37
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V
goto :goto_2
:cond_37
const/16 v1, 0x9
if-eq v0, v1, :cond_2
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V
goto :goto_2
:cond_3f
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_handleEOF()V
const/4 v0, -0x1
goto :goto_20
.end method
.method private final addName([III)Lorg/codehaus/jackson/sym/Name;
.registers 15
shl-int/lit8 v0, p2, 0x2
const/4 v1, 0x4
sub-int/2addr v0, v1
add-int/2addr v0, p3
const/4 v1, 0x4
if-ge p3, v1, :cond_e4
const/4 v1, 0x1
sub-int v1, p2, v1
aget v1, p1, v1
const/4 v2, 0x1
sub-int v2, p2, v2
const/4 v3, 0x4
sub-int/2addr v3, p3
shl-int/lit8 v3, v3, 0x3
shl-int v3, v1, v3
aput v3, p1, v2
:goto_18
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C
move-result-object v2
const/4 v3, 0x0
const/4 v4, 0x0
move v10, v4
move-object v4, v2
move v2, v10
:goto_23
if-ge v2, v0, :cond_10a
shr-int/lit8 v5, v2, 0x2
aget v5, p1, v5
and-int/lit8 v6, v2, 0x3
const/4 v7, 0x3
sub-int v6, v7, v6
shl-int/lit8 v6, v6, 0x3
shr-int/2addr v5, v6
and-int/lit16 v5, v5, 0xff
add-int/lit8 v2, v2, 0x1
const/16 v6, 0x7f
if-le v5, v6, :cond_127
and-int/lit16 v6, v5, 0xe0
const/16 v7, 0xc0
if-ne v6, v7, :cond_e7
and-int/lit8 v5, v5, 0x1f
const/4 v6, 0x1
move v10, v6
move v6, v5
move v5, v10
:goto_45
add-int v7, v2, v5
if-le v7, v0, :cond_4e
const-string v7, " in field name"
invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_4e
shr-int/lit8 v7, v2, 0x2
aget v7, p1, v7
and-int/lit8 v8, v2, 0x3
const/4 v9, 0x3
sub-int v8, v9, v8
shl-int/lit8 v8, v8, 0x3
shr-int/2addr v7, v8
add-int/lit8 v2, v2, 0x1
and-int/lit16 v8, v7, 0xc0
const/16 v9, 0x80
if-eq v8, v9, :cond_65
invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V
:cond_65
shl-int/lit8 v6, v6, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/2addr v6, v7
const/4 v7, 0x1
if-le v5, v7, :cond_123
shr-int/lit8 v7, v2, 0x2
aget v7, p1, v7
and-int/lit8 v8, v2, 0x3
const/4 v9, 0x3
sub-int v8, v9, v8
shl-int/lit8 v8, v8, 0x3
shr-int/2addr v7, v8
add-int/lit8 v2, v2, 0x1
and-int/lit16 v8, v7, 0xc0
const/16 v9, 0x80
if-eq v8, v9, :cond_84
invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V
:cond_84
shl-int/lit8 v6, v6, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/2addr v6, v7
const/4 v7, 0x2
if-le v5, v7, :cond_123
shr-int/lit8 v7, v2, 0x2
aget v7, p1, v7
and-int/lit8 v8, v2, 0x3
const/4 v9, 0x3
sub-int v8, v9, v8
shl-int/lit8 v8, v8, 0x3
shr-int/2addr v7, v8
add-int/lit8 v2, v2, 0x1
and-int/lit16 v8, v7, 0xc0
const/16 v9, 0x80
if-eq v8, v9, :cond_a5
and-int/lit16 v8, v7, 0xff
invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V
:cond_a5
shl-int/lit8 v6, v6, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/2addr v6, v7
move v10, v6
move v6, v2
move v2, v10
:goto_ad
const/4 v7, 0x2
if-le v5, v7, :cond_11f
const/high16 v5, 0x1
sub-int/2addr v2, v5
array-length v5, v4
if-lt v3, v5, :cond_bc
iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C
move-result-object v4
:cond_bc
add-int/lit8 v5, v3, 0x1
const v7, 0xd800
shr-int/lit8 v8, v2, 0xa
add-int/2addr v7, v8
int-to-char v7, v7
aput-char v7, v4, v3
const v3, 0xdc00
and-int/lit16 v2, v2, 0x3ff
or-int/2addr v2, v3
move v3, v6
move v10, v5
move-object v5, v4
move v4, v10
:goto_d1
array-length v6, v5
if-lt v4, v6, :cond_da
iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C
move-result-object v5
:cond_da
add-int/lit8 v6, v4, 0x1
int-to-char v2, v2
aput-char v2, v5, v4
move v2, v3
move-object v4, v5
move v3, v6
goto/16 :goto_23
:cond_e4
const/4 v1, 0x0
goto/16 :goto_18
:cond_e7
and-int/lit16 v6, v5, 0xf0
const/16 v7, 0xe0
if-ne v6, v7, :cond_f5
and-int/lit8 v5, v5, 0xf
const/4 v6, 0x2
move v10, v6
move v6, v5
move v5, v10
goto/16 :goto_45
:cond_f5
and-int/lit16 v6, v5, 0xf8
const/16 v7, 0xf0
if-ne v6, v7, :cond_103
and-int/lit8 v5, v5, 0x7
const/4 v6, 0x3
move v10, v6
move v6, v5
move v5, v10
goto/16 :goto_45
:cond_103
invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V
const/4 v5, 0x1
move v6, v5
goto/16 :goto_45
:cond_10a
new-instance v0, Ljava/lang/String;
const/4 v2, 0x0
invoke-direct {v0, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V
const/4 v2, 0x4
if-ge p3, v2, :cond_118
const/4 v2, 0x1
sub-int v2, p2, v2
aput v1, p1, v2
:cond_118
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-virtual {v1, v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
return-object v0
:cond_11f
move-object v5, v4
move v4, v3
move v3, v6
goto :goto_d1
:cond_123
move v10, v6
move v6, v2
move v2, v10
goto :goto_ad
:cond_127
move v10, v5
move-object v5, v4
move v4, v3
move v3, v2
move v2, v10
goto :goto_d1
.end method
.method private final findName(II)Lorg/codehaus/jackson/sym/Name;
.registers 5
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v1, 0x0
aput p1, v0, v1
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v1, 0x1
invoke-direct {p0, v0, v1, p2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_8
.end method
.method private final findName(III)Lorg/codehaus/jackson/sym/Name;
.registers 6
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v1, 0x0
aput p1, v0, v1
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v1, 0x1
aput p2, v0, v1
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v1, 0x2
invoke-direct {p0, v0, v1, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_8
.end method
.method private final findName([IIII)Lorg/codehaus/jackson/sym/Name;
.registers 8
array-length v0, p1
if-lt p2, v0, :cond_1d
array-length v0, p1
invoke-static {p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
:goto_a
add-int/lit8 v1, p2, 0x1
aput p3, v0, p2
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-virtual {v2, v0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;
move-result-object v2
if-nez v2, :cond_1b
invoke-direct {p0, v0, v1, p4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
move-object v0, v2
goto :goto_1a
:cond_1d
move-object v0, p1
goto :goto_a
.end method
.method public static growArrayBy([II)[I
.registers 5
const/4 v2, 0x0
if-nez p0, :cond_6
new-array v0, p1, [I
:goto_5
return-object v0
:cond_6
array-length v0, p0
add-int v1, v0, p1
new-array v1, v1, [I
invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object v0, v1
goto :goto_5
.end method
.method private nextByte()I
.registers 4
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_9
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v0, v0, 0xff
return v0
.end method
.method private final parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
.registers 10
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v2, 0x0
move-object v0, p0
move v3, p1
move v4, p2
move v5, p3
invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
return-object v0
.end method
.method private final parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;
.registers 11
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v1, 0x0
aput p1, v0, v1
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v2, 0x1
move-object v0, p0
move v3, p2
move v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
return-object v0
.end method
.method protected _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
.registers 9
const/4 v6, 0x3
const/4 v5, -0x2
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;
move-result-object v0
:goto_6
:cond_6
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v2, :cond_f
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_f
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v1, v1, 0xff
const/16 v2, 0x20
if-le v1, v2, :cond_6
invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I
move-result v2
if-gez v2, :cond_34
const/16 v2, 0x22
if-ne v1, v2, :cond_2e
invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B
move-result-object v0
return-object v0
:cond_2e
const/4 v0, 0x0
invoke-virtual {p0, p1, v1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_34
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v1, v3, :cond_3d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_3d
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v3
and-int/lit16 v1, v1, 0xff
invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I
move-result v3
if-gez v3, :cond_55
const/4 v0, 0x1
invoke-virtual {p0, p1, v1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_55
shl-int/lit8 v1, v2, 0x6
or-int/2addr v1, v3
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v2, v3, :cond_61
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_61
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I
move-result v3
if-gez v3, :cond_bf
if-eq v3, v5, :cond_7b
const/4 v0, 0x2
invoke-virtual {p0, p1, v2, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_7b
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v2, v3, :cond_84
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_84
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z
move-result v3
if-nez v3, :cond_b8
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
invoke-virtual {p0, p1, v2, v6, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_b8
shr-int/lit8 v1, v1, 0x4
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V
goto/16 :goto_6
:cond_bf
shl-int/lit8 v1, v1, 0x6
or-int/2addr v1, v3
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v2, v3, :cond_cb
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_cb
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I
move-result v3
if-gez v3, :cond_eb
if-eq v3, v5, :cond_e4
invoke-virtual {p0, p1, v2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_e4
shr-int/lit8 v1, v1, 0x2
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V
goto/16 :goto_6
:cond_eb
shl-int/lit8 v1, v1, 0x6
or-int/2addr v1, v3
invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V
goto/16 :goto_6
.end method
.method protected _decodeCharForError(I)I
.registers 10
const/4 v6, 0x2
const/16 v5, 0x80
const/4 v4, 0x1
if-gez p1, :cond_6d
and-int/lit16 v0, p1, 0xe0
const/16 v1, 0xc0
if-ne v0, v1, :cond_4b
and-int/lit8 v0, p1, 0x1f
move v1, v0
move v0, v4
:goto_10
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I
move-result v2
and-int/lit16 v3, v2, 0xc0
if-eq v3, v5, :cond_1d
and-int/lit16 v3, v2, 0xff
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V
:cond_1d
shl-int/lit8 v1, v1, 0x6
and-int/lit8 v2, v2, 0x3f
or-int/2addr v1, v2
if-le v0, v4, :cond_6b
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I
move-result v2
and-int/lit16 v3, v2, 0xc0
if-eq v3, v5, :cond_31
and-int/lit16 v3, v2, 0xff
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V
:cond_31
shl-int/lit8 v1, v1, 0x6
and-int/lit8 v2, v2, 0x3f
or-int/2addr v1, v2
if-le v0, v6, :cond_6b
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I
move-result v0
and-int/lit16 v2, v0, 0xc0
if-eq v2, v5, :cond_45
and-int/lit16 v2, v0, 0xff
invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V
:cond_45
shl-int/lit8 v1, v1, 0x6
and-int/lit8 v0, v0, 0x3f
or-int/2addr v0, v1
:goto_4a
return v0
:cond_4b
and-int/lit16 v0, p1, 0xf0
const/16 v1, 0xe0
if-ne v0, v1, :cond_56
and-int/lit8 v0, p1, 0xf
move v1, v0
move v0, v6
goto :goto_10
:cond_56
and-int/lit16 v0, p1, 0xf8
const/16 v1, 0xf0
if-ne v0, v1, :cond_63
and-int/lit8 v0, p1, 0x7
const/4 v1, 0x3
move v7, v1
move v1, v0
move v0, v7
goto :goto_10
:cond_63
and-int/lit16 v0, p1, 0xff
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V
move v0, v4
move v1, p1
goto :goto_10
:cond_6b
move v0, v1
goto :goto_4a
:cond_6d
move v0, p1
goto :goto_4a
.end method
.method protected final _decodeEscaped()C
.registers 7
const/4 v3, 0x0
const-string v5, " in character escape sequence"
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_14
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v0
if-nez v0, :cond_14
const-string v0, " in character escape sequence"
invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_14
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
sparse-switch v0, :sswitch_data_84
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unrecognized character escape \\ followed by "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I
move-result v0
invoke-static {v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_getCharDesc(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V
:sswitch_3f
move v0, v3
move v1, v3
:goto_41
const/4 v2, 0x4
if-ge v0, v2, :cond_81
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v2, v3, :cond_55
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v2
if-nez v2, :cond_55
const-string v2, " in character escape sequence"
invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_55
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
invoke-static {v2}, Lorg/codehaus/jackson/util/CharTypes;->charToHex(I)I
move-result v3
if-gez v3, :cond_6a
const-string v4, "expected a hex-digit for character escape sequence"
invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_6a
shl-int/lit8 v1, v1, 0x4
or-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_41
:sswitch_70
const/16 v0, 0x8
:goto_72
return v0
:sswitch_73
const/16 v0, 0x9
goto :goto_72
:sswitch_76
const/16 v0, 0xa
goto :goto_72
:sswitch_79
const/16 v0, 0xc
goto :goto_72
:sswitch_7c
const/16 v0, 0xd
goto :goto_72
:sswitch_7f
int-to-char v0, v0
goto :goto_72
:cond_81
int-to-char v0, v1
goto :goto_72
nop
:sswitch_data_84
.sparse-switch
0x22 -> :sswitch_7f
0x2f -> :sswitch_7f
0x5c -> :sswitch_7f
0x62 -> :sswitch_70
0x66 -> :sswitch_79
0x6e -> :sswitch_76
0x72 -> :sswitch_7c
0x74 -> :sswitch_73
0x75 -> :sswitch_3f
.end sparse-switch
.end method
.method protected _finishString()V
.registers 11
const/4 v8, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C
move-result-object v0
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I
move-result-object v1
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
move v3, v8
:goto_e
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v4, v5, :cond_19
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
:cond_19
array-length v5, v0
if-lt v3, v5, :cond_23
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v0
move v3, v8
:cond_23
iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
array-length v6, v0
sub-int/2addr v6, v3
add-int/2addr v6, v4
if-ge v6, v5, :cond_b4
move v5, v3
move v3, v6
:goto_2c
if-ge v4, v3, :cond_4c
add-int/lit8 v6, v4, 0x1
aget-byte v4, v2, v4
and-int/lit16 v4, v4, 0xff
aget v7, v1, v4
if-eqz v7, :cond_44
iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
const/16 v3, 0x22
if-ne v4, v3, :cond_50
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0, v5}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V
return-void
:cond_44
add-int/lit8 v7, v5, 0x1
int-to-char v4, v4
aput-char v4, v0, v5
move v4, v6
move v5, v7
goto :goto_2c
:cond_4c
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
move v3, v5
goto :goto_e
:cond_50
aget v3, v1, v4
packed-switch v3, :pswitch_data_ba
const/16 v3, 0x20
if-ge v4, v3, :cond_5e
const-string v3, "string value"
invoke-virtual {p0, v4, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V
:cond_5e
invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V
move v3, v4
move v4, v5
:goto_63
array-length v5, v0
if-lt v4, v5, :cond_6d
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v0
move v4, v8
:cond_6d
add-int/lit8 v5, v4, 0x1
int-to-char v3, v3
aput-char v3, v0, v4
move v3, v5
goto :goto_e
:pswitch_74
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C
move-result v3
move v4, v5
goto :goto_63
:pswitch_7a
invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I
move-result v3
move v4, v5
goto :goto_63
:pswitch_80
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
sub-int/2addr v3, v6
const/4 v6, 0x2
if-lt v3, v6, :cond_8e
invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I
move-result v3
move v4, v5
goto :goto_63
:cond_8e
invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I
move-result v3
move v4, v5
goto :goto_63
:pswitch_94
invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I
move-result v3
add-int/lit8 v4, v5, 0x1
const v6, 0xd800
shr-int/lit8 v7, v3, 0xa
or-int/2addr v6, v7
int-to-char v6, v6
aput-char v6, v0, v5
array-length v5, v0
if-lt v4, v5, :cond_ad
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v0
move v4, v8
:cond_ad
const v5, 0xdc00
and-int/lit16 v3, v3, 0x3ff
or-int/2addr v3, v5
goto :goto_63
:cond_b4
move v9, v5
move v5, v3
move v3, v9
goto/16 :goto_2c
nop
:pswitch_data_ba
.packed-switch 0x1
:pswitch_74
:pswitch_7a
:pswitch_80
:pswitch_94
.end packed-switch
.end method
.method protected _matchToken(Lorg/codehaus/jackson/JsonToken;)V
.registers 8
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asByteArray()[B
move-result-object v0
const/4 v1, 0x1
array-length v2, v0
:goto_6
if-ge v1, v2, :cond_30
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v3, v4, :cond_11
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
:cond_11
aget-byte v3, v0, v1
iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v4, v4, v5
if-eq v3, v4, :cond_27
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;)V
:cond_27
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_30
return-void
.end method
.method protected final _parseFieldName(I)Lorg/codehaus/jackson/sym/Name;
.registers 11
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v4, 0x0
const/16 v5, 0x22
if-eq p1, v5, :cond_d
const-string v0, "was expecting double-quote to start field name"
invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_d
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
sub-int/2addr v0, v1
const/16 v1, 0x9
if-ge v0, v1, :cond_1b
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->slowParseFieldName()Lorg/codehaus/jackson/sym/Name;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v1, v1, 0xff
aget v2, v0, v1
if-eqz v2, :cond_3b
if-ne v1, v5, :cond_36
invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_36
invoke-direct {p0, v4, v1, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_3b
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
aget v3, v0, v2
if-eqz v3, :cond_57
if-ne v2, v5, :cond_52
invoke-direct {p0, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_52
invoke-direct {p0, v1, v2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_57
shl-int/lit8 v1, v1, 0x8
or-int/2addr v1, v2
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
aget v3, v0, v2
if-eqz v3, :cond_76
if-ne v2, v5, :cond_71
invoke-direct {p0, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_71
invoke-direct {p0, v1, v2, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_76
shl-int/lit8 v1, v1, 0x8
or-int/2addr v1, v2
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
aget v3, v0, v2
if-eqz v3, :cond_95
if-ne v2, v5, :cond_90
invoke-direct {p0, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_90
invoke-direct {p0, v1, v2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1a
:cond_95
shl-int/lit8 v1, v1, 0x8
or-int/2addr v1, v2
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
aget v0, v0, v2
if-eqz v0, :cond_b8
if-ne v2, v5, :cond_b1
const/4 v0, 0x4
invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto/16 :goto_1a
:cond_b1
const/4 v0, 0x4
invoke-direct {p0, v1, v2, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto/16 :goto_1a
:cond_b8
invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseMediumFieldName(II)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto/16 :goto_1a
.end method
.method protected _reportInvalidChar(I)V
.registers 3
const/16 v0, 0x20
if-ge p1, v0, :cond_7
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V
:cond_7
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V
return-void
.end method
.method protected _reportInvalidInitial(I)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Invalid UTF-8 start byte 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected _reportInvalidOther(I)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Invalid UTF-8 middle byte 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V
return-void
.end method
.method protected _reportInvalidOther(II)V
.registers 3
iput p2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V
return-void
.end method
.method protected final _skipCR()V
.registers 3
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_c
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v0
if-eqz v0, :cond_1c
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
const/16 v1, 0xa
if-ne v0, v1, :cond_1c
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
:cond_1c
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I
return-void
.end method
.method protected final _skipLF()V
.registers 2
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I
return-void
.end method
.method protected _skipString()V
.registers 8
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
:goto_9
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v2, v3, :cond_53
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
move v6, v3
move v3, v2
move v2, v6
:goto_19
if-ge v3, v2, :cond_2c
add-int/lit8 v4, v3, 0x1
aget-byte v3, v1, v3
and-int/lit16 v3, v3, 0xff
aget v5, v0, v3
if-eqz v5, :cond_51
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
const/16 v2, 0x22
if-ne v3, v2, :cond_2f
return-void
:cond_2c
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
goto :goto_9
:cond_2f
aget v2, v0, v3
packed-switch v2, :pswitch_data_58
const/16 v2, 0x20
if-ge v3, v2, :cond_3d
const-string v2, "string value"
invoke-virtual {p0, v3, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V
:cond_3d
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V
goto :goto_9
:pswitch_41
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C
goto :goto_9
:pswitch_45
invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V
goto :goto_9
:pswitch_49
invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V
goto :goto_9
:pswitch_4d
invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V
goto :goto_9
:cond_51
move v3, v4
goto :goto_19
:cond_53
move v6, v3
move v3, v2
move v2, v6
goto :goto_19
nop
:pswitch_data_58
.packed-switch 0x1
:pswitch_41
:pswitch_45
:pswitch_49
:pswitch_4d
.end packed-switch
.end method
.method public close()V
.registers 2
invoke-super {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->close()V
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-virtual {v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V
return-void
.end method
.method public nextToken()Lorg/codehaus/jackson/JsonToken;
.registers 10
const/16 v8, 0x7d
const/16 v7, 0x5d
const/4 v6, 0x1
const/4 v5, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_11
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z
if-eqz v0, :cond_18
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V
:cond_18
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I
move-result v0
if-gez v0, :cond_25
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->close()V
iput-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
move-object v0, v5
goto :goto_10
:cond_25
iget-wide v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
int-to-long v3, v3
add-long/2addr v1, v3
const-wide/16 v3, 0x1
sub-long/2addr v1, v3
iput-wide v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputTotal:J
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I
iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I
sub-int/2addr v1, v2
sub-int/2addr v1, v6
iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I
iput-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B
if-ne v0, v7, :cond_58
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z
move-result v1
if-nez v1, :cond_4b
invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V
:cond_4b
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto :goto_10
:cond_58
if-ne v0, v8, :cond_72
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z
move-result v1
if-nez v1, :cond_65
invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V
:cond_65
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto :goto_10
:cond_72
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
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
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " entries"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_a0
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I
move-result v0
:cond_a4
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z
move-result v1
if-eqz v1, :cond_ce
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
invoke-virtual {v0}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I
move-result v0
const/16 v2, 0x3a
if-eq v0, v2, :cond_c6
const-string v2, "was expecting a colon to separate field name and value"
invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:cond_c6
sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I
move-result v0
:cond_ce
sparse-switch v0, :sswitch_data_12c
const-string v2, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"
invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
move-object v0, v5
:goto_d7
if-eqz v1, :cond_128
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto/16 :goto_10
:sswitch_df
iput-boolean v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
goto :goto_d7
:sswitch_e4
if-nez v1, :cond_f2
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I
invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
:cond_f2
sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
goto :goto_d7
:sswitch_f5
if-nez v1, :cond_103
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I
invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;
:cond_103
sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
goto :goto_d7
:sswitch_106
const-string v2, "expected a value"
invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V
:sswitch_10b
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
goto :goto_d7
:sswitch_113
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
goto :goto_d7
:sswitch_11b
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V
sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;
goto :goto_d7
:sswitch_123
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto :goto_d7
:cond_128
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
goto/16 :goto_10
:sswitch_data_12c
.sparse-switch
0x22 -> :sswitch_df
0x2d -> :sswitch_123
0x30 -> :sswitch_123
0x31 -> :sswitch_123
0x32 -> :sswitch_123
0x33 -> :sswitch_123
0x34 -> :sswitch_123
0x35 -> :sswitch_123
0x36 -> :sswitch_123
0x37 -> :sswitch_123
0x38 -> :sswitch_123
0x39 -> :sswitch_123
0x5b -> :sswitch_e4
0x5d -> :sswitch_106
0x66 -> :sswitch_113
0x6e -> :sswitch_11b
0x74 -> :sswitch_10b
0x7b -> :sswitch_f5
0x7d -> :sswitch_106
.end sparse-switch
.end method
.method protected parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
.registers 15
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I
move-result-object v0
move v1, p5
move v2, p4
move v3, p3
move v4, p2
move-object v5, p1
:goto_9
aget v6, v0, v2
if-eqz v6, :cond_6a
const/16 v6, 0x22
if-ne v2, v6, :cond_31
if-lez v1, :cond_dd
array-length v0, v5
if-lt v4, v0, :cond_da
array-length v0, v5
invoke-static {v5, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
:goto_1d
add-int/lit8 v2, v4, 0x1
aput v3, v0, v4
move v8, v2
move-object v2, v0
move v0, v8
:goto_24
iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
invoke-virtual {v3, v2, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;
move-result-object v3
if-nez v3, :cond_d7
invoke-direct {p0, v2, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
:goto_30
return-object v0
:cond_31
const/16 v6, 0x5c
if-eq v2, v6, :cond_3a
const-string v6, "name"
invoke-virtual {p0, v2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V
:cond_3a
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C
move-result v2
const/16 v6, 0x7f
if-le v2, v6, :cond_6a
const/4 v6, 0x4
if-lt v1, v6, :cond_59
array-length v1, v5
if-lt v4, v1, :cond_e5
array-length v1, v5
invoke-static {v5, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
:goto_4f
add-int/lit8 v5, v4, 0x1
aput v3, v1, v4
const/4 v3, 0x0
const/4 v4, 0x0
move v8, v4
move v4, v5
move-object v5, v1
move v1, v8
:cond_59
const/16 v6, 0x800
if-ge v2, v6, :cond_98
shl-int/lit8 v3, v3, 0x8
shr-int/lit8 v6, v2, 0x6
or-int/lit16 v6, v6, 0xc0
or-int/2addr v3, v6
add-int/lit8 v1, v1, 0x1
:goto_66
and-int/lit8 v2, v2, 0x3f
or-int/lit16 v2, v2, 0x80
:cond_6a
const/4 v6, 0x4
if-ge v1, v6, :cond_c4
add-int/lit8 v1, v1, 0x1
shl-int/lit8 v3, v3, 0x8
or-int/2addr v2, v3
move v3, v4
move-object v4, v5
:goto_74
iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v5, v6, :cond_85
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v5
if-nez v5, :cond_85
const-string v5, " in field name"
invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_85
iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v7, v6, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v5, v5, v6
and-int/lit16 v5, v5, 0xff
move v8, v5
move-object v5, v4
move v4, v3
move v3, v2
move v2, v8
goto/16 :goto_9
:cond_98
shl-int/lit8 v3, v3, 0x8
shr-int/lit8 v6, v2, 0xc
or-int/lit16 v6, v6, 0xe0
or-int/2addr v3, v6
add-int/lit8 v1, v1, 0x1
const/4 v6, 0x4
if-lt v1, v6, :cond_b8
array-length v1, v5
if-lt v4, v1, :cond_e3
array-length v1, v5
invoke-static {v5, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
:goto_ae
add-int/lit8 v5, v4, 0x1
aput v3, v1, v4
const/4 v3, 0x0
const/4 v4, 0x0
move v8, v4
move v4, v5
move-object v5, v1
move v1, v8
:cond_b8
shl-int/lit8 v3, v3, 0x8
shr-int/lit8 v6, v2, 0x6
and-int/lit8 v6, v6, 0x3f
or-int/lit16 v6, v6, 0x80
or-int/2addr v3, v6
add-int/lit8 v1, v1, 0x1
goto :goto_66
:cond_c4
array-length v1, v5
if-lt v4, v1, :cond_e1
array-length v1, v5
invoke-static {v5, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
:goto_ce
add-int/lit8 v5, v4, 0x1
aput v3, v1, v4
const/4 v3, 0x1
move-object v4, v1
move v1, v3
move v3, v5
goto :goto_74
:cond_d7
move-object v0, v3
goto/16 :goto_30
:cond_da
move-object v0, v5
goto/16 :goto_1d
:cond_dd
move v0, v4
move-object v2, v5
goto/16 :goto_24
:cond_e1
move-object v1, v5
goto :goto_ce
:cond_e3
move-object v1, v5
goto :goto_ae
:cond_e5
move-object v1, v5
goto/16 :goto_4f
.end method
.method protected parseLongFieldName(I)Lorg/codehaus/jackson/sym/Name;
.registers 14
const/4 v10, 0x1
const/4 v3, 0x0
const/4 v11, 0x4
const/4 v5, 0x2
const/16 v8, 0x22
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I
move-result-object v0
move v2, v5
move v4, p1
:goto_c
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
sub-int/2addr v1, v6
if-ge v1, v11, :cond_1c
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
move-object v0, p0
move v5, v3
invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v7, v6, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v6
and-int/lit16 v9, v1, 0xff
aget v1, v0, v9
if-eqz v1, :cond_3f
if-ne v9, v8, :cond_35
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
invoke-direct {p0, v0, v2, v4, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1b
:cond_35
iget-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
move-object v5, p0
move v7, v2
move v8, v4
invoke-virtual/range {v5 .. v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1b
:cond_3f
shl-int/lit8 v1, v4, 0x8
or-int v6, v1, v9
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v4
and-int/lit16 v4, v1, 0xff
aget v1, v0, v4
if-eqz v1, :cond_65
if-ne v4, v8, :cond_5c
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
invoke-direct {p0, v0, v2, v6, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1b
:cond_5c
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
move-object v0, p0
move v3, v6
invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1b
:cond_65
shl-int/lit8 v1, v6, 0x8
or-int v6, v1, v4
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v4
and-int/lit16 v4, v1, 0xff
aget v1, v0, v4
if-eqz v1, :cond_8d
if-ne v4, v8, :cond_83
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v1, 0x3
invoke-direct {p0, v0, v2, v6, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1b
:cond_83
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v5, 0x3
move-object v0, p0
move v3, v6
invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_1b
:cond_8d
shl-int/lit8 v1, v6, 0x8
or-int v6, v1, v4
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v4
and-int/lit16 v4, v1, 0xff
aget v1, v0, v4
if-eqz v1, :cond_b6
if-ne v4, v8, :cond_ab
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
invoke-direct {p0, v0, v2, v6, v11}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto/16 :goto_1b
:cond_ab
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
move-object v0, p0
move v3, v6
move v5, v11
invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto/16 :goto_1b
:cond_b6
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
array-length v1, v1
if-lt v2, v1, :cond_c3
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
invoke-static {v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I
move-result-object v1
iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
:cond_c3
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
add-int/lit8 v7, v2, 0x1
aput v6, v1, v2
move v2, v7
goto/16 :goto_c
.end method
.method protected parseMediumFieldName(II)Lorg/codehaus/jackson/sym/Name;
.registers 13
const/4 v9, 0x4
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/16 v5, 0x22
invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v1, v1, v2
and-int/lit16 v1, v1, 0xff
aget v2, v0, v1
if-eqz v2, :cond_26
if-ne v1, v5, :cond_21
invoke-direct {p0, p1, p2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
:goto_20
return-object v0
:cond_21
invoke-direct {p0, p1, p2, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_26
shl-int/lit8 v2, p2, 0x8
or-int/2addr v1, v2
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
aget v3, v0, v2
if-eqz v3, :cond_45
if-ne v2, v5, :cond_40
invoke-direct {p0, p1, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_40
invoke-direct {p0, p1, v1, v2, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_45
shl-int/lit8 v1, v1, 0x8
or-int/2addr v1, v2
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
aget v3, v0, v2
if-eqz v3, :cond_64
if-ne v2, v5, :cond_5f
invoke-direct {p0, p1, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_5f
invoke-direct {p0, p1, v1, v2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_64
shl-int/lit8 v1, v1, 0x8
or-int/2addr v1, v2
iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
aget v0, v0, v2
if-eqz v0, :cond_83
if-ne v2, v5, :cond_7e
invoke-direct {p0, p1, v1, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_7e
invoke-direct {p0, p1, v1, v2, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
:cond_83
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
const/4 v3, 0x0
aput p1, v0, v3
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
aput v1, v0, v6
invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseLongFieldName(I)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_20
.end method
.method public final readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize Json into regular Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final readValueAs(Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize Json into regular Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final readValueAsTree()Lorg/codehaus/jackson/JsonNode;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize Json into JsonNode tree"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;
invoke-virtual {v0, p0}, Lorg/codehaus/jackson/ObjectCodec;->readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
move-result-object v0
return-object v0
.end method
.method protected reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
return-object v0
.end method
.method protected reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
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
invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z
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
invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z
move-result v0
if-eqz v0, :cond_8a
invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z
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
int-to-char v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
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
.method protected slowParseFieldName()Lorg/codehaus/jackson/sym/Name;
.registers 7
const/4 v2, 0x0
iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I
if-lt v0, v1, :cond_12
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z
move-result v0
if-nez v0, :cond_12
const-string v0, ": was expecting closing quote for name"
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V
:cond_12
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I
aget-byte v0, v0, v1
and-int/lit16 v4, v0, 0xff
const/16 v0, 0x22
if-ne v4, v0, :cond_27
invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;
move-result-object v0
:goto_26
return-object v0
:cond_27
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I
move-object v0, p0
move v3, v2
move v5, v2
invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
move-result-object v0
goto :goto_26
.end method