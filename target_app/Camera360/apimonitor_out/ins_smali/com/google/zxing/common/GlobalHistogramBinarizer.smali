.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"
.field private static final EMPTY:[B = null
.field private static final LUMINANCE_BITS:I = 0x5
.field private static final LUMINANCE_BUCKETS:I = 0x20
.field private static final LUMINANCE_SHIFT:I = 0x3
.field private final buckets:[I
.field private luminances:[B
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [B
sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B
return-void
.end method
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V
sget-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B
iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B
const/16 v0, 0x20
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I
return-void
.end method
.method private static estimateBlackPoint([I)I
.registers 16
array-length v7, p0
const/4 v6, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v12, 0x0
:goto_5
if-ge v12, v7, :cond_17
aget v13, p0, v12
if-le v13, v4, :cond_e
move v3, v12
aget v4, p0, v12
:cond_e
aget v13, p0, v12
if-le v13, v6, :cond_14
aget v6, p0, v12
:cond_14
add-int/lit8 v12, v12, 0x1
goto :goto_5
:cond_17
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v12, 0x0
:goto_1a
if-ge v12, v7, :cond_2a
sub-int v2, v12, v3
aget v13, p0, v12
mul-int/2addr v13, v2
mul-int v8, v13, v2
if-le v8, v10, :cond_27
move v9, v12
move v10, v8
:cond_27
add-int/lit8 v12, v12, 0x1
goto :goto_1a
:cond_2a
if-le v3, v9, :cond_2f
move v11, v3
move v3, v9
move v9, v11
:cond_2f
sub-int v13, v9, v3
shr-int/lit8 v14, v7, 0x4
if-gt v13, v14, :cond_3a
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v13
throw v13
:cond_3a
add-int/lit8 v0, v9, -0x1
const/4 v1, -0x1
add-int/lit8 v12, v9, -0x1
:goto_3f
if-le v12, v3, :cond_55
sub-int v5, v12, v3
mul-int v13, v5, v5
sub-int v14, v9, v12
mul-int/2addr v13, v14
aget v14, p0, v12
sub-int v14, v6, v14
mul-int v8, v13, v14
if-le v8, v1, :cond_52
move v0, v12
move v1, v8
:cond_52
add-int/lit8 v12, v12, -0x1
goto :goto_3f
:cond_55
shl-int/lit8 v13, v0, 0x3
return v13
.end method
.method private initArrays(I)V
.registers 5
iget-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B
array-length v1, v1
if-ge v1, p1, :cond_9
new-array v1, p1, [B
iput-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B
:cond_9
const/4 v0, 0x0
:goto_a
const/16 v1, 0x20
if-ge v0, v1, :cond_16
iget-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I
const/4 v2, 0x0
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_16
return-void
.end method
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
.registers 3
new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;
invoke-direct {v0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V
return-object v0
.end method
.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
.registers 16
invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;
move-result-object v9
invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getWidth()I
move-result v10
invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getHeight()I
move-result v1
new-instance v4, Lcom/google/zxing/common/BitMatrix;
invoke-direct {v4, v10, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V
invoke-direct {p0, v10}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V
iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I
const/4 v12, 0x1
:goto_17
const/4 v13, 0x5
if-ge v12, v13, :cond_3e
mul-int v13, v1, v12
div-int/lit8 v8, v13, 0x5
iget-object v13, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B
invoke-virtual {v9, v8, v13}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B
move-result-object v3
shl-int/lit8 v13, v10, 0x2
div-int/lit8 v7, v13, 0x5
div-int/lit8 v11, v10, 0x5
:goto_2a
if-ge v11, v7, :cond_3b
aget-byte v13, v3, v11
and-int/lit16 v6, v13, 0xff
shr-int/lit8 v13, v6, 0x3
aget v14, v2, v13
add-int/lit8 v14, v14, 0x1
aput v14, v2, v13
add-int/lit8 v11, v11, 0x1
goto :goto_2a
:cond_3b
add-int/lit8 v12, v12, 0x1
goto :goto_17
:cond_3e
invoke-static {v2}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I
move-result v0
invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B
move-result-object v3
const/4 v12, 0x0
:goto_47
if-ge v12, v1, :cond_5f
mul-int v5, v12, v10
const/4 v11, 0x0
:goto_4c
if-ge v11, v10, :cond_5c
add-int v13, v5, v11
aget-byte v13, v3, v13
and-int/lit16 v6, v13, 0xff
if-ge v6, v0, :cond_59
invoke-virtual {v4, v11, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V
:cond_59
add-int/lit8 v11, v11, 0x1
goto :goto_4c
:cond_5c
add-int/lit8 v12, v12, 0x1
goto :goto_47
:cond_5f
return-object v4
.end method
.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
.registers 16
invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;
move-result-object v8
invoke-virtual {v8}, Lcom/google/zxing/LuminanceSource;->getWidth()I
move-result v9
if-eqz p2, :cond_10
invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v11
if-ge v11, v9, :cond_32
:cond_10
new-instance p2, Lcom/google/zxing/common/BitArray;
invoke-direct {p2, v9}, Lcom/google/zxing/common/BitArray;-><init>(I)V
:goto_15
invoke-direct {p0, v9}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V
iget-object v11, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B
invoke-virtual {v8, p1, v11}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B
move-result-object v4
iget-object v3, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I
const/4 v10, 0x0
:goto_21
if-ge v10, v9, :cond_36
aget-byte v11, v4, v10
and-int/lit16 v6, v11, 0xff
shr-int/lit8 v11, v6, 0x3
aget v12, v3, v11
add-int/lit8 v12, v12, 0x1
aput v12, v3, v11
add-int/lit8 v10, v10, 0x1
goto :goto_21
:cond_32
invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V
goto :goto_15
:cond_36
invoke-static {v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I
move-result v0
const/4 v11, 0x0
aget-byte v11, v4, v11
and-int/lit16 v2, v11, 0xff
const/4 v11, 0x1
aget-byte v11, v4, v11
and-int/lit16 v1, v11, 0xff
const/4 v10, 0x1
:goto_45
add-int/lit8 v11, v9, -0x1
if-ge v10, v11, :cond_5f
add-int/lit8 v11, v10, 0x1
aget-byte v11, v4, v11
and-int/lit16 v7, v11, 0xff
shl-int/lit8 v11, v1, 0x2
sub-int/2addr v11, v2
sub-int/2addr v11, v7
shr-int/lit8 v5, v11, 0x1
if-ge v5, v0, :cond_5a
invoke-virtual {p2, v10}, Lcom/google/zxing/common/BitArray;->set(I)V
:cond_5a
move v2, v1
move v1, v7
add-int/lit8 v10, v10, 0x1
goto :goto_45
:cond_5f
return-object p2
.end method