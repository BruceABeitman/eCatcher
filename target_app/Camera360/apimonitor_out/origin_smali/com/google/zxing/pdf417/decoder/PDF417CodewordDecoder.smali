.class final Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;
.super Ljava/lang/Object;
.source "PDF417CodewordDecoder.java"


# static fields
.field private static final RATIOS_TABLE:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x8

    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v5, v5

    filled-new-array {v5, v8}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    sput-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    const/4 v2, 0x0

    :goto_14
    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v5, v5

    if-ge v2, v5, :cond_43

    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v1, v5, v2

    and-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v8, :cond_40

    const/4 v4, 0x0

    :goto_23
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v0, :cond_2d

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    shr-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2d
    and-int/lit8 v0, v1, 0x1

    sget-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v5, v5, v2

    rsub-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, -0x1

    const/high16 v7, 0x4188

    div-float v7, v4, v7

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_43
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitValue([I)I
    .registers 11

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_4
    array-length v4, p0

    if-ge v1, v4, :cond_1e

    const/4 v0, 0x0

    :goto_8
    aget v4, p0, v1

    if-ge v0, v4, :cond_1b

    shl-long v6, v2, v5

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_19

    move v4, v5

    :goto_13
    int-to-long v8, v4

    or-long v2, v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    const/4 v4, 0x0

    goto :goto_13

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    long-to-int v4, v2

    return v4
.end method

.method private static getClosestDecodedValue([I)I
    .registers 14

    const/16 v12, 0x8

    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v3

    new-array v2, v12, [F

    const/4 v6, 0x0

    :goto_9
    array-length v10, v2

    if-ge v6, v10, :cond_16

    aget v10, p0, v6

    int-to-float v10, v10

    int-to-float v11, v3

    div-float/2addr v10, v11

    aput v10, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_16
    const v1, 0x7f7fffff

    const/4 v0, -0x1

    const/4 v7, 0x0

    :goto_1b
    sget-object v10, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    array-length v10, v10

    if-ge v7, v10, :cond_44

    const/4 v5, 0x0

    sget-object v10, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v9, v10, v7

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v12, :cond_35

    aget v10, v9, v8

    aget v11, v2, v8

    sub-float v4, v10, v11

    mul-float v10, v4, v4

    add-float/2addr v5, v10

    cmpl-float v10, v5, v1

    if-ltz v10, :cond_41

    :cond_35
    cmpg-float v10, v5, v1

    if-gez v10, :cond_3e

    move v1, v5

    sget-object v10, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v0, v10, v7

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_44
    return v0
.end method

.method private static getDecodedCodewordValue([I)I
    .registers 5

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getBitValue([I)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(J)I

    move-result v2

    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    return v0
.end method

.method static getDecodedValue([I)I
    .registers 3

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->sampleBitCounts([I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedCodewordValue([I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getClosestDecodedValue([I)I

    move-result v0

    goto :goto_b
.end method

.method private static sampleBitCounts([I)[I
    .registers 10

    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v6

    int-to-float v1, v6

    const/16 v6, 0x8

    new-array v3, v6, [I

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_c
    const/16 v6, 0x11

    if-ge v2, v6, :cond_31

    const/high16 v6, 0x4208

    div-float v6, v1, v6

    int-to-float v7, v2

    mul-float/2addr v7, v1

    const/high16 v8, 0x4188

    div-float/2addr v7, v8

    add-float v4, v6, v7

    aget v6, p0, v0

    add-int/2addr v6, v5

    int-to-float v6, v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_28

    aget v6, p0, v0

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    :cond_28
    aget v6, v3, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_31
    return-object v3
.end method
