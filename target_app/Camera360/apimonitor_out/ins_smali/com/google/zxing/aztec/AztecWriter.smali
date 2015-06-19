.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "AztecWriter.java"
.implements Lcom/google/zxing/Writer;
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "ISO-8859-1"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;
.registers 11
sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;
if-eq p1, v1, :cond_1e
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Can only encode AZTEC, but got "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1e
invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v1
invoke-static {v1, p5, p6}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
move-result-object v0
invoke-static {v0, p2, p3}, Lcom/google/zxing/aztec/AztecWriter;->renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;
move-result-object v1
return-object v1
.end method
.method private static renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;
.registers 19
invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/aztec/encoder/AztecCode;->getMatrix()Lcom/google/zxing/common/BitMatrix;
move-result-object v1
if-nez v1, :cond_c
new-instance v14, Ljava/lang/IllegalStateException;
invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V
throw v14
:cond_c
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I
move-result v3
invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v2
move/from16 v0, p1
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v10
move/from16 v0, p2
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v9
div-int v14, v10, v3
div-int v15, v9, v2
invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I
move-result v7
mul-int v14, v3, v7
sub-int v14, v10, v14
div-int/lit8 v6, v14, 0x2
mul-int v14, v2, v7
sub-int v14, v9, v14
div-int/lit8 v13, v14, 0x2
new-instance v8, Lcom/google/zxing/common/BitMatrix;
invoke-direct {v8, v10, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V
const/4 v5, 0x0
move v12, v13
:goto_3b
if-ge v5, v2, :cond_52
const/4 v4, 0x0
move v11, v6
:goto_3f
if-ge v4, v3, :cond_4e
invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v14
if-eqz v14, :cond_4a
invoke-virtual {v8, v11, v12, v7, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V
:cond_4a
add-int/lit8 v4, v4, 0x1
add-int/2addr v11, v7
goto :goto_3f
:cond_4e
add-int/lit8 v5, v5, 0x1
add-int/2addr v12, v7
goto :goto_3b
:cond_52
return-object v8
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
.registers 16
const/4 v9, 0x0
if-nez p5, :cond_1d
move-object v7, v9
:goto_4
if-nez p5, :cond_27
move-object v8, v9
:goto_7
if-nez p5, :cond_31
:goto_9
if-nez v7, :cond_3b
sget-object v4, Lcom/google/zxing/aztec/AztecWriter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
:goto_d
if-nez v8, :cond_40
const/16 v5, 0x21
:goto_11
if-nez v9, :cond_45
const/4 v6, 0x0
:goto_14
move-object v0, p1
move-object v1, p2
move v2, p3
move v3, p4
invoke-static/range {v0 .. v6}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
:cond_1d
sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
move-object v7, v0
goto :goto_4
:cond_27
sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Number;
move-object v8, v0
goto :goto_7
:cond_31
sget-object v0, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Number;
move-object v9, v0
goto :goto_9
:cond_3b
invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v4
goto :goto_d
:cond_40
invoke-virtual {v8}, Ljava/lang/Number;->intValue()I
move-result v5
goto :goto_11
:cond_45
invoke-virtual {v9}, Ljava/lang/Number;->intValue()I
move-result v6
goto :goto_14
.end method