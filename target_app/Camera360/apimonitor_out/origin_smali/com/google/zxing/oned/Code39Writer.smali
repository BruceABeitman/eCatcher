.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x9

    if-ge v0, v2, :cond_16

    rsub-int/lit8 v2, v0, 0x8

    shl-int v2, v3, v2

    and-int v1, p0, v2

    if-nez v1, :cond_14

    move v2, v3

    :goto_f
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    const/4 v2, 0x2

    goto :goto_f

    :cond_16
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can only encode CODE_39, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v13, 0x50

    if-le v7, v13, :cond_22

    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_22
    const/16 v13, 0x9

    new-array v12, v13, [I

    add-int/lit8 v2, v7, 0x19

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v7, :cond_6b

    const-string/jumbo v13, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_56

    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Bad contents: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_56
    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v13, v13, v5

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    move-object v1, v12

    array-length v6, v1

    const/4 v4, 0x0

    :goto_60
    if-ge v4, v6, :cond_68

    aget v11, v1, v4

    add-int/2addr v2, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_6b
    new-array v10, v2, [Z

    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v14, 0x27

    aget v13, v13, v14

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v10, v13, v12, v14}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    const/4 v13, 0x1

    new-array v8, v13, [I

    const/4 v13, 0x0

    const/4 v14, 0x1

    aput v14, v8, v13

    const/4 v13, 0x0

    invoke-static {v10, v9, v8, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    const/4 v3, 0x0

    :goto_8a
    if-ge v3, v7, :cond_af

    const-string/jumbo v13, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v13, v13, v5

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v13, 0x1

    invoke-static {v10, v9, v12, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    const/4 v13, 0x0

    invoke-static {v10, v9, v8, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    :cond_af
    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v14, 0x27

    aget v13, v13, v14

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v13, 0x1

    invoke-static {v10, v9, v12, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    return-object v10
.end method
