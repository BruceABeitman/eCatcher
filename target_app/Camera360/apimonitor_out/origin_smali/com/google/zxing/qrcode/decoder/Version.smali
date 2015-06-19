.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void

    :array_10
    .array-data 0x4
        0x94t 0x7ct 0x0t 0x0t
        0xbct 0x85t 0x0t 0x0t
        0x99t 0x9at 0x0t 0x0t
        0xd3t 0xa4t 0x0t 0x0t
        0xf6t 0xbbt 0x0t 0x0t
        0x62t 0xc7t 0x0t 0x0t
        0x47t 0xd8t 0x0t 0x0t
        0xdt 0xe6t 0x0t 0x0t
        0x28t 0xf9t 0x0t 0x0t
        0x78t 0xbt 0x1t 0x0t
        0x5dt 0x14t 0x1t 0x0t
        0x17t 0x2at 0x1t 0x0t
        0x32t 0x35t 0x1t 0x0t
        0xa6t 0x49t 0x1t 0x0t
        0x83t 0x56t 0x1t 0x0t
        0xc9t 0x68t 0x1t 0x0t
        0xect 0x77t 0x1t 0x0t
        0xc4t 0x8et 0x1t 0x0t
        0xe1t 0x91t 0x1t 0x0t
        0xabt 0xaft 0x1t 0x0t
        0x8et 0xb0t 0x1t 0x0t
        0x1at 0xcct 0x1t 0x0t
        0x3ft 0xd3t 0x1t 0x0t
        0x75t 0xedt 0x1t 0x0t
        0x50t 0xf2t 0x1t 0x0t
        0xd5t 0x9t 0x2t 0x0t
        0xf0t 0x16t 0x2t 0x0t
        0xbat 0x28t 0x2t 0x0t
        0x9ft 0x37t 0x2t 0x0t
        0xbt 0x4bt 0x2t 0x0t
        0x2et 0x54t 0x2t 0x0t
        0x64t 0x6at 0x2t 0x0t
        0x41t 0x75t 0x2t 0x0t
        0x69t 0x8ct 0x2t 0x0t
    .end array-data
.end method

.method private varargs constructor <init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .registers 13

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    aget-object v7, p3, v8

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v2

    aget-object v7, p3, v8

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v5, :cond_2c

    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v8

    add-int/2addr v8, v2

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2c
    iput v6, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .registers 14

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v8, 0x7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xd

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x11

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1818

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x22

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x1c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1820

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xf

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x37

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1828

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x50

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x20

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1830

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1838

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1840

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x4e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x8

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_184a

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x61

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x27

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x12

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x9

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1854

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xa

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_185e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x45

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xb

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1868

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x51

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x32

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x33

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xc

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1872

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xd

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_187c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xe

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_1886

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x28

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xf

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_1892

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x57

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x58

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x10

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_189e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x62

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x63

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x11

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18aa

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x12

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18b6

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x78

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x13

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18c2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x71

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x14

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_18ce

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x15

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18da

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x16

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18e8

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x6f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x70

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x17

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18f6

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x18

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1904

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x19

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1912

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x6a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1a

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1920

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x21

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1b

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_192e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1c

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_193c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1d

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_194c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1e

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_195c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1f

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_196c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x20

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_197c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x21

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_198c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x22

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_199c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2c

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3b

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x23

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19ac

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x27

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x29

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x24

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19be

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x40

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x25

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19d0

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x31

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x18

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x26

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19e2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x30

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x27

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_19f4

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x28

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2b

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x43

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x28

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_1a06

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x77

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3d

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_1818
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    :array_1820
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_1828
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_1830
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_1838
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    :array_1840
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
    .end array-data

    :array_184a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_1854
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    :array_185e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_1868
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    :array_1872
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data

    :array_187c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
    .end array-data

    :array_1886
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data

    :array_1892
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
    .end array-data

    :array_189e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
    .end array-data

    :array_18aa
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
    .end array-data

    :array_18b6
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
    .end array-data

    :array_18c2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
    .end array-data

    :array_18ce
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
    .end array-data

    :array_18da
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
    .end array-data

    :array_18e8
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data

    :array_18f6
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data

    :array_1904
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
    .end array-data

    :array_1912
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    :array_1920
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
    .end array-data

    :array_192e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
    .end array-data

    :array_193c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
    .end array-data

    :array_194c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    :array_195c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
    .end array-data

    :array_196c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
    .end array-data

    :array_197c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
    .end array-data

    :array_198c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
    .end array-data

    :array_199c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
    .end array-data

    :array_19ac
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    :array_19be
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
    .end array-data

    :array_19d0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
    .end array-data

    :array_19e2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
    .end array-data

    :array_19f4
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a06
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 7

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_5
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    array-length v5, v5

    if-ge v3, v5, :cond_23

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    aget v4, v5, v3

    if-ne v4, p0, :cond_17

    add-int/lit8 v5, v3, 0x7

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    :goto_16
    return-object v5

    :cond_17
    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v2

    if-ge v2, v0, :cond_20

    add-int/lit8 v1, v3, 0x7

    move v0, v2

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_23
    const/4 v5, 0x3

    if-gt v0, v5, :cond_2b

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    goto :goto_16

    :cond_2b
    const/4 v5, 0x0

    goto :goto_16
.end method

.method public static getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    rem-int/lit8 v1, p0, 0x4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_a
    add-int/lit8 v1, p0, -0x11

    shr-int/lit8 v1, v1, 0x2

    :try_start_e
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    :catch_13
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/16 v0, 0x28

    if-le p0, v0, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;
    .registers 15

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x6

    const/16 v10, 0x9

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v1

    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    invoke-virtual {v0, v9, v9, v10, v10}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v6, v1, -0x8

    const/16 v7, 0x8

    invoke-virtual {v0, v6, v9, v7, v10}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v6, v1, -0x8

    const/16 v7, 0x8

    invoke-virtual {v0, v9, v6, v10, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    array-length v3, v6

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_4f

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v6, v6, v4

    add-int/lit8 v2, v6, -0x2

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v3, :cond_4c

    if-nez v4, :cond_37

    if-eqz v5, :cond_3d

    add-int/lit8 v6, v3, -0x1

    if-eq v5, v6, :cond_3d

    :cond_37
    add-int/lit8 v6, v3, -0x1

    if-ne v4, v6, :cond_40

    if-nez v5, :cond_40

    :cond_3d
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_40
    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v6, v6, v5

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-virtual {v0, v6, v2, v7, v8}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    goto :goto_3d

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_4f
    add-int/lit8 v6, v1, -0x11

    invoke-virtual {v0, v11, v10, v12, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v6, v1, -0x11

    invoke-virtual {v0, v10, v11, v6, v12}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget v6, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    if-le v6, v11, :cond_67

    add-int/lit8 v6, v1, -0xb

    invoke-virtual {v0, v6, v9, v13, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v6, v1, -0xb

    invoke-virtual {v0, v9, v6, v11, v13}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_67
    return-object v0
.end method

.method public getAlignmentPatternCenters()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    return-object v0
.end method

.method public getDimensionForVersion()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalCodewords()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
