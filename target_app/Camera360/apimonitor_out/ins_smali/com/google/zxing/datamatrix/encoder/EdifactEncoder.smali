.class final Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;
.super Ljava/lang/Object;
.source "EdifactEncoder.java"
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static encodeChar(CLjava/lang/StringBuilder;)V
.registers 3
const/16 v0, 0x20
if-lt p0, v0, :cond_c
const/16 v0, 0x3f
if-gt p0, v0, :cond_c
invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_b
return-void
:cond_c
const/16 v0, 0x40
if-lt p0, v0, :cond_1b
const/16 v0, 0x5e
if-gt p0, v0, :cond_1b
add-int/lit8 v0, p0, -0x40
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_b
:cond_1b
invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V
goto :goto_b
.end method
.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
.registers 16
const/4 v13, 0x2
const/4 v12, 0x3
const/4 v3, 0x0
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v10
sub-int v7, v10, p1
if-nez v7, :cond_14
new-instance v10, Ljava/lang/IllegalStateException;
const-string/jumbo v11, "StringBuilder must not be empty"
invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v10
:cond_14
invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
if-lt v7, v13, :cond_5f
add-int/lit8 v10, p1, 0x1
invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C
move-result v1
:goto_20
if-lt v7, v12, :cond_61
add-int/lit8 v10, p1, 0x2
invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
:goto_28
const/4 v10, 0x4
if-lt v7, v10, :cond_31
add-int/lit8 v10, p1, 0x3
invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C
move-result v3
:cond_31
shl-int/lit8 v10, v0, 0x12
shl-int/lit8 v11, v1, 0xc
add-int/2addr v10, v11
shl-int/lit8 v11, v2, 0x6
add-int/2addr v10, v11
add-int v9, v10, v3
shr-int/lit8 v10, v9, 0x10
and-int/lit16 v10, v10, 0xff
int-to-char v4, v10
shr-int/lit8 v10, v9, 0x8
and-int/lit16 v10, v10, 0xff
int-to-char v5, v10
and-int/lit16 v10, v9, 0xff
int-to-char v6, v10
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
if-lt v7, v13, :cond_55
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_55
if-lt v7, v12, :cond_5a
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_5a
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
return-object v10
:cond_5f
move v1, v3
goto :goto_20
:cond_61
move v2, v3
goto :goto_28
.end method
.method private static handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V
.registers 13
const/4 v10, 0x2
const/4 v6, 0x1
const/4 v8, 0x0
:try_start_3
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_38
move-result v1
if-nez v1, :cond_d
invoke-virtual {p0, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V
:goto_c
return-void
:cond_d
if-ne v1, v6, :cond_2c
:try_start_f
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
move-result-object v7
invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I
move-result v7
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I
move-result v9
sub-int v0, v7, v9
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I
:try_end_23
.catchall {:try_start_f .. :try_end_23} :catchall_38
move-result v4
if-nez v4, :cond_2c
if-gt v0, v10, :cond_2c
invoke-virtual {p0, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V
goto :goto_c
:cond_2c
const/4 v7, 0x4
if-le v1, v7, :cond_3d
:try_start_2f
new-instance v7, Ljava/lang/IllegalStateException;
const-string/jumbo v9, "Count must not exceed 4"
invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v7
:catchall_38
:try_end_38
.catchall {:try_start_2f .. :try_end_38} :catchall_38
move-exception v7
invoke-virtual {p0, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V
throw v7
:cond_3d
add-int/lit8 v5, v1, -0x1
const/4 v7, 0x0
:try_start_40
invoke-static {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z
move-result v7
if-nez v7, :cond_85
move v3, v6
:goto_4b
if-eqz v3, :cond_87
if-gt v5, v10, :cond_87
:goto_4f
if-gt v5, v10, :cond_77
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I
move-result v7
add-int/2addr v7, v5
invoke-virtual {p0, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
move-result-object v7
invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I
move-result v7
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I
move-result v9
sub-int v0, v7, v9
const/4 v7, 0x3
if-lt v0, v7, :cond_77
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I
move-result v7
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v9
add-int/2addr v7, v9
invoke-virtual {p0, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V
:cond_77
if-eqz v6, :cond_89
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V
iget v7, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
sub-int/2addr v7, v5
iput v7, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
:try_end_81
.catchall {:try_start_40 .. :try_end_81} :catchall_38
:goto_81
invoke-virtual {p0, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V
goto :goto_c
:cond_85
move v3, v8
goto :goto_4b
:cond_87
move v6, v8
goto :goto_4f
:try_start_89
:cond_89
invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V
:try_end_8c
.catchall {:try_start_89 .. :try_end_8c} :catchall_38
goto :goto_81
.end method
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
.registers 11
const/4 v8, 0x4
const/4 v7, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
:cond_7
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z
move-result v4
if-eqz v4, :cond_41
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C
move-result v1
invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeChar(CLjava/lang/StringBuilder;)V
iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
add-int/lit8 v4, v4, 0x1
iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v2
if-lt v2, v8, :cond_7
invoke-static {v0, v7}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V
invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;
move-result-object v4
iget v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I
move-result v6
invoke-static {v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I
move-result v3
invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I
move-result v4
if-eq v3, v4, :cond_7
invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V
:cond_41
const/16 v4, 0x1f
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V
return-void
.end method
.method public getEncodingMode()I
.registers 2
const/4 v0, 0x4
return v0
.end method