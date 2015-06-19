.class  Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.super Ljava/lang/Object;
.source "C40Encoder.java"
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
.registers 8
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v1
sub-int v2, v1, p4
invoke-virtual {p2, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
add-int/lit8 v2, v2, -0x1
iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C
move-result v0
invoke-virtual {p0, v0, p3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I
move-result p4
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V
return p4
.end method
.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
.registers 11
invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
add-int/lit8 v6, p1, 0x1
invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C
move-result v1
add-int/lit8 v6, p1, 0x2
invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
mul-int/lit16 v6, v0, 0x640
mul-int/lit8 v7, v1, 0x28
add-int/2addr v6, v7
add-int/2addr v6, v2
add-int/lit8 v5, v6, 0x1
div-int/lit16 v6, v5, 0x100
int-to-char v3, v6
rem-int/lit16 v6, v5, 0x100
int-to-char v4, v6
new-instance v6, Ljava/lang/String;
const/4 v7, 0x2
new-array v7, v7, [C
const/4 v8, 0x0
aput-char v3, v7, v8
const/4 v8, 0x1
aput-char v4, v7, v8
invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V
return-object v6
.end method
.method static writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
.registers 4
const/4 v1, 0x0
invoke-static {p1, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V
const/4 v0, 0x3
invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
return-void
.end method
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
.registers 14
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
:cond_5
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z
move-result v9
if-eqz v9, :cond_88
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C
move-result v2
iget v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
add-int/lit8 v9, v9, 0x1
iput v9, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
invoke-virtual {p0, v2, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I
move-result v5
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v9
div-int/lit8 v9, v9, 0x3
mul-int/lit8 v8, v9, 0x2
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I
move-result v9
add-int v4, v9, v8
invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I
move-result v9
sub-int v0, v9, v4
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z
move-result v9
if-nez v9, :cond_69
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v9
rem-int/lit8 v9, v9, 0x3
const/4 v10, 0x2
if-ne v9, v10, :cond_52
const/4 v9, 0x2
if-lt v0, v9, :cond_4e
const/4 v9, 0x2
if-le v0, v9, :cond_52
:cond_4e
invoke-direct {p0, p1, v1, v7, v5}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
move-result v5
:goto_52
:cond_52
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v9
rem-int/lit8 v9, v9, 0x3
const/4 v10, 0x1
if-ne v9, v10, :cond_88
const/4 v9, 0x3
if-gt v5, v9, :cond_61
const/4 v9, 0x1
if-ne v0, v9, :cond_64
:cond_61
const/4 v9, 0x3
if-le v5, v9, :cond_88
:cond_64
invoke-direct {p0, p1, v1, v7, v5}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
move-result v5
goto :goto_52
:cond_69
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v3
rem-int/lit8 v9, v3, 0x3
if-nez v9, :cond_5
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;
move-result-object v9
iget v10, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I
move-result v11
invoke-static {v9, v10, v11}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I
move-result v6
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I
move-result v9
if-eq v6, v9, :cond_5
invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V
:cond_88
invoke-virtual {p0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
return-void
.end method
.method  encodeChar(CLjava/lang/StringBuilder;)I
.registers 7
const/4 v1, 0x2
const/4 v0, 0x1
const/16 v2, 0x20
if-ne p1, v2, :cond_b
const/4 v1, 0x3
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_a
return v0
:cond_b
const/16 v2, 0x30
if-lt p1, v2, :cond_1c
const/16 v2, 0x39
if-gt p1, v2, :cond_1c
add-int/lit8 v1, p1, -0x30
add-int/lit8 v1, v1, 0x4
int-to-char v1, v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_a
:cond_1c
const/16 v2, 0x41
if-lt p1, v2, :cond_2d
const/16 v2, 0x5a
if-gt p1, v2, :cond_2d
add-int/lit8 v1, p1, -0x41
add-int/lit8 v1, v1, 0xe
int-to-char v1, v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_a
:cond_2d
if-ltz p1, :cond_3c
const/16 v2, 0x1f
if-gt p1, v2, :cond_3c
const/4 v2, 0x0
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_3c
const/16 v2, 0x21
if-lt p1, v2, :cond_4f
const/16 v2, 0x2f
if-gt p1, v2, :cond_4f
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x21
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_4f
const/16 v2, 0x3a
if-lt p1, v2, :cond_64
const/16 v2, 0x40
if-gt p1, v2, :cond_64
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x3a
add-int/lit8 v2, v2, 0xf
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_64
const/16 v2, 0x5b
if-lt p1, v2, :cond_79
const/16 v2, 0x5f
if-gt p1, v2, :cond_79
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x5b
add-int/lit8 v2, v2, 0x16
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_79
const/16 v2, 0x60
if-lt p1, v2, :cond_8d
const/16 v2, 0x7f
if-gt p1, v2, :cond_8d
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x60
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto/16 :goto_a
:cond_8d
const/16 v1, 0x80
if-lt p1, v1, :cond_a2
const-string/jumbo v1, "\u0001\u001e"
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x2
add-int/lit8 v1, p1, -0x80
int-to-char v1, v1
invoke-virtual {p0, v1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I
move-result v1
add-int/2addr v0, v1
goto/16 :goto_a
:cond_a2
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Illegal character: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public getEncodingMode()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method  handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
const/16 v6, 0xfe
const/4 v5, 0x3
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v4
div-int/lit8 v4, v4, 0x3
mul-int/lit8 v3, v4, 0x2
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v4
rem-int/lit8 v2, v4, 0x3
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I
move-result v4
add-int v1, v4, v3
invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I
move-result v4
sub-int v0, v4, v1
const/4 v4, 0x2
if-ne v2, v4, :cond_43
invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_2c
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v4
if-lt v4, v5, :cond_36
invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
goto :goto_2c
:cond_36
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z
move-result v4
if-eqz v4, :cond_3f
invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V
:goto_3f
:cond_3f
invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V
return-void
:cond_43
if-ne v0, v8, :cond_61
if-ne v2, v8, :cond_61
:goto_47
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v4
if-lt v4, v5, :cond_51
invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
goto :goto_47
:cond_51
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z
move-result v4
if-eqz v4, :cond_5a
invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V
:cond_5a
iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
add-int/lit8 v4, v4, -0x1
iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
goto :goto_3f
:cond_61
if-nez v2, :cond_79
:goto_63
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v4
if-lt v4, v5, :cond_6d
invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
goto :goto_63
:cond_6d
if-gtz v0, :cond_75
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z
move-result v4
if-eqz v4, :cond_3f
:cond_75
invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V
goto :goto_3f
:cond_79
new-instance v4, Ljava/lang/IllegalStateException;
const-string/jumbo v5, "Unexpected case. Please report!"
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v4
.end method