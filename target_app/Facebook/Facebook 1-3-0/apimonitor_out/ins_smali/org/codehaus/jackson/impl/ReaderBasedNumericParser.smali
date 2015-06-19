.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
return-void
.end method
.method private final parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;
.registers 16
const/16 v8, 0x2d
const/16 v12, 0x39
const/16 v11, 0x30
const/4 v10, 0x1
const/4 v9, 0x0
iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C
move-result-object v0
if-eqz p1, :cond_191
add-int/lit8 v1, v9, 0x1
aput-char v8, v0, v9
:goto_14
move-object v2, v0
move v0, v9
:goto_16
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-lt v3, v4, :cond_f6
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z
move-result v3
if-nez v3, :cond_f6
move v3, v10
move v4, v9
:goto_24
if-nez v0, :cond_46
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Missing integer part (next char "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {v4}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_getCharDesc(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ")"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V
:cond_46
const/16 v5, 0x2e
if-ne v4, v5, :cond_186
add-int/lit8 v5, v1, 0x1
aput-char v4, v2, v1
move v1, v9
move v13, v4
move v4, v5
move-object v5, v2
move v2, v13
:goto_53
iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-lt v6, v7, :cond_12a
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z
move-result v6
if-nez v6, :cond_12a
move v3, v2
move v2, v10
:goto_61
if-nez v1, :cond_68
const-string v6, "Decimal point not followed by a digit"
invoke-virtual {p0, v3, v6}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V
:cond_68
:goto_68
const/16 v6, 0x65
if-eq v3, v6, :cond_70
const/16 v6, 0x45
if-ne v3, v6, :cond_17d
:cond_70
array-length v6, v5
if-lt v4, v6, :cond_7b
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v4
move-object v5, v4
move v4, v9
:cond_7b
add-int/lit8 v6, v4, 0x1
aput-char v3, v5, v4
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-ge v3, v4, :cond_151
iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
aget-char v3, v3, v4
:goto_8f
if-eq v3, v8, :cond_95
const/16 v4, 0x2b
if-ne v3, v4, :cond_176
:cond_95
array-length v4, v5
if-lt v6, v4, :cond_173
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v4
move-object v5, v4
move v4, v9
:goto_a0
add-int/lit8 v6, v4, 0x1
aput-char v3, v5, v4
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-ge v3, v4, :cond_159
iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
aget-char v3, v3, v4
:goto_b4
move v4, v3
move v3, v9
move v13, v6
move-object v6, v5
move v5, v13
:goto_b9
if-gt v4, v12, :cond_16e
if-lt v4, v11, :cond_16e
add-int/lit8 v3, v3, 0x1
array-length v7, v6
if-lt v5, v7, :cond_ca
iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v5
move-object v6, v5
move v5, v9
:cond_ca
add-int/lit8 v7, v5, 0x1
aput-char v4, v6, v5
iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-lt v5, v8, :cond_161
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z
move-result v5
if-nez v5, :cond_161
move v2, v3
move v5, v7
move v3, v10
:goto_dd
if-nez v2, :cond_e4
const-string v6, "Exponent indicator not followed by a digit"
invoke-virtual {p0, v4, v6}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V
:cond_e4
move v4, v5
:goto_e5
if-nez v3, :cond_ec
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
sub-int/2addr v3, v10
iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
:cond_ec
iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v3, v4}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V
invoke-virtual {p0, p1, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;
move-result-object v0
return-object v0
:cond_f6
iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
aget-char v3, v3, v4
if-lt v3, v11, :cond_18d
if-le v3, v12, :cond_108
move v4, v3
move v3, v9
goto/16 :goto_24
:cond_108
add-int/lit8 v0, v0, 0x1
const/4 v4, 0x2
if-ne v0, v4, :cond_118
sub-int v4, v1, v10
aget-char v4, v2, v4
if-ne v4, v11, :cond_118
const-string v4, "Leading zeroes not allowed"
invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V
:cond_118
array-length v4, v2
if-lt v1, v4, :cond_123
iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v1
move-object v2, v1
move v1, v9
:cond_123
add-int/lit8 v4, v1, 0x1
aput-char v3, v2, v1
move v1, v4
goto/16 :goto_16
:cond_12a
iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
add-int/lit8 v7, v6, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
aget-char v2, v2, v6
if-lt v2, v11, :cond_181
if-le v2, v12, :cond_13d
move v13, v3
move v3, v2
move v2, v13
goto/16 :goto_61
:cond_13d
add-int/lit8 v1, v1, 0x1
array-length v6, v5
if-lt v4, v6, :cond_14a
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v4
move-object v5, v4
move v4, v9
:cond_14a
add-int/lit8 v6, v4, 0x1
aput-char v2, v5, v4
move v4, v6
goto/16 :goto_53
:cond_151
const-string v3, "expected a digit for number exponent"
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C
move-result v3
goto/16 :goto_8f
:cond_159
const-string v3, "expected a digit for number exponent"
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C
move-result v3
goto/16 :goto_b4
:cond_161
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
add-int/lit8 v8, v5, 0x1
iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
aget-char v4, v4, v5
move v5, v7
goto/16 :goto_b9
:cond_16e
move v13, v3
move v3, v2
move v2, v13
goto/16 :goto_dd
:cond_173
move v4, v6
goto/16 :goto_a0
:cond_176
move v4, v3
move v3, v9
move v13, v6
move-object v6, v5
move v5, v13
goto/16 :goto_b9
:cond_17d
move v3, v2
move v2, v9
goto/16 :goto_e5
:cond_181
move v13, v3
move v3, v2
move v2, v13
goto/16 :goto_61
:cond_186
move-object v5, v2
move v2, v3
move v3, v4
move v4, v1
move v1, v9
goto/16 :goto_68
:cond_18d
move v4, v3
move v3, v9
goto/16 :goto_24
:cond_191
move v1, v9
goto/16 :goto_14
.end method
.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
.registers 13
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v8, 0x0
const/16 v10, 0x39
const/16 v9, 0x30
const/16 v0, 0x2d
if-ne p1, v0, :cond_23
move v0, v6
:goto_c
iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
sub-int v2, v1, v6
iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-eqz v0, :cond_35
iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-lt v1, v4, :cond_25
:cond_18
if-eqz v0, :cond_c5
add-int/lit8 v1, v2, 0x1
:goto_1c
iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;
move-result-object v0
:goto_22
return-object v0
:cond_23
move v0, v8
goto :goto_c
:cond_25
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
add-int/lit8 v5, v1, 0x1
aget-char v1, v4, v1
if-gt v1, v10, :cond_2f
if-ge v1, v9, :cond_34
:cond_2f
const-string v4, "expected digit (0-9) to follow minus sign, for valid numeric value"
invoke-virtual {p0, v1, v4}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V
:cond_34
move v1, v5
:cond_35
move v4, v1
move v1, v6
:goto_37
iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I
if-ge v4, v5, :cond_18
iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
add-int/lit8 v6, v4, 0x1
aget-char v4, v5, v4
if-lt v4, v9, :cond_45
if-le v4, v10, :cond_93
:cond_45
const/16 v5, 0x2e
if-ne v4, v5, :cond_ce
move v4, v8
move v5, v6
:goto_4b
if-ge v5, v3, :cond_18
iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
add-int/lit8 v7, v5, 0x1
aget-char v5, v6, v5
if-lt v5, v9, :cond_57
if-le v5, v10, :cond_a6
:cond_57
if-nez v4, :cond_5e
const-string v6, "Decimal point not followed by a digit"
invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V
:cond_5e
move v6, v5
move v5, v7
:goto_60
const/16 v7, 0x65
if-eq v6, v7, :cond_68
const/16 v7, 0x45
if-ne v6, v7, :cond_cc
:cond_68
if-ge v5, v3, :cond_18
iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
add-int/lit8 v7, v5, 0x1
aget-char v5, v6, v5
const/16 v6, 0x2d
if-eq v5, v6, :cond_78
const/16 v6, 0x2b
if-ne v5, v6, :cond_c8
:cond_78
if-ge v7, v3, :cond_18
iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
add-int/lit8 v6, v7, 0x1
aget-char v5, v5, v7
move v7, v5
move v5, v8
:goto_82
if-gt v7, v10, :cond_aa
if-lt v7, v9, :cond_aa
add-int/lit8 v5, v5, 0x1
if-ge v6, v3, :cond_18
iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
add-int/lit8 v8, v6, 0x1
aget-char v6, v7, v6
move v7, v6
move v6, v8
goto :goto_82
:cond_93
add-int/lit8 v1, v1, 0x1
if-ne v1, v7, :cond_d2
iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
sub-int v5, v6, v7
aget-char v4, v4, v5
if-ne v4, v9, :cond_d2
const-string v4, "Leading zeroes not allowed"
invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V
move v4, v6
goto :goto_37
:cond_a6
add-int/lit8 v4, v4, 0x1
move v5, v7
goto :goto_4b
:cond_aa
if-nez v5, :cond_b1
const-string v3, "Exponent indicator not followed by a digit"
invoke-virtual {p0, v7, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V
:cond_b1
move v3, v5
move v5, v6
:goto_b3
add-int/lit8 v5, v5, -0x1
iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I
sub-int/2addr v5, v2
iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C
invoke-virtual {v6, v7, v2, v5}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V
invoke-virtual {p0, v0, v1, v4, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto/16 :goto_22
:cond_c5
move v1, v2
goto/16 :goto_1c
:cond_c8
move v6, v7
move v7, v5
move v5, v8
goto :goto_82
:cond_cc
move v3, v8
goto :goto_b3
:cond_ce
move v5, v6
move v6, v4
move v4, v8
goto :goto_60
:cond_d2
move v4, v6
goto/16 :goto_37
.end method