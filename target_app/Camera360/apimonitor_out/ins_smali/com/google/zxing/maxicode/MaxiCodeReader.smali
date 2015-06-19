.class public final Lcom/google/zxing/maxicode/MaxiCodeReader;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"
.implements Lcom/google/zxing/Reader;
.field private static final MATRIX_HEIGHT:I = 0x21
.field private static final MATRIX_WIDTH:I = 0x1e
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;
.field private final decoder:Lcom/google/zxing/maxicode/decoder/Decoder;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/zxing/ResultPoint;
sput-object v0, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/maxicode/decoder/Decoder;
invoke-direct {v0}, Lcom/google/zxing/maxicode/decoder/Decoder;-><init>()V
iput-object v0, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;
return-void
.end method
.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
.registers 15
const/16 v13, 0x21
const/16 v12, 0x1e
invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getEnclosingRectangle()[I
move-result-object v1
if-nez v1, :cond_f
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v10
throw v10
:cond_f
const/4 v10, 0x0
aget v5, v1, v10
const/4 v10, 0x1
aget v6, v1, v10
const/4 v10, 0x2
aget v7, v1, v10
const/4 v10, 0x3
aget v2, v1, v10
new-instance v0, Lcom/google/zxing/common/BitMatrix;
invoke-direct {v0, v12, v13}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V
const/4 v9, 0x0
:goto_21
if-ge v9, v13, :cond_4d
mul-int v10, v9, v2
div-int/lit8 v11, v2, 0x2
add-int/2addr v10, v11
div-int/lit8 v10, v10, 0x21
add-int v4, v6, v10
const/4 v8, 0x0
:goto_2d
if-ge v8, v12, :cond_4a
mul-int v10, v8, v7
div-int/lit8 v11, v7, 0x2
add-int/2addr v10, v11
and-int/lit8 v11, v9, 0x1
mul-int/2addr v11, v7
div-int/lit8 v11, v11, 0x2
add-int/2addr v10, v11
div-int/lit8 v10, v10, 0x1e
add-int v3, v5, v10
invoke-virtual {p0, v3, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z
move-result v10
if-eqz v10, :cond_47
invoke-virtual {v0, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V
:cond_47
add-int/lit8 v8, v8, 0x1
goto :goto_2d
:cond_4a
add-int/lit8 v9, v9, 0x1
goto :goto_21
:cond_4d
return-object v0
.end method
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/MaxiCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
move-result-object v0
return-object v0
.end method
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
.registers 11
if-eqz p2, :cond_35
sget-object v5, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;
invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_35
invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
move-result-object v5
invoke-static {v5}, Lcom/google/zxing/maxicode/MaxiCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
iget-object v5, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;
invoke-virtual {v5, v0, p2}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
move-result-object v1
sget-object v3, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;
new-instance v4, Lcom/google/zxing/Result;
invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B
move-result-object v6
sget-object v7, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;
invoke-direct {v4, v5, v6, v3, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_34
sget-object v5, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;
invoke-virtual {v4, v5, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
:cond_34
return-object v4
:cond_35
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v5
throw v5
.end method
.method public reset()V
.registers 1
return-void
.end method