.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;,
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x28

    new-array v0, v1, [C

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_50

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_70

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_24
    .array-data 0x2
        0x2at 0x0t
        0x2at 0x0t
        0x2at 0x0t
        0x20t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data

    :array_50
    .array-data 0x2
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
    .end array-data

    nop

    :array_70
    .array-data 0x2
        0x2at 0x0t
        0x2at 0x0t
        0x2at 0x0t
        0x20t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    :array_9c
    .array-data 0x2
        0x60t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x64

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    :cond_1b
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v2, v6, :cond_47

    invoke-static {v0, v3, v4}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v2

    :goto_23
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v2, v6, :cond_2d

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_1b

    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_36

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_36
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_43

    move-object v1, v5

    :cond_43
    invoke-direct {v6, p0, v7, v1, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v6

    :cond_47
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_6e

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    :pswitch_57
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    :goto_5a
    sget-object v2, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_23

    :pswitch_5d
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_5a

    :pswitch_61
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_5a

    :pswitch_65
    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_5a

    :pswitch_69
    invoke-static {v0, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_5a

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_57
        :pswitch_5d
        :pswitch_61
        :pswitch_65
        :pswitch_69
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v5, 0x3

    new-array v1, v5, [I

    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-ne v4, v6, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    const/16 v4, 0xfe

    if-eq v2, v4, :cond_b

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v2, v4, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v5, :cond_5f

    aget v0, v1, v3

    if-nez v0, :cond_2a

    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v4, 0x1

    if-ne v0, v4, :cond_33

    const/16 v4, 0x2a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_33
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3c

    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_3c
    if-ne v0, v5, :cond_44

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_44
    const/16 v4, 0xe

    if-ge v0, v4, :cond_4f

    add-int/lit8 v4, v0, 0x2c

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_4f
    const/16 v4, 0x28

    if-ge v0, v4, :cond_5a

    add-int/lit8 v4, v0, 0x33

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_5a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_5f
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-gtz v4, :cond_5

    goto :goto_b
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    :cond_f
    const/16 v3, 0x80

    if-gt v0, v3, :cond_20

    if-eqz v1, :cond_17

    add-int/lit16 v0, v0, 0x80

    :cond_17
    add-int/lit8 v3, v0, -0x1

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    :goto_1f
    return-object v3

    :cond_20
    const/16 v3, 0x81

    if-ne v0, v3, :cond_27

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    :cond_27
    const/16 v3, 0xe5

    if-gt v0, v3, :cond_42

    add-int/lit16 v2, v0, -0x82

    const/16 v3, 0xa

    if-ge v2, v3, :cond_36

    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_2

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    :cond_42
    const/16 v3, 0xe6

    if-ne v0, v3, :cond_49

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    :cond_49
    const/16 v3, 0xe7

    if-ne v0, v3, :cond_50

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    :cond_50
    const/16 v3, 0xe8

    if-ne v0, v3, :cond_5a

    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_5a
    const/16 v3, 0xe9

    if-eq v0, v3, :cond_39

    const/16 v3, 0xea

    if-eq v0, v3, :cond_39

    const/16 v3, 0xeb

    if-ne v0, v3, :cond_68

    const/4 v1, 0x1

    goto :goto_39

    :cond_68
    const/16 v3, 0xec

    if-ne v0, v3, :cond_79

    const-string/jumbo v3, "[)>\u001e05\u001d"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u001e\u0004"

    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_79
    const/16 v3, 0xed

    if-ne v0, v3, :cond_8a

    const-string/jumbo v3, "[)>\u001e06\u001d"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u001e\u0004"

    invoke-virtual {p2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_8a
    const/16 v3, 0xee

    if-ne v0, v3, :cond_91

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    :cond_91
    const/16 v3, 0xef

    if-ne v0, v3, :cond_98

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    :cond_98
    const/16 v3, 0xf0

    if-ne v0, v3, :cond_9f

    sget-object v3, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1f

    :cond_9f
    const/16 v3, 0xf1

    if-eq v0, v3, :cond_39

    const/16 v3, 0xf2

    if-lt v0, v3, :cond_39

    const/16 v3, 0xfe

    if-ne v0, v3, :cond_b1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-eqz v3, :cond_39

    :cond_b1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v9, 0x8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v2, v1, 0x1

    invoke-static {v7, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    div-int/lit8 v3, v7, 0x8

    move v1, v2

    :goto_1b
    if-gez v3, :cond_3a

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_22
    const/16 v7, 0xfa

    if-ge v4, v7, :cond_29

    move v3, v4

    move v1, v2

    goto :goto_1b

    :cond_29
    add-int/lit16 v7, v4, -0xf9

    mul-int/lit16 v7, v7, 0xfa

    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    add-int/lit8 v1, v2, 0x1

    invoke-static {v8, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v8

    add-int v3, v7, v8

    goto :goto_1b

    :cond_3a
    new-array v0, v3, [B

    const/4 v5, 0x0

    move v2, v1

    :goto_3e
    if-ge v5, v3, :cond_5c

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-ge v7, v9, :cond_4b

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :cond_4b
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v1, v2, 0x1

    invoke-static {v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    move v2, v1

    goto :goto_3e

    :cond_5c
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :try_start_5f
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "ISO8859_1"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5f .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    move-exception v6

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Platform does not support required encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v6, 0x0

    new-array v2, v8, [I

    const/4 v5, 0x0

    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-ne v7, v9, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    const/16 v7, 0xfe

    if-eq v3, v7, :cond_d

    invoke-virtual {p0, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v3, v7, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v8, :cond_9c

    aget v1, v2, v4

    packed-switch v5, :pswitch_data_a4

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :pswitch_2a
    if-ge v1, v8, :cond_31

    add-int/lit8 v5, v1, 0x1

    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_31
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_48

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v0, v7, v1

    if-eqz v6, :cond_44

    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_2e

    :cond_44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_48
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :pswitch_4d
    if-eqz v6, :cond_58

    add-int/lit16 v7, v1, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_56
    const/4 v5, 0x0

    goto :goto_2e

    :cond_58
    int-to-char v7, v1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    :pswitch_5d
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v7, v7

    if-ge v1, v7, :cond_75

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v7, v1

    if-eqz v6, :cond_71

    add-int/lit16 v7, v0, 0x80

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_6f
    const/4 v5, 0x0

    goto :goto_2e

    :cond_71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    :cond_75
    const/16 v7, 0x1b

    if-ne v1, v7, :cond_7f

    const/16 v7, 0x1d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    :cond_7f
    const/16 v7, 0x1e

    if-ne v1, v7, :cond_85

    const/4 v6, 0x1

    goto :goto_6f

    :cond_85
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    :pswitch_8a
    if-eqz v6, :cond_95

    add-int/lit16 v7, v1, 0xe0

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_93
    const/4 v5, 0x0

    goto :goto_2e

    :cond_95
    add-int/lit8 v7, v1, 0x60

    int-to-char v7, v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_9c
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-gtz v7, :cond_7

    goto/16 :goto_d

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_4d
        :pswitch_5d
        :pswitch_8a
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 7

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x4

    if-ge v2, v3, :cond_31

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_24

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v3

    rsub-int/lit8 v0, v3, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto :goto_8

    :cond_24
    and-int/lit8 v3, v1, 0x20

    if-nez v3, :cond_2a

    or-int/lit8 v1, v1, 0x40

    :cond_2a
    int-to-char v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_31
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_8
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v7, 0x0

    new-array v2, v9, [I

    const/4 v5, 0x0

    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-ne v8, v10, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    const/16 v8, 0xfe

    if-eq v3, v8, :cond_d

    invoke-virtual {p0, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    invoke-static {v3, v8, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v9, :cond_a7

    aget v1, v2, v4

    packed-switch v5, :pswitch_data_b0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    :pswitch_2a
    if-ge v1, v9, :cond_31

    add-int/lit8 v5, v1, 0x1

    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_31
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v8, v8

    if-ge v1, v8, :cond_48

    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v6, v8, v1

    if-eqz v7, :cond_44

    add-int/lit16 v8, v6, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_2e

    :cond_44
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_48
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    :pswitch_4d
    if-eqz v7, :cond_58

    add-int/lit16 v8, v1, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_56
    const/4 v5, 0x0

    goto :goto_2e

    :cond_58
    int-to-char v8, v1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    :pswitch_5d
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v8

    if-ge v1, v8, :cond_75

    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v0, v8, v1

    if-eqz v7, :cond_71

    add-int/lit16 v8, v0, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_6f
    const/4 v5, 0x0

    goto :goto_2e

    :cond_71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    :cond_75
    const/16 v8, 0x1b

    if-ne v1, v8, :cond_7f

    const/16 v8, 0x1d

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6f

    :cond_7f
    const/16 v8, 0x1e

    if-ne v1, v8, :cond_85

    const/4 v7, 0x1

    goto :goto_6f

    :cond_85
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    :pswitch_8a
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v8, v8

    if-ge v1, v8, :cond_a2

    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v6, v8, v1

    if-eqz v7, :cond_9e

    add-int/lit16 v8, v6, 0x80

    int-to-char v8, v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_9c
    const/4 v5, 0x0

    goto :goto_2e

    :cond_9e
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9c

    :cond_a2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    :cond_a7
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-gtz v8, :cond_7

    goto/16 :goto_d

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_4d
        :pswitch_5d
        :pswitch_8a
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .registers 7

    shl-int/lit8 v2, p0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    div-int/lit16 v1, v0, 0x640

    const/4 v2, 0x0

    aput v1, p2, v2

    mul-int/lit16 v2, v1, 0x640

    sub-int/2addr v0, v2

    div-int/lit8 v1, v0, 0x28

    const/4 v2, 0x1

    aput v1, p2, v2

    const/4 v2, 0x2

    mul-int/lit8 v3, v1, 0x28

    sub-int v3, v0, v3

    aput v3, p2, v2

    return-void
.end method

.method private static unrandomize255State(II)I
    .registers 5

    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, 0x1

    sub-int v1, p0, v0

    if-ltz v1, :cond_b

    :goto_a
    return v1

    :cond_b
    add-int/lit16 v1, v1, 0x100

    goto :goto_a
.end method
