.class public final Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;
.super Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;
.source "WriterBasedJsonGenerator.java"
.field protected static final HEX_CHARS:[C = null
.field protected static final SHORT_WRITE:I = 0x20
.field protected _currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
.field protected _entityBuffer:[C
.field protected _outputBuffer:[C
.field protected _outputEnd:I
.field protected _outputHead:I
.field protected _outputTail:I
.field protected final _writer:Ljava/io/Writer;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/Writer;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iput-object p4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
array-length v0, v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
return-void
.end method
.method private _allocateEntityBuffer()[C
.registers 6
const/16 v4, 0x75
const/16 v3, 0x30
const/16 v2, 0x5c
const/16 v0, 0xe
new-array v0, v0, [C
const/4 v1, 0x0
aput-char v2, v0, v1
const/4 v1, 0x2
aput-char v2, v0, v1
const/4 v1, 0x3
aput-char v4, v0, v1
const/4 v1, 0x4
aput-char v3, v0, v1
const/4 v1, 0x5
aput-char v3, v0, v1
const/16 v1, 0x8
aput-char v2, v0, v1
const/16 v1, 0x9
aput-char v4, v0, v1
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C
return-object v0
.end method
.method private _appendCharacterEscape(CI)V
.registers 9
const/16 v3, 0x5c
const/16 v4, 0x30
if-ltz p2, :cond_27
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x2
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v0, v1, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
int-to-char v2, p2
aput-char v2, v0, v1
:goto_26
return-void
:cond_27
const/4 v0, -0x2
if-eq p2, v0, :cond_82
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x2
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v0, v1, :cond_35
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_35
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
add-int/lit8 v2, v0, 0x1
aput-char v3, v1, v0
add-int/lit8 v0, v2, 0x1
const/16 v3, 0x75
aput-char v3, v1, v2
const/16 v2, 0xff
if-le p1, v2, :cond_79
shr-int/lit8 v2, p1, 0x8
and-int/lit16 v2, v2, 0xff
add-int/lit8 v3, v0, 0x1
sget-object v4, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v5, v2, 0x4
aget-char v4, v4, v5
aput-char v4, v1, v0
add-int/lit8 v0, v3, 0x1
sget-object v4, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v4, v2
aput-char v2, v1, v3
and-int/lit16 v2, p1, 0xff
int-to-char p1, v2
:goto_62
add-int/lit8 v2, v0, 0x1
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v4, p1, 0x4
aget-char v3, v3, v4
aput-char v3, v1, v0
add-int/lit8 v0, v2, 0x1
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v4, p1, 0xf
aget-char v3, v3, v4
aput-char v3, v1, v2
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
goto :goto_26
:cond_79
add-int/lit8 v2, v0, 0x1
aput-char v4, v1, v0
add-int/lit8 v0, v2, 0x1
aput-char v4, v1, v2
goto :goto_62
:cond_82
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
if-nez v0, :cond_a9
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;
move-result-object v0
invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
:goto_90
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v2, v1
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v2, v3, :cond_b3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v1, v2, :cond_b3
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
goto/16 :goto_26
:cond_a9
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
goto :goto_90
:cond_b3
const/4 v2, 0x0
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
goto/16 :goto_26
.end method
.method private _prependOrWriteCharacterEscape([CIICI)I
.registers 13
const/16 v5, 0x30
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v6, 0x6
if-ltz p5, :cond_29
if-le p2, v3, :cond_18
if-ge p2, p3, :cond_18
add-int/lit8 p2, p2, -0x2
const/16 v0, 0x5c
aput-char v0, p1, p2
add-int/lit8 v0, p2, 0x1
int-to-char v1, p5
aput-char v1, p1, v0
:goto_17
return p2
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C
if-nez v0, :cond_20
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C
move-result-object v0
:cond_20
int-to-char v1, p5
aput-char v1, v0, v3
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V
goto :goto_17
:cond_29
const/4 v0, -0x2
if-eq p5, v0, :cond_db
const/4 v0, 0x5
if-le p2, v0, :cond_7c
if-ge p2, p3, :cond_7c
add-int/lit8 v0, p2, -0x6
add-int/lit8 v1, v0, 0x1
const/16 v2, 0x5c
aput-char v2, p1, v0
add-int/lit8 v0, v1, 0x1
const/16 v2, 0x75
aput-char v2, p1, v1
const/16 v1, 0xff
if-le p4, v1, :cond_73
shr-int/lit8 v1, p4, 0x8
and-int/lit16 v1, v1, 0xff
add-int/lit8 v2, v0, 0x1
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v4, v1, 0x4
aget-char v3, v3, v4
aput-char v3, p1, v0
add-int/lit8 v0, v2, 0x1
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v1, v1, 0xf
aget-char v1, v3, v1
aput-char v1, p1, v2
and-int/lit16 v1, p4, 0xff
int-to-char p4, v1
:goto_5e
add-int/lit8 v1, v0, 0x1
sget-object v2, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v3, p4, 0x4
aget-char v2, v2, v3
aput-char v2, p1, v0
sget-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v2, p4, 0xf
aget-char v0, v0, v2
aput-char v0, p1, v1
add-int/lit8 p2, v1, -0x5
goto :goto_17
:cond_73
add-int/lit8 v1, v0, 0x1
aput-char v5, p1, v0
add-int/lit8 v0, v1, 0x1
aput-char v5, p1, v1
goto :goto_5e
:cond_7c
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C
if-nez v0, :cond_84
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C
move-result-object v0
:cond_84
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
const/16 v1, 0xff
if-le p4, v1, :cond_c3
shr-int/lit8 v1, p4, 0x8
and-int/lit16 v1, v1, 0xff
and-int/lit16 v2, p4, 0xff
const/16 v3, 0xa
sget-object v4, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v5, v1, 0x4
aget-char v4, v4, v5
aput-char v4, v0, v3
const/16 v3, 0xb
sget-object v4, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v1, v1, 0xf
aget-char v1, v4, v1
aput-char v1, v0, v3
const/16 v1, 0xc
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v4, v2, 0x4
aget-char v3, v3, v4
aput-char v3, v0, v1
const/16 v1, 0xd
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v3, v2
aput-char v2, v0, v1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
const/16 v2, 0x8
invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_17
:cond_c3
sget-object v1, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v2, p4, 0x4
aget-char v1, v1, v2
aput-char v1, v0, v6
const/4 v1, 0x7
sget-object v2, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v3, p4, 0xf
aget-char v2, v2, v3
aput-char v2, v0, v1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_17
:cond_db
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
if-nez v0, :cond_f7
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;
move-result-object v0
invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
:goto_e9
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lt p2, v1, :cond_101
if-ge p2, p3, :cond_101
sub-int/2addr p2, v1
invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V
goto/16 :goto_17
:cond_f7
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
goto :goto_e9
:cond_101
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
goto/16 :goto_17
.end method
.method private _prependOrWriteCharacterEscape(CI)V
.registers 11
const/16 v7, 0x5c
const/16 v3, 0x30
const/4 v5, 0x0
const/4 v4, 0x2
const/4 v6, 0x6
if-ltz p2, :cond_35
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-lt v0, v4, :cond_1f
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
add-int/lit8 v2, v0, 0x1
aput-char v7, v1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
int-to-char v1, p2
aput-char v1, v0, v2
:goto_1e
return-void
:cond_1f
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C
if-nez v0, :cond_27
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C
move-result-object v0
:cond_27
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
const/4 v1, 0x1
int-to-char v2, p2
aput-char v2, v0, v1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v1, v0, v5, v4}, Ljava/io/Writer;->write([CII)V
goto :goto_1e
:cond_35
const/4 v0, -0x2
if-eq p2, v0, :cond_e8
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-lt v0, v6, :cond_89
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, -0x6
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
aput-char v7, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x75
aput-char v2, v1, v0
const/16 v2, 0xff
if-le p1, v2, :cond_80
shr-int/lit8 v2, p1, 0x8
and-int/lit16 v2, v2, 0xff
add-int/lit8 v0, v0, 0x1
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v4, v2, 0x4
aget-char v3, v3, v4
aput-char v3, v1, v0
add-int/lit8 v0, v0, 0x1
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v3, v2
aput-char v2, v1, v0
and-int/lit16 v2, p1, 0xff
int-to-char p1, v2
:goto_6b
add-int/lit8 v0, v0, 0x1
sget-object v2, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v3, p1, 0x4
aget-char v2, v2, v3
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
sget-object v2, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v3, p1, 0xf
aget-char v2, v2, v3
aput-char v2, v1, v0
goto :goto_1e
:cond_80
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
goto :goto_6b
:cond_89
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C
if-nez v0, :cond_91
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C
move-result-object v0
:cond_91
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
const/16 v1, 0xff
if-le p1, v1, :cond_d0
shr-int/lit8 v1, p1, 0x8
and-int/lit16 v1, v1, 0xff
and-int/lit16 v2, p1, 0xff
const/16 v3, 0xa
sget-object v4, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v5, v1, 0x4
aget-char v4, v4, v5
aput-char v4, v0, v3
const/16 v3, 0xb
sget-object v4, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v1, v1, 0xf
aget-char v1, v4, v1
aput-char v1, v0, v3
const/16 v1, 0xc
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v4, v2, 0x4
aget-char v3, v3, v4
aput-char v3, v0, v1
const/16 v1, 0xd
sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v3, v2
aput-char v2, v0, v1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
const/16 v2, 0x8
invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_1e
:cond_d0
sget-object v1, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
shr-int/lit8 v2, p1, 0x4
aget-char v1, v1, v2
aput-char v1, v0, v6
const/4 v1, 0x7
sget-object v2, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C
and-int/lit8 v3, p1, 0xf
aget-char v2, v2, v3
aput-char v2, v0, v1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_1e
:cond_e8
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
if-nez v0, :cond_10a
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;
move-result-object v0
invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
:goto_f6
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-lt v2, v1, :cond_114
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v2, v1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {v0, v5, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V
goto/16 :goto_1e
:cond_10a
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
goto :goto_f6
:cond_114
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
goto/16 :goto_1e
.end method
.method private _readMore(Ljava/io/InputStream;[BIII)I
.registers 10
const/4 v0, 0x0
:goto_1
if-ge p3, p4, :cond_e
add-int/lit8 v1, v0, 0x1
add-int/lit8 v2, p3, 0x1
aget-byte v3, p2, p3
aput-byte v3, p2, v0
move v0, v1
move p3, v2
goto :goto_1
:cond_e
array-length v1, p2
invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I
move-result v1
:cond_13
sub-int v2, v1, v0
if-nez v2, :cond_18
:cond_17
:goto_17
return v0
:cond_18
invoke-virtual {p1, p2, v0, v2}, Ljava/io/InputStream;->read([BII)I
move-result v2
if-ltz v2, :cond_17
add-int/2addr v0, v2
const/4 v2, 0x3
if-lt v0, v2, :cond_13
goto :goto_17
.end method
.method private _writeLongString(Ljava/lang/String;)V
.registers 8
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
move v0, v1
:cond_9
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
add-int v4, v0, v2
if-le v4, v3, :cond_11
sub-int v2, v3, v0
:cond_11
add-int v4, v0, v2
iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {p1, v0, v4, v5, v1}, Ljava/lang/String;->getChars(II[CI)V
iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
if-eqz v4, :cond_23
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegmentCustom(I)V
:goto_1f
add-int/2addr v0, v2
if-lt v0, v3, :cond_9
return-void
:cond_23
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
if-eqz v4, :cond_2d
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegmentASCII(II)V
goto :goto_1f
:cond_2d
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegment(I)V
goto :goto_1f
.end method
.method private _writeNull()V
.registers 5
const/16 v3, 0x6c
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_d
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
const/16 v2, 0x6e
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x75
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
return-void
.end method
.method private _writeQuotedInt(I)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0xd
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
return-void
.end method
.method private _writeQuotedLong(J)V
.registers 7
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x17
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
return-void
.end method
.method private _writeQuotedRaw(Ljava/lang/Object;)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_25
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_25
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
return-void
.end method
.method private _writeQuotedShort(S)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x8
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
return-void
.end method
.method private _writeSegment(I)V
.registers 10
iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
array-length v7, v6
const/4 v0, 0x0
move v1, v0
:goto_5
if-ge v0, p1, :cond_1e
:cond_7
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
aget-char v4, v2, v0
if-ge v4, v7, :cond_1f
aget v2, v6, v4
if-eqz v2, :cond_1f
:goto_11
sub-int v2, v0, v1
if-lez v2, :cond_24
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {v3, v5, v1, v2}, Ljava/io/Writer;->write([CII)V
if-lt v0, p1, :cond_24
:cond_1e
return-void
:cond_1f
add-int/lit8 v0, v0, 0x1
if-lt v0, p1, :cond_7
goto :goto_11
:cond_24
add-int/lit8 v2, v0, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
aget v5, v6, v4
move-object v0, p0
move v3, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I
move-result v0
move v1, v0
move v0, v2
goto :goto_5
.end method
.method private _writeSegmentASCII(II)V
.registers 12
const/4 v0, 0x0
iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
array-length v1, v6
add-int/lit8 v2, p2, 0x1
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v7
move v2, v0
move v1, v0
:goto_c
if-ge v1, p1, :cond_25
:cond_e
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
aget-char v4, v3, v1
if-ge v4, v7, :cond_26
aget v5, v6, v4
if-eqz v5, :cond_2a
:goto_18
sub-int v0, v1, v2
if-lez v0, :cond_31
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {v3, v8, v2, v0}, Ljava/io/Writer;->write([CII)V
if-lt v1, p1, :cond_31
:cond_25
return-void
:cond_26
if-le v4, p2, :cond_2b
const/4 v5, -0x1
goto :goto_18
:cond_2a
move v0, v5
:cond_2b
add-int/lit8 v1, v1, 0x1
if-lt v1, p1, :cond_e
move v5, v0
goto :goto_18
:cond_31
add-int/lit8 v2, v1, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
move-object v0, p0
move v3, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I
move-result v0
move v1, v2
move v2, v0
move v0, v5
goto :goto_c
.end method
.method private _writeSegmentCustom(I)V
.registers 13
const/4 v1, 0x0
iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
const/4 v2, 0x1
if-ge v0, v2, :cond_31
const v0, 0xffff
move v6, v0
:goto_c
array-length v0, v7
add-int/lit8 v2, v6, 0x1
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v8
iget-object v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
move v2, v1
move v0, v1
:goto_17
if-ge v1, p1, :cond_30
:cond_19
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
aget-char v4, v3, v1
if-ge v4, v8, :cond_35
aget v5, v7, v4
if-eqz v5, :cond_43
:goto_23
sub-int v0, v1, v2
if-lez v0, :cond_4a
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
iget-object v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {v3, v10, v2, v0}, Ljava/io/Writer;->write([CII)V
if-lt v1, p1, :cond_4a
:cond_30
return-void
:cond_31
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
move v6, v0
goto :goto_c
:cond_35
if-le v4, v6, :cond_39
const/4 v5, -0x1
goto :goto_23
:cond_39
invoke-virtual {v9, v4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;
move-result-object v3
iput-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v3, :cond_44
const/4 v5, -0x2
goto :goto_23
:cond_43
move v0, v5
:cond_44
add-int/lit8 v1, v1, 0x1
if-lt v1, p1, :cond_19
move v5, v0
goto :goto_23
:cond_4a
add-int/lit8 v2, v1, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
move-object v0, p0
move v3, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I
move-result v0
move v1, v2
move v2, v0
move v0, v5
goto :goto_17
.end method
.method private _writeString(Ljava/lang/String;)V
.registers 6
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v0, v1, :cond_c
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeLongString(Ljava/lang/String;)V
:goto_b
return-void
:cond_c
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v1, v0
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v1, v2, :cond_16
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_16
const/4 v1, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
if-eqz v1, :cond_26
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringCustom(I)V
goto :goto_b
:cond_26
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
if-eqz v1, :cond_30
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringASCII(II)V
goto :goto_b
:cond_30
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString2(I)V
goto :goto_b
.end method
.method private _writeString([CII)V
.registers 12
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
if-eqz v0, :cond_8
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringCustom([CII)V
:goto_7
:cond_7
return-void
:cond_8
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
if-eqz v0, :cond_12
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringASCII([CIII)V
goto :goto_7
:cond_12
add-int v2, p3, p2
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
array-length v4, v3
move v1, p2
:goto_18
if-ge v1, v2, :cond_7
move v0, v1
:cond_1b
aget-char v5, p1, v0
if-ge v5, v4, :cond_4d
aget v5, v3, v5
if-eqz v5, :cond_4d
:goto_23
sub-int v5, v0, v1
const/16 v6, 0x20
if-ge v5, v6, :cond_52
iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v6, v5
iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v6, v7, :cond_33
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_33
if-lez v5, :cond_41
iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, v1, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v1, v5
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:cond_41
:goto_41
if-ge v0, v2, :cond_7
add-int/lit8 v1, v0, 0x1
aget-char v0, p1, v0
aget v5, v3, v0
invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V
goto :goto_18
:cond_4d
add-int/lit8 v0, v0, 0x1
if-lt v0, v2, :cond_1b
goto :goto_23
:cond_52
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v6, p1, v1, v5}, Ljava/io/Writer;->write([CII)V
goto :goto_41
.end method
.method private _writeString2(I)V
.registers 9
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, p1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
array-length v2, v1
:goto_6
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-ge v3, v0, :cond_3e
:cond_a
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aget-char v3, v3, v4
if-ge v3, v2, :cond_36
aget v3, v1, v3
if-eqz v3, :cond_36
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
sub-int/2addr v3, v4
if-lez v3, :cond_26
iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V
:cond_26
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aget-char v3, v3, v4
aget v4, v1, v3
invoke-direct {p0, v3, v4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V
goto :goto_6
:cond_36
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-lt v3, v0, :cond_a
:cond_3e
return-void
.end method
.method private _writeStringASCII(II)V
.registers 12
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int v1, v0, p1
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
array-length v0, v2
add-int/lit8 v3, p2, 0x1
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v3
:goto_d
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-ge v0, v1, :cond_43
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aget-char v4, v0, v4
if-ge v4, v3, :cond_37
aget v0, v2, v4
if-eqz v0, :cond_3b
:goto_1d
iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
sub-int/2addr v5, v6
if-lez v5, :cond_2d
iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V
:cond_2d
iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V
goto :goto_d
:cond_37
if-le v4, p2, :cond_3b
const/4 v0, -0x1
goto :goto_1d
:cond_3b
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-lt v0, v1, :cond_11
:cond_43
return-void
.end method
.method private _writeStringASCII([CIII)V
.registers 15
add-int v3, p3, p2
iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
array-length v0, v4
add-int/lit8 v1, p4, 0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v5
const/4 v0, 0x0
move v2, p2
:goto_d
if-ge v2, v3, :cond_38
move v1, v2
:cond_10
aget-char v6, p1, v1
if-ge v6, v5, :cond_39
aget v0, v4, v6
if-eqz v0, :cond_3d
:goto_18
sub-int v7, v1, v2
const/16 v8, 0x20
if-ge v7, v8, :cond_42
iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v8, v7
iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v8, v9, :cond_28
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_28
if-lez v7, :cond_36
iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, v2, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v2, v7
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:goto_36
:cond_36
if-lt v1, v3, :cond_4b
:cond_38
return-void
:cond_39
if-le v6, p4, :cond_3d
const/4 v0, -0x1
goto :goto_18
:cond_3d
add-int/lit8 v1, v1, 0x1
if-lt v1, v3, :cond_10
goto :goto_18
:cond_42
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v8, p1, v2, v7}, Ljava/io/Writer;->write([CII)V
goto :goto_36
:cond_4b
add-int/lit8 v2, v1, 0x1
invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V
goto :goto_d
.end method
.method private _writeStringCustom(I)V
.registers 13
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int v2, v0, p1
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
const/4 v1, 0x1
if-ge v0, v1, :cond_41
const v0, 0xffff
:goto_e
array-length v1, v3
add-int/lit8 v4, v0, 0x1
invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I
move-result v4
iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
:goto_17
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-ge v1, v2, :cond_5a
:cond_1b
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aget-char v6, v1, v6
if-ge v6, v4, :cond_44
aget v1, v3, v6
if-eqz v1, :cond_52
:goto_27
iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
sub-int/2addr v7, v8
if-lez v7, :cond_37
iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
iget-object v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
invoke-virtual {v8, v9, v10, v7}, Ljava/io/Writer;->write([CII)V
:cond_37
iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-direct {p0, v6, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V
goto :goto_17
:cond_41
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
goto :goto_e
:cond_44
if-le v6, v0, :cond_48
const/4 v1, -0x1
goto :goto_27
:cond_48
invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;
move-result-object v1
iput-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v1, :cond_52
const/4 v1, -0x2
goto :goto_27
:cond_52
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-lt v1, v2, :cond_1b
:cond_5a
return-void
.end method
.method private _writeStringCustom([CII)V
.registers 16
add-int v4, p3, p2
iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
const/4 v1, 0x1
if-ge v0, v1, :cond_43
const v0, 0xffff
:goto_c
array-length v1, v5
add-int/lit8 v2, v0, 0x1
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v6
iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
const/4 v1, 0x0
move v3, p2
:goto_17
if-ge v3, v4, :cond_42
move v2, v3
:cond_1a
aget-char v8, p1, v2
if-ge v8, v6, :cond_46
aget v1, v5, v8
if-eqz v1, :cond_54
:goto_22
sub-int v9, v2, v3
const/16 v10, 0x20
if-ge v9, v10, :cond_59
iget v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v10, v9
iget v11, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v10, v11, :cond_32
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_32
if-lez v9, :cond_40
iget-object v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v11, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, v3, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v3, v9
iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:goto_40
:cond_40
if-lt v2, v4, :cond_62
:cond_42
return-void
:cond_43
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I
goto :goto_c
:cond_46
if-le v8, v0, :cond_4a
const/4 v1, -0x1
goto :goto_22
:cond_4a
invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;
move-result-object v9
iput-object v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v9, :cond_54
const/4 v1, -0x2
goto :goto_22
:cond_54
add-int/lit8 v2, v2, 0x1
if-lt v2, v4, :cond_1a
goto :goto_22
:cond_59
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget-object v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v10, p1, v3, v9}, Ljava/io/Writer;->write([CII)V
goto :goto_40
:cond_62
add-int/lit8 v3, v2, 0x1
invoke-direct {p0, v8, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V
goto :goto_17
.end method
.method private writeRawLong(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int v1, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v5, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
sub-int/2addr v0, v1
:goto_1b
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-le v0, v2, :cond_32
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
add-int v3, v1, v2
iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V
iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
add-int/2addr v1, v2
sub-int/2addr v0, v2
goto :goto_1b
:cond_32
add-int v2, v1, v0
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {p1, v1, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V
iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
return-void
.end method
.method protected _flushBuffer()V
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
sub-int/2addr v0, v1
if-lez v0, :cond_15
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
const/4 v2, 0x0
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V
:cond_15
return-void
.end method
.method protected _releaseBuffers()V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
if-eqz v0, :cond_c
const/4 v1, 0x0
iput-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseConcatBuffer([C)V
:cond_c
return-void
.end method
.method protected _verifyPrettyValueWrite(Ljava/lang/String;I)V
.registers 4
packed-switch p2, :pswitch_data_36
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_throwInternal()V
:goto_6
:cond_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_6
:pswitch_d
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_6
:pswitch_13
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_6
:pswitch_19
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_6
:cond_27
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z
move-result v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_6
nop
:pswitch_data_36
.packed-switch 0x0
:pswitch_19
:pswitch_7
:pswitch_d
:pswitch_13
.end packed-switch
.end method
.method protected _verifyValueWrite(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I
move-result v0
const/4 v1, 0x5
if-ne v0, v1, :cond_25
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", expecting field name"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V
:cond_25
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-nez v1, :cond_56
packed-switch v0, :pswitch_data_5a
:goto_2c
:cond_2c
return-void
:pswitch_2d
const/16 v0, 0x2c
:goto_2f
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v1, v2, :cond_38
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_38
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v0, v1, v2
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
goto :goto_2c
:pswitch_45
const/16 v0, 0x3a
goto :goto_2f
:pswitch_48
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
goto :goto_2c
:cond_56
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V
goto :goto_2c
:pswitch_data_5a
.packed-switch 0x1
:pswitch_2d
:pswitch_45
:pswitch_48
.end packed-switch
.end method
.method protected _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
.registers 15
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v0, -0x3
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
add-int/lit8 v10, v1, -0x6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I
move-result v1
shr-int/lit8 v1, v1, 0x2
move v9, v1
move v8, v6
move v4, v6
move v3, v6
:goto_11
if-le v3, v0, :cond_46
array-length v5, p3
move-object v0, p0
move-object v1, p2
move-object v2, p3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I
move-result v4
const/4 v0, 0x3
if-ge v4, v0, :cond_43
if-ge v6, v4, :cond_97
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-le v0, v10, :cond_27
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_27
aget-byte v0, p3, v6
shl-int/lit8 v0, v0, 0x10
if-ge v7, v4, :cond_94
aget-byte v1, p3, v7
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v1, v0
const/4 v0, 0x2
:goto_35
add-int v2, v8, v0
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v1, v0, v3, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
move v0, v2
:goto_42
return v0
:cond_43
add-int/lit8 v0, v4, -0x3
move v3, v6
:cond_46
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-le v1, v10, :cond_4d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_4d
add-int/lit8 v1, v3, 0x1
aget-byte v2, p3, v3
shl-int/lit8 v2, v2, 0x8
add-int/lit8 v5, v1, 0x1
aget-byte v1, p3, v1
and-int/lit16 v1, v1, 0xff
or-int/2addr v1, v2
shl-int/lit8 v1, v1, 0x8
add-int/lit8 v3, v5, 0x1
aget-byte v2, p3, v5
and-int/lit16 v2, v2, 0xff
or-int/2addr v1, v2
add-int/lit8 v8, v8, 0x3
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v1, v2, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I
move-result v1
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v1, v9, -0x1
if-gtz v1, :cond_91
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v5, v2, 0x1
iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v5, 0x5c
aput-char v5, v1, v2
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v5, v2, 0x1
iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v5, 0x6e
aput-char v5, v1, v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I
move-result v1
shr-int/lit8 v1, v1, 0x2
:cond_91
move v9, v1
goto/16 :goto_11
:cond_94
move v1, v0
move v0, v7
goto :goto_35
:cond_97
move v0, v8
goto :goto_42
.end method
.method protected _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
.registers 14
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v0, -0x3
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
add-int/lit8 v7, v1, -0x6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I
move-result v1
shr-int/lit8 v1, v1, 0x2
move v6, v1
move v5, p4
:goto_f
const/4 v1, 0x2
if-le v5, v1, :cond_1f
if-le v3, v0, :cond_4f
move-object v0, p0
move-object v1, p2
move-object v2, p3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I
move-result v4
const/4 v3, 0x0
const/4 v0, 0x3
if-ge v4, v0, :cond_4d
:cond_1f
if-lez v5, :cond_4c
move-object v0, p0
move-object v1, p2
move-object v2, p3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I
move-result v0
const/4 v1, 0x0
if-lez v0, :cond_4c
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-le v2, v7, :cond_32
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_32
const/4 v2, 0x1
aget-byte v1, p3, v1
shl-int/lit8 v1, v1, 0x10
if-ge v2, v0, :cond_9d
aget-byte v0, p3, v2
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v0, v0, 0x8
or-int/2addr v1, v0
const/4 v0, 0x2
:goto_41
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v1, v0, v2, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I
move-result v1
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v5, v0
:cond_4c
return v5
:cond_4d
add-int/lit8 v0, v4, -0x3
:cond_4f
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-le v1, v7, :cond_56
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_56
add-int/lit8 v1, v3, 0x1
aget-byte v2, p3, v3
shl-int/lit8 v2, v2, 0x8
add-int/lit8 v8, v1, 0x1
aget-byte v1, p3, v1
and-int/lit16 v1, v1, 0xff
or-int/2addr v1, v2
shl-int/lit8 v1, v1, 0x8
add-int/lit8 v3, v8, 0x1
aget-byte v2, p3, v8
and-int/lit16 v2, v2, 0xff
or-int/2addr v1, v2
add-int/lit8 v5, v5, -0x3
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v1, v2, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I
move-result v1
iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v1, v6, -0x1
if-gtz v1, :cond_9a
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v6, v2, 0x1
iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v6, 0x5c
aput-char v6, v1, v2
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v6, v2, 0x1
iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v6, 0x6e
aput-char v6, v1, v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I
move-result v1
shr-int/lit8 v1, v1, 0x2
:cond_9a
move v6, v1
goto/16 :goto_f
:cond_9d
const/4 v0, 0x1
goto :goto_41
.end method
.method protected _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
.registers 11
add-int/lit8 v1, p4, -0x3
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
add-int/lit8 v2, v0, -0x6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I
move-result v0
shr-int/lit8 v0, v0, 0x2
:cond_c
:goto_c
if-gt p3, v1, :cond_58
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-le v3, v2, :cond_15
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_15
add-int/lit8 v3, p3, 0x1
aget-byte v4, p2, p3
shl-int/lit8 v4, v4, 0x8
add-int/lit8 v5, v3, 0x1
aget-byte v3, p2, v3
and-int/lit16 v3, v3, 0xff
or-int/2addr v3, v4
shl-int/lit8 v3, v3, 0x8
add-int/lit8 p3, v5, 0x1
aget-byte v4, p2, v5
and-int/lit16 v4, v4, 0xff
or-int/2addr v3, v4
iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v3, v4, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I
move-result v3
iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, -0x1
if-gtz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v4, 0x5c
aput-char v4, v0, v3
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v4, 0x6e
aput-char v4, v0, v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I
move-result v0
shr-int/lit8 v0, v0, 0x2
goto :goto_c
:cond_58
sub-int v1, p4, p3
if-lez v1, :cond_7f
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
if-le v0, v2, :cond_63
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_63
add-int/lit8 v2, p3, 0x1
aget-byte v0, p2, p3
shl-int/lit8 v0, v0, 0x10
const/4 v3, 0x2
if-ne v1, v3, :cond_75
add-int/lit8 v3, v2, 0x1
aget-byte v2, p2, v2
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x8
or-int/2addr v0, v2
:cond_75
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:cond_7f
return-void
.end method
.method public _writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
.registers 9
const/16 v5, 0x22
const/4 v4, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-eqz v0, :cond_b
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
:goto_a
return-void
:cond_b
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x1
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_16
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_16
if-eqz p2, :cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v2, 0x2c
aput-char v2, v0, v1
:cond_24
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v1
if-nez v1, :cond_35
array-length v1, v0
invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V
goto :goto_a
:cond_35
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v5, v1, v2
array-length v1, v0
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v2, v1
add-int/lit8 v2, v2, 0x1
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v2, v3, :cond_60
invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_55
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_55
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v5, v0, v1
goto :goto_a
:cond_60
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v5, v0, v1
goto :goto_a
.end method
.method protected _writeFieldName(Ljava/lang/String;Z)V
.registers 7
const/16 v3, 0x22
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-eqz v0, :cond_a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writePPFieldName(Ljava/lang/String;Z)V
:goto_9
return-void
:cond_a
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x1
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_15
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_15
if-eqz p2, :cond_23
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v2, 0x2c
aput-char v2, v0, v1
:cond_23
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-nez v0, :cond_2f
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V
goto :goto_9
:cond_2f
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_45
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
goto :goto_9
.end method
.method protected _writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
.registers 9
const/16 v5, 0x22
const/4 v4, 0x0
if-eqz p2, :cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_a
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v1
if-eqz v1, :cond_47
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v1, v2, :cond_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_1f
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v5, v1, v2
array-length v1, v0
invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_36
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_36
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v5, v0, v1
:goto_40
return-void
:cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_a
:cond_47
array-length v1, v0
invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V
goto :goto_40
.end method
.method protected _writePPFieldName(Ljava/lang/String;Z)V
.registers 7
const/16 v3, 0x22
if-eqz p2, :cond_3b
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_9
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_41
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_1a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_30
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
:goto_3a
return-void
:cond_3b
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_9
:cond_41
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V
goto :goto_3a
.end method
.method public close()V
.registers 3
invoke-super {p0}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->close()V
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
if-eqz v0, :cond_27
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_27
:goto_f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z
move-result v1
if-eqz v1, :cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndArray()V
goto :goto_f
:cond_1d
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndObject()V
goto :goto_f
:cond_27
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z
move-result v0
if-nez v0, :cond_3e
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_47
:cond_3e
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->close()V
:goto_43
:cond_43
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_releaseBuffers()V
return-void
:cond_47
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
goto :goto_43
.end method
.method public flush()V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
if-eqz v0, :cond_14
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
:cond_14
return-void
.end method
.method public getOutputTarget()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
return-object v0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
.registers 9
const/16 v4, 0x22
const-string v0, "write binary value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_10
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v4, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B
move-result-object v1
if-gez p3, :cond_3f
:try_start_22
invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
:try_end_25
.catchall {:try_start_22 .. :try_end_25} :catchall_6c
move-result p3
:cond_26
:goto_26
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_34
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_34
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v4, v0, v1
return p3
:try_start_3f
:cond_3f
invoke-virtual {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
move-result v0
if-lez v0, :cond_26
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Too few bytes available: missing "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " bytes (out of "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ")"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V
:try_end_6b
.catchall {:try_start_3f .. :try_end_6b} :catchall_6c
goto :goto_26
:catchall_6c
move-exception v0
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V
throw v0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
.registers 9
const/16 v3, 0x22
const-string v0, "write binary value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_10
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
add-int v0, p3, p4
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_28
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
return-void
.end method
.method public writeBoolean(Z)V
.registers 6
const/16 v3, 0x65
const-string v0, "write boolean value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x5
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_12
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
if-eqz p1, :cond_31
const/16 v2, 0x74
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x72
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x75
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
:goto_2c
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
return-void
:cond_31
const/16 v2, 0x66
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x61
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x6c
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x73
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
goto :goto_2c
.end method
.method public writeEndArray()V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z
move-result v0
if-nez v0, :cond_24
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Current context not an ARRAY but "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V
:cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I
move-result v1
invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
:goto_33
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-void
:cond_3c
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_45
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v2, 0x5d
aput-char v2, v0, v1
goto :goto_33
.end method
.method public writeEndObject()V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z
move-result v0
if-nez v0, :cond_24
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Current context not an object but "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V
:cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I
move-result v1
invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
:goto_33
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-void
:cond_3c
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_45
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v2, 0x7d
aput-char v2, v0, v1
goto :goto_33
.end method
.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_13
const-string v2, "Can not write a field name, expecting a value"
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V
:cond_13
if-ne v1, v0, :cond_19
:goto_15
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
return-void
:cond_19
const/4 v0, 0x0
goto :goto_15
.end method
.method public writeFieldName(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_f
const-string v2, "Can not write a field name, expecting a value"
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V
:cond_f
if-ne v1, v0, :cond_15
:goto_11
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeFieldName(Ljava/lang/String;Z)V
return-void
:cond_15
const/4 v0, 0x0
goto :goto_11
.end method
.method public writeNull()V
.registers 2
const-string v0, "write null value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V
return-void
.end method
.method public writeNumber(D)V
.registers 4
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-nez v0, :cond_18
invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z
move-result v0
if-nez v0, :cond_10
invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z
move-result v0
if-eqz v0, :cond_20
:cond_10
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_20
:cond_18
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V
:goto_1f
return-void
:cond_20
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public writeNumber(F)V
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-nez v0, :cond_18
invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z
move-result v0
if-nez v0, :cond_10
invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z
move-result v0
if-eqz v0, :cond_20
:cond_10
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_20
:cond_18
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V
:goto_1f
return-void
:cond_20
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public writeNumber(I)V
.registers 4
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-eqz v0, :cond_d
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedInt(I)V
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0xb
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
goto :goto_c
.end method
.method public writeNumber(J)V
.registers 5
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-eqz v0, :cond_d
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedLong(J)V
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x15
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
goto :goto_c
.end method
.method public writeNumber(Ljava/lang/String;)V
.registers 3
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-eqz v0, :cond_d
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V
:goto_c
return-void
:cond_d
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
goto :goto_c
.end method
.method public writeNumber(Ljava/math/BigDecimal;)V
.registers 3
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
if-nez p1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V
:goto_a
return-void
:cond_b
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-eqz v0, :cond_13
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V
goto :goto_a
:cond_13
sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
move-result v0
if-eqz v0, :cond_23
invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
goto :goto_a
:cond_23
invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
goto :goto_a
.end method
.method public writeNumber(Ljava/math/BigInteger;)V
.registers 3
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
if-nez p1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V
:goto_a
return-void
:cond_b
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-eqz v0, :cond_13
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V
goto :goto_a
:cond_13
invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
goto :goto_a
.end method
.method public writeNumber(S)V
.registers 4
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z
if-eqz v0, :cond_d
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedShort(S)V
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v0, v0, 0x6
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
goto :goto_c
.end method
.method public writeRaw(C)V
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char p1, v0, v1
return-void
.end method
.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 3
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V
return-void
.end method
.method public writeRaw(Ljava/lang/String;)V
.registers 6
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v0, v2
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v0, v2
:cond_13
if-lt v0, v1, :cond_23
const/4 v0, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:goto_22
return-void
:cond_23
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRawLong(Ljava/lang/String;)V
goto :goto_22
.end method
.method public writeRaw(Ljava/lang/String;II)V
.registers 7
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v0, v1
if-ge v0, p3, :cond_f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v0, v1
:cond_f
if-lt v0, p3, :cond_20
add-int v0, p2, p3
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, p3
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:goto_1f
return-void
:cond_20
add-int v0, p2, p3
invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRawLong(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public writeRaw([CII)V
.registers 6
const/16 v0, 0x20
if-ge p3, v0, :cond_1b
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v0, v1
if-le p3, v0, :cond_e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, p3
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:goto_1a
return-void
:cond_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
goto :goto_1a
.end method
.method public writeRawUTF8String([BII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeStartArray()V
.registers 4
const-string v0, "start an array"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_16
return-void
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_20
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v2, 0x5b
aput-char v2, v0, v1
goto :goto_16
.end method
.method public writeStartObject()V
.registers 4
const-string v0, "start an object"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_16
return-void
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_20
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
const/16 v2, 0x7b
aput-char v2, v0, v1
goto :goto_16
.end method
.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 8
const/16 v5, 0x22
const/4 v4, 0x0
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v5, v0, v1
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C
move-result-object v0
array-length v1, v0
const/16 v2, 0x20
if-ge v1, v2, :cond_4e
iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
sub-int/2addr v2, v3
if-le v1, v2, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_2e
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
:goto_3a
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_43
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v5, v0, v1
return-void
:cond_4e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;
invoke-virtual {v2, v0, v4, v1}, Ljava/io/Writer;->write([CII)V
goto :goto_3a
.end method
.method public writeString(Ljava/lang/String;)V
.registers 6
const/16 v3, 0x22
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
if-nez p1, :cond_d
invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_16
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_2c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_2c
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
goto :goto_c
.end method
.method public writeString([CII)V
.registers 8
const/16 v3, 0x22
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_10
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString([CII)V
iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I
if-lt v0, v1, :cond_26
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C
iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I
aput-char v3, v0, v1
return-void
.end method
.method public writeUTF8String([BII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportUnsupportedOperation()V
return-void
.end method