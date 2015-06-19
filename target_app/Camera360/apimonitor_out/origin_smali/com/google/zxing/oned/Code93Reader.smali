.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C = null

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    nop

    :array_1c
    .array-data 0x4
        0x14t 0x1t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x28t 0x1t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xa2t 0x1t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x64t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x34t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x58t 0x1t 0x0t 0x0t
        0x4ct 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0xb4t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xact 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0x96t 0x1t 0x0t 0x0t
        0x9at 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x66t 0x1t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd2t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    add-int/lit8 v0, p1, -0x1

    :goto_4
    if-ltz v0, :cond_1b

    const-string/jumbo v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_18

    const/4 v2, 0x1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_1b
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_2c

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    :cond_2c
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v8, 0x5a

    const/16 v7, 0x41

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v4, :cond_84

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x61

    if-lt v0, v6, :cond_80

    const/16 v6, 0x64

    if-gt v0, v6, :cond_80

    add-int/lit8 v6, v4, -0x1

    if-lt v3, v6, :cond_25

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    :cond_25
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_8a

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :pswitch_37
    if-lt v5, v7, :cond_3f

    if-gt v5, v8, :cond_3f

    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_2f

    :cond_3f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    :pswitch_44
    if-lt v5, v7, :cond_4c

    if-gt v5, v8, :cond_4c

    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_2f

    :cond_4c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    :pswitch_51
    if-lt v5, v7, :cond_5b

    const/16 v6, 0x45

    if-gt v5, v6, :cond_5b

    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_2f

    :cond_5b
    const/16 v6, 0x46

    if-lt v5, v6, :cond_67

    const/16 v6, 0x57

    if-gt v5, v6, :cond_67

    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_2f

    :cond_67
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    :pswitch_6c
    if-lt v5, v7, :cond_76

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_76

    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_2f

    :cond_76
    if-ne v5, v8, :cond_7b

    const/16 v2, 0x3a

    goto :goto_2f

    :cond_7b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    :cond_80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    nop

    :pswitch_data_8a
    .packed-switch 0x61
        :pswitch_44
        :pswitch_51
        :pswitch_6c
        :pswitch_37
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    invoke-virtual {p1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    iget-object v10, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([II)V

    iget-object v6, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    move v4, v5

    const/4 v2, 0x0

    array-length v3, v6

    const/4 v0, 0x0

    move v1, v5

    :goto_17
    if-ge v1, v7, :cond_5c

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v2

    if-eqz v10, :cond_29

    aget v10, v6, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v0

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    add-int/lit8 v10, v3, -0x1

    if-ne v0, v10, :cond_57

    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v10, v11, :cond_3c

    new-array v10, v12, [I

    aput v4, v10, v9

    aput v1, v10, v8

    return-object v10

    :cond_3c
    aget v10, v6, v9

    aget v11, v6, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    add-int/lit8 v10, v3, -0x2

    invoke-static {v6, v12, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v3, -0x2

    aput v9, v6, v10

    add-int/lit8 v10, v3, -0x1

    aput v9, v6, v10

    add-int/lit8 v0, v0, -0x1

    :goto_51
    aput v8, v6, v0

    if-nez v2, :cond_5a

    move v2, v8

    :goto_56
    goto :goto_26

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_5a
    move v2, v9

    goto :goto_56

    :cond_5c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static patternToChar(I)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .registers 14

    array-length v6, p0

    const/4 v10, 0x0

    move-object v0, p0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_d

    aget v1, v0, v3

    add-int/2addr v10, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v6, :cond_2a

    aget v11, p0, v2

    shl-int/lit8 v11, v11, 0x8

    mul-int/lit8 v11, v11, 0x9

    div-int v8, v11, v10

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v11, v8, 0xff

    const/16 v12, 0x7f

    if-le v11, v12, :cond_23

    add-int/lit8 v9, v9, 0x1

    :cond_23
    const/4 v11, 0x1

    if-lt v9, v11, :cond_29

    const/4 v11, 0x4

    if-le v9, v11, :cond_2b

    :cond_29
    const/4 v7, -0x1

    :cond_2a
    return v7

    :cond_2b
    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_39

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v9, :cond_3a

    shl-int/lit8 v11, v7, 0x1

    or-int/lit8 v7, v11, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_39
    shl-int/2addr v7, v9

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v19

    const/16 v21, 0x1

    aget v21, v19, v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_32
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v14, v1}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    invoke-static/range {v20 .. v20}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v15

    if-gez v15, :cond_44

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    :cond_44
    invoke-static {v15}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v14

    move-object/from16 v5, v20

    array-length v13, v5

    const/4 v9, 0x0

    :goto_52
    if-ge v9, v13, :cond_5a

    aget v6, v5, v9

    add-int/2addr v14, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    :cond_5a
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    const/16 v21, 0x2a

    move/from16 v0, v21

    if-ne v7, v0, :cond_32

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    move-object/from16 v5, v20

    array-length v13, v5

    const/4 v9, 0x0

    :goto_78
    if-ge v9, v13, :cond_80

    aget v6, v5, v9

    add-int/2addr v10, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    :cond_80
    if-eq v14, v8, :cond_8a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v21

    if-nez v21, :cond_8f

    :cond_8a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    :cond_8f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    :cond_a0
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x1

    aget v21, v19, v21

    const/16 v22, 0x0

    aget v22, v19, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v12, v21, v22

    int-to-float v0, v11

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v18, v21, v22

    new-instance v21, Lcom/google/zxing/Result;

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    sget-object v24, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v21
.end method
