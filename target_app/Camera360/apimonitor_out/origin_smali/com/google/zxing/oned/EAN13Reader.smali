.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    sget-object v1, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_13

    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v4, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v4, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v4, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v4, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v4, v12

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v12, 0x1

    aget v10, p2, v12

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1b
    const/4 v12, 0x6

    if-ge v11, v12, :cond_47

    if-ge v10, v5, :cond_47

    sget-object v12, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v4, v10, v12}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v2

    rem-int/lit8 v12, v2, 0xa

    add-int/lit8 v12, v12, 0x30

    int-to-char v12, v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v1, v4

    array-length v7, v1

    const/4 v6, 0x0

    :goto_33
    if-ge v6, v7, :cond_3b

    aget v3, v1, v6

    add-int/2addr v10, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_3b
    const/16 v12, 0xa

    if-lt v2, v12, :cond_44

    const/4 v12, 0x1

    rsub-int/lit8 v13, v11, 0x5

    shl-int/2addr v12, v13

    or-int/2addr v8, v12

    :cond_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    :cond_47
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    const/4 v12, 0x1

    sget-object v13, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v10, v12, v13}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v9

    const/4 v12, 0x1

    aget v10, v9, v12

    const/4 v11, 0x0

    :goto_57
    const/4 v12, 0x6

    if-ge v11, v12, :cond_78

    if-ge v10, v5, :cond_78

    sget-object v12, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v4, v10, v12}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v2

    add-int/lit8 v12, v2, 0x30

    int-to-char v12, v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v1, v4

    array-length v7, v1

    const/4 v6, 0x0

    :goto_6d
    if-ge v6, v7, :cond_75

    aget v3, v1, v6

    add-int/2addr v10, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    :cond_75
    add-int/lit8 v11, v11, 0x1

    goto :goto_57

    :cond_78
    return v10
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
