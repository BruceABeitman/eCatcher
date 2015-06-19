.class public final Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceJsonBootstrapper.java"
.field static final UTF8_BOM_1:B = -0x11t
.field static final UTF8_BOM_2:B = -0x45t
.field static final UTF8_BOM_3:B = -0x41t
.field protected _bigEndian:Z
.field private final _bufferRecyclable:Z
.field protected _bytesPerChar:I
.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;
.field protected final _in:Ljava/io/InputStream;
.field protected final _inputBuffer:[B
.field private _inputEnd:I
.field protected _inputProcessed:I
.field private _inputPtr:I
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
iput-object p2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocReadIOBuffer()[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputProcessed:I
iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;[BII)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;
iput-object p2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iput p3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int v0, p3, p4
iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
neg-int v0, p3
iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputProcessed:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z
return-void
.end method
.method private checkUTF16(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
const v2, 0xff00
and-int/2addr v2, p1
if-nez v2, :cond_f
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
:goto_a
const/4 v0, 0x2
iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
move v0, v1
:cond_e
return v0
:cond_f
and-int/lit16 v2, p1, 0xff
if-nez v2, :cond_e
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
goto :goto_a
.end method
.method private checkUTF32(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
shr-int/lit8 v2, p1, 0x8
if-nez v2, :cond_d
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
:goto_8
const/4 v0, 0x4
iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
move v0, v1
:cond_c
return v0
:cond_d
const v2, 0xffffff
and-int/2addr v2, p1
if-nez v2, :cond_16
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
goto :goto_8
:cond_16
const v2, -0xff0001
and-int/2addr v2, p1
if-nez v2, :cond_22
const-string v0, "3412"
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V
goto :goto_8
:cond_22
const v2, -0xff01
and-int/2addr v2, p1
if-nez v2, :cond_c
const-string v0, "2143"
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V
goto :goto_8
.end method
.method private handleBOM(I)Z
.registers 7
const/4 v3, 0x4
const/4 v4, 0x2
const/4 v1, 0x0
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_5e
:goto_7
ushr-int/lit8 v2, p1, 0x10
const v3, 0xfeff
if-ne v2, v3, :cond_3a
iget v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v1, v1, 0x2
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iput v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
:goto_18
return v0
:sswitch_19
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
iget v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v1, v1, 0x4
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
goto :goto_18
:sswitch_24
iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v2, v2, 0x4
iput v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
goto :goto_18
:sswitch_2f
const-string v2, "2143"
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V
:sswitch_34
const-string v2, "3412"
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V
goto :goto_7
:cond_3a
const v3, 0xfffe
if-ne v2, v3, :cond_4a
iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v2, v2, 0x2
iput v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iput v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
goto :goto_18
:cond_4a
ushr-int/lit8 v2, p1, 0x8
const v3, 0xefbbbf
if-ne v2, v3, :cond_5c
iget v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v1, v1, 0x3
iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
goto :goto_18
:cond_5c
move v0, v1
goto :goto_18
:sswitch_data_5e
.sparse-switch
-0x1010000 -> :sswitch_34
-0x20000 -> :sswitch_24
0xfeff -> :sswitch_19
0xfffe -> :sswitch_2f
.end sparse-switch
.end method
.method public static hasJSONFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;
.registers 7
const/16 v5, 0x5b
const/16 v4, 0x39
const/16 v3, 0x30
const/16 v2, 0x22
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_11
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
:cond_10
:goto_10
return-object v0
:cond_11
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B
move-result v0
const/16 v1, -0x11
if-ne v0, v1, :cond_4e
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_22
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_22
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B
move-result v0
const/16 v1, -0x45
if-eq v0, v1, :cond_2d
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_2d
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_36
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_36
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B
move-result v0
const/16 v1, -0x41
if-eq v0, v1, :cond_41
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_41
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_4a
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_4a
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B
move-result v0
:cond_4e
invoke-static {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;B)I
move-result v1
if-gez v1, :cond_57
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_57
const/16 v0, 0x7b
if-ne v1, v0, :cond_70
invoke-static {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I
move-result v0
if-gez v0, :cond_64
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_64
if-eq v0, v2, :cond_6a
const/16 v1, 0x7d
if-ne v0, v1, :cond_6d
:cond_6a
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_6d
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_70
if-ne v1, v5, :cond_87
invoke-static {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I
move-result v0
if-gez v0, :cond_7b
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_7b
const/16 v1, 0x5d
if-eq v0, v1, :cond_81
if-ne v0, v5, :cond_84
:cond_81
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_84
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_10
:cond_87
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->WEAK_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
if-eq v1, v2, :cond_10
if-gt v1, v4, :cond_8f
if-ge v1, v3, :cond_10
:cond_8f
const/16 v2, 0x2d
if-ne v1, v2, :cond_a5
invoke-static {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I
move-result v1
if-gez v1, :cond_9d
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto/16 :goto_10
:cond_9d
if-gt v1, v4, :cond_a1
if-ge v1, v3, :cond_10
:cond_a1
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto/16 :goto_10
:cond_a5
const/16 v2, 0x6e
if-ne v1, v2, :cond_b1
const-string v1, "ull"
invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;
move-result-object v0
goto/16 :goto_10
:cond_b1
const/16 v2, 0x74
if-ne v1, v2, :cond_bd
const-string v1, "rue"
invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;
move-result-object v0
goto/16 :goto_10
:cond_bd
const/16 v2, 0x66
if-ne v1, v2, :cond_c9
const-string v1, "alse"
invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;
move-result-object v0
goto/16 :goto_10
:cond_c9
sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto/16 :goto_10
.end method
.method private reportWeirdUCS4(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/io/CharConversionException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unsupported UCS-4 endianness ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") detected"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I
.registers 2
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, -0x1
:goto_7
return v0
:cond_8
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B
move-result v0
invoke-static {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;B)I
move-result v0
goto :goto_7
.end method
.method private static skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;B)I
.registers 4
:goto_0
and-int/lit16 v0, p1, 0xff
const/16 v1, 0x20
if-eq v0, v1, :cond_13
const/16 v1, 0xd
if-eq v0, v1, :cond_13
const/16 v1, 0xa
if-eq v0, v1, :cond_13
const/16 v1, 0x9
if-eq v0, v1, :cond_13
:goto_12
return v0
:cond_13
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_1b
const/4 v0, -0x1
goto :goto_12
:cond_1b
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B
move-result p1
and-int/lit16 v0, p1, 0xff
goto :goto_0
.end method
.method private static tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;
.registers 7
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
:goto_5
if-ge v0, v1, :cond_f
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z
move-result v2
if-nez v2, :cond_10
sget-object p2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;
:goto_f
:cond_f
return-object p2
:cond_10
invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B
move-result v2
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
if-eq v2, v3, :cond_1d
sget-object p2, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;
goto :goto_f
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method public constructParser(ILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ)Lcom/fasterxml/jackson/core/JsonParser;
.registers 19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->detectEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
if-ne v2, v3, :cond_26
if-eqz p5, :cond_26
move/from16 v0, p5
move/from16 v1, p6
invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
move-result-object v7
new-instance v2, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;
iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v9, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iget v10, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
iget-boolean v11, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z
move v4, p1
move-object v6, p2
invoke-direct/range {v2 .. v11}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/InputStream;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;[BIIZ)V
:goto_25
return-object v2
:cond_26
new-instance v2, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->constructReader()Ljava/io/Reader;
move-result-object v5
invoke-virtual/range {p4 .. p6}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
move-result-object v7
move v4, p1
move-object v6, p2
invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
goto :goto_25
.end method
.method public constructReader()Ljava/io/Reader;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
move-result-object v6
invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonEncoding;->bits()I
move-result v0
sparse-switch v0, :sswitch_data_60
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_15
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;
if-nez v2, :cond_2f
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
:goto_24
new-instance v1, Ljava/io/InputStreamReader;
invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
move-object v0, v1
:goto_2e
return-object v0
:cond_2f
iget v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iget v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
if-ge v0, v1, :cond_5d
new-instance v0, Lcom/fasterxml/jackson/core/io/MergedStream;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/MergedStream;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
goto :goto_24
:sswitch_43
new-instance v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v6}, Lcom/fasterxml/jackson/core/io/IOContext;->getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
move-result-object v6
invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonEncoding;->isBigEndian()Z
move-result v6
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/io/UTF32Reader;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
goto :goto_2e
:cond_5d
move-object v0, v2
goto :goto_24
nop
:sswitch_data_60
.sparse-switch
0x8 -> :sswitch_15
0x10 -> :sswitch_15
0x20 -> :sswitch_43
.end sparse-switch
.end method
.method public detectEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x4
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->ensureLoaded(I)Z
move-result v2
if-eqz v2, :cond_56
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
aget-byte v2, v2, v3
shl-int/lit8 v2, v2, 0x18
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v4, v4, 0x1
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
shl-int/lit8 v3, v3, 0x10
or-int/2addr v2, v3
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v4, v4, 0x2
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
shl-int/lit8 v3, v3, 0x8
or-int/2addr v2, v3
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v4, v4, 0x3
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
or-int/2addr v2, v3
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->handleBOM(I)Z
move-result v3
if-eqz v3, :cond_46
:goto_3c
:cond_3c
if-nez v0, :cond_79
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
:goto_40
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
return-object v0
:cond_46
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF32(I)Z
move-result v3
if-nez v3, :cond_3c
ushr-int/lit8 v2, v2, 0x10
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF16(I)Z
move-result v2
if-nez v2, :cond_3c
:cond_54
move v0, v1
goto :goto_3c
:cond_56
const/4 v2, 0x2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->ensureLoaded(I)Z
move-result v2
if-eqz v2, :cond_54
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x8
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
add-int/lit8 v4, v4, 0x1
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
or-int/2addr v2, v3
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF16(I)Z
move-result v2
if-eqz v2, :cond_54
goto :goto_3c
:cond_79
iget v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I
packed-switch v0, :pswitch_data_9e
:pswitch_7e
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_86
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
goto :goto_40
:pswitch_89
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
if-eqz v0, :cond_90
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
goto :goto_40
:cond_90
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
goto :goto_40
:pswitch_93
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z
if-eqz v0, :cond_9a
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;
goto :goto_40
:cond_9a
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;
goto :goto_40
nop
:pswitch_data_9e
.packed-switch 0x1
:pswitch_86
:pswitch_89
:pswitch_7e
:pswitch_93
.end packed-switch
.end method
.method protected ensureLoaded(I)Z
.registers 9
const/4 v0, 0x1
iget v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I
sub-int/2addr v1, v2
move v2, v1
:goto_7
if-ge v2, p1, :cond_11
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;
if-nez v1, :cond_12
const/4 v1, -0x1
:goto_e
if-ge v1, v0, :cond_23
const/4 v0, 0x0
:cond_11
return v0
:cond_12
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B
array-length v5, v5
iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
sub-int/2addr v5, v6
invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
move-result v1
goto :goto_e
:cond_23
iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
add-int/2addr v3, v1
iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I
add-int/2addr v1, v2
move v2, v1
goto :goto_7
.end method