.class public abstract Lorg/codehaus/jackson/impl/Utf8NumericParser;
.super Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
.registers 8
invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
return-void
.end method
.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
.registers 13
iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C
move-result-object v0
const/4 v1, 0x0
const/16 v2, 0x2d
if-ne p1, v2, :cond_130
const/4 v2, 0x1
:goto_c
if-eqz v2, :cond_1dd
add-int/lit8 v3, v1, 0x1
const/16 v4, 0x2d
aput-char v4, v0, v1
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I
if-lt v1, v4, :cond_1d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V
:cond_1d
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
aget-byte v1, v1, v4
and-int/lit16 v1, v1, 0xff
move v10, v3
move v3, v1
move v1, v10
:goto_2c
const/4 v4, 0x0
const/4 v5, 0x0
move v10, v4
move v4, v3
move-object v3, v0
move v0, v10
:goto_32
const/16 v6, 0x30
if-lt v4, v6, :cond_1d5
const/16 v6, 0x39
if-le v4, v6, :cond_133
move v10, v5
move v5, v4
move-object v4, v3
move v3, v1
move v1, v0
move v0, v10
:goto_40
if-nez v1, :cond_62
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Missing integer part (next char "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {v5}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_getCharDesc(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ")"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v6}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V
:cond_62
const/4 v6, 0x0
const/16 v7, 0x2e
if-ne v5, v7, :cond_1cd
add-int/lit8 v7, v3, 0x1
int-to-char v8, v5
aput-char v8, v4, v3
move v3, v6
move v6, v5
move-object v5, v4
move v4, v7
:goto_70
iget v7, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I
if-lt v7, v8, :cond_17d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z
move-result v7
if-nez v7, :cond_17d
const/4 v0, 0x1
:cond_7d
if-nez v3, :cond_84
const-string v7, "Decimal point not followed by a digit"
invoke-virtual {p0, v6, v7}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V
:cond_84
move v10, v3
move v3, v0
move v0, v10
:goto_87
const/4 v7, 0x0
const/16 v8, 0x65
if-eq v6, v8, :cond_90
const/16 v8, 0x45
if-ne v6, v8, :cond_1c8
:cond_90
array-length v8, v5
if-lt v4, v8, :cond_9d
iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v4
const/4 v5, 0x0
move v10, v5
move-object v5, v4
move v4, v10
:cond_9d
add-int/lit8 v8, v4, 0x1
int-to-char v6, v6
aput-char v6, v5, v4
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
iget v6, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I
if-lt v4, v6, :cond_ab
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V
:cond_ab
iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B
iget v6, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
add-int/lit8 v9, v6, 0x1
iput v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
aget-byte v4, v4, v6
and-int/lit16 v4, v4, 0xff
const/16 v6, 0x2d
if-eq v4, v6, :cond_bf
const/16 v6, 0x2b
if-ne v4, v6, :cond_1c1
:cond_bf
array-length v6, v5
if-lt v8, v6, :cond_1bd
iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v5
const/4 v6, 0x0
move v10, v6
move-object v6, v5
move v5, v10
:goto_cc
add-int/lit8 v8, v5, 0x1
int-to-char v4, v4
aput-char v4, v6, v5
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
iget v5, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I
if-lt v4, v5, :cond_da
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V
:cond_da
iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B
iget v5, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
add-int/lit8 v9, v5, 0x1
iput v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
aget-byte v4, v4, v5
and-int/lit16 v4, v4, 0xff
move v5, v8
move v10, v7
move v7, v4
move v4, v10
:goto_ea
const/16 v8, 0x39
if-gt v7, v8, :cond_1b8
const/16 v8, 0x30
if-lt v7, v8, :cond_1b8
add-int/lit8 v4, v4, 0x1
array-length v8, v6
if-lt v5, v8, :cond_101
iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v5
const/4 v6, 0x0
move v10, v6
move-object v6, v5
move v5, v10
:cond_101
add-int/lit8 v8, v5, 0x1
int-to-char v9, v7
aput-char v9, v6, v5
iget v5, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I
if-lt v5, v9, :cond_1a8
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z
move-result v5
if-nez v5, :cond_1a8
const/4 v3, 0x1
move v5, v8
move v10, v3
move v3, v4
move v4, v10
:goto_117
if-nez v3, :cond_11e
const-string v6, "Exponent indicator not followed by a digit"
invoke-virtual {p0, v7, v6}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V
:cond_11e
:goto_11e
if-nez v4, :cond_126
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
const/4 v6, 0x1
sub-int/2addr v4, v6
iput v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
:cond_126
iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v4, v5}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V
invoke-virtual {p0, v2, v1, v0, v3}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;
move-result-object v0
return-object v0
:cond_130
const/4 v2, 0x0
goto/16 :goto_c
:cond_133
add-int/lit8 v0, v0, 0x1
const/4 v6, 0x2
if-ne v0, v6, :cond_146
const/4 v6, 0x1
sub-int v6, v1, v6
aget-char v6, v3, v6
const/16 v7, 0x30
if-ne v6, v7, :cond_146
const-string v6, "Leading zeroes not allowed"
invoke-virtual {p0, v6}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V
:cond_146
array-length v6, v3
if-lt v1, v6, :cond_153
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v1
const/4 v3, 0x0
move v10, v3
move-object v3, v1
move v1, v10
:cond_153
add-int/lit8 v6, v1, 0x1
int-to-char v4, v4
aput-char v4, v3, v1
iget v1, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I
if-lt v1, v4, :cond_16d
invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z
move-result v1
if-nez v1, :cond_16d
const/4 v1, 0x0
const/4 v4, 0x1
move v5, v1
move v1, v0
move v0, v4
move-object v4, v3
move v3, v6
goto/16 :goto_40
:cond_16d
iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B
iget v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
aget-byte v1, v1, v4
and-int/lit16 v1, v1, 0xff
move v4, v1
move v1, v6
goto/16 :goto_32
:cond_17d
iget-object v6, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B
iget v7, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
add-int/lit8 v8, v7, 0x1
iput v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
aget-byte v6, v6, v7
and-int/lit16 v6, v6, 0xff
const/16 v7, 0x30
if-lt v6, v7, :cond_7d
const/16 v7, 0x39
if-gt v6, v7, :cond_7d
add-int/lit8 v3, v3, 0x1
array-length v7, v5
if-lt v4, v7, :cond_1a0
iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;
invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C
move-result-object v4
const/4 v5, 0x0
move v10, v5
move-object v5, v4
move v4, v10
:cond_1a0
add-int/lit8 v7, v4, 0x1
int-to-char v8, v6
aput-char v8, v5, v4
move v4, v7
goto/16 :goto_70
:cond_1a8
iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B
iget v7, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
add-int/lit8 v9, v7, 0x1
iput v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I
aget-byte v5, v5, v7
and-int/lit16 v5, v5, 0xff
move v7, v5
move v5, v8
goto/16 :goto_ea
:cond_1b8
move v10, v4
move v4, v3
move v3, v10
goto/16 :goto_117
:cond_1bd
move-object v6, v5
move v5, v8
goto/16 :goto_cc
:cond_1c1
move-object v6, v5
move v5, v8
move v10, v7
move v7, v4
move v4, v10
goto/16 :goto_ea
:cond_1c8
move v5, v4
move v4, v3
move v3, v7
goto/16 :goto_11e
:cond_1cd
move v10, v6
move v6, v5
move-object v5, v4
move v4, v3
move v3, v0
move v0, v10
goto/16 :goto_87
:cond_1d5
move v10, v5
move v5, v4
move-object v4, v3
move v3, v1
move v1, v0
move v0, v10
goto/16 :goto_40
:cond_1dd
move v3, p1
goto/16 :goto_2c
.end method