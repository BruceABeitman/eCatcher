.class public final Lcom/google/zxing/pdf417/PDF417Writer;
.super Ljava/lang/Object;
.source "PDF417Writer.java"
.implements Lcom/google/zxing/Writer;
.field static final WHITE_SPACE:I = 0x1e
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;III)Lcom/google/zxing/common/BitMatrix;
.registers 18
const/4 v2, 0x2
invoke-virtual {p0, p1, v2}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V
const/4 v3, 0x2
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
move-result-object v10
const/16 v11, 0x8
invoke-virtual {v10, v3, v11}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B
move-result-object v4
const/4 v5, 0x0
move/from16 v0, p3
if-le v0, p2, :cond_4f
const/4 v10, 0x1
:goto_16
const/4 v11, 0x0
aget-object v11, v4, v11
array-length v11, v11
array-length v12, v4
if-ge v11, v12, :cond_51
const/4 v11, 0x1
:goto_1e
xor-int/2addr v10, v11
if-eqz v10, :cond_26
invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B
move-result-object v4
const/4 v5, 0x1
:cond_26
const/4 v10, 0x0
aget-object v10, v4, v10
array-length v10, v10
div-int v7, p2, v10
array-length v10, v4
div-int v8, p3, v10
if-ge v7, v8, :cond_53
move v6, v7
:goto_32
const/4 v10, 0x1
if-le v6, v10, :cond_55
invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
move-result-object v10
mul-int v11, v6, v3
mul-int v12, v6, v1
mul-int/2addr v12, v3
invoke-virtual {v10, v11, v12}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B
move-result-object v9
if-eqz v5, :cond_48
invoke-static {v9}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B
move-result-object v9
:cond_48
move/from16 v0, p4
invoke-static {v9, v0}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;
move-result-object v10
:goto_4e
return-object v10
:cond_4f
const/4 v10, 0x0
goto :goto_16
:cond_51
const/4 v11, 0x0
goto :goto_1e
:cond_53
move v6, v8
goto :goto_32
:cond_55
move/from16 v0, p4
invoke-static {v4, v0}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;
move-result-object v10
goto :goto_4e
.end method
.method private static bitMatrixFrombitArray([[BI)Lcom/google/zxing/common/BitMatrix;
.registers 10
const/4 v7, 0x0
new-instance v0, Lcom/google/zxing/common/BitMatrix;
aget-object v4, p0, v7
array-length v4, v4
mul-int/lit8 v5, p1, 0x2
add-int/2addr v4, v5
array-length v5, p0
mul-int/lit8 v6, p1, 0x2
add-int/2addr v5, v6
invoke-direct {v0, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V
invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clear()V
const/4 v2, 0x0
invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I
move-result v4
sub-int/2addr v4, p1
add-int/lit8 v3, v4, -0x1
:goto_1b
array-length v4, p0
if-ge v2, v4, :cond_38
const/4 v1, 0x0
:goto_1f
aget-object v4, p0, v7
array-length v4, v4
if-ge v1, v4, :cond_33
aget-object v4, p0, v2
aget-byte v4, v4, v1
const/4 v5, 0x1
if-ne v4, v5, :cond_30
add-int v4, v1, p1
invoke-virtual {v0, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V
:cond_30
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_33
add-int/lit8 v2, v2, 0x1
add-int/lit8 v3, v3, -0x1
goto :goto_1b
:cond_38
return-object v0
.end method
.method private static rotateArray([[B)[[B
.registers 8
const/4 v6, 0x0
aget-object v4, p0, v6
array-length v4, v4
array-length v5, p0
filled-new-array {v4, v5}, [I
move-result-object v4
sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v3
check-cast v3, [[B
const/4 v0, 0x0
:goto_12
array-length v4, p0
if-ge v0, v4, :cond_2d
array-length v4, p0
sub-int/2addr v4, v0
add-int/lit8 v1, v4, -0x1
const/4 v2, 0x0
:goto_1a
aget-object v4, p0, v6
array-length v4, v4
if-ge v2, v4, :cond_2a
aget-object v4, v3, v2
aget-object v5, p0, v0
aget-byte v5, v5, v2
aput-byte v5, v4, v1
add-int/lit8 v2, v2, 0x1
goto :goto_1a
:cond_2a
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_2d
return-object v3
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/pdf417/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
.registers 14
sget-object v4, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;
if-eq p2, v4, :cond_1e
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "Can only encode PDF_417, but got "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_1e
new-instance v1, Lcom/google/zxing/pdf417/encoder/PDF417;
invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V
const/16 v3, 0x1e
if-eqz p5, :cond_9f
sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3e
sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V
:cond_3e
sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_51
sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/zxing/pdf417/encoder/Compaction;
invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V
:cond_51
sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_74
sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/pdf417/encoder/Dimensions;
invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I
move-result v4
invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I
move-result v5
invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I
move-result v6
invoke-virtual {v0}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I
move-result v7
invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V
:cond_74
sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_88
sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Number;
invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
move-result v3
:cond_88
sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_9f
sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;
invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/google/zxing/pdf417/encoder/PDF417;->setEncoding(Ljava/nio/charset/Charset;)V
:cond_9f
invoke-static {v1, p1, p3, p4, v3}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;III)Lcom/google/zxing/common/BitMatrix;
move-result-object v4
return-object v4
.end method