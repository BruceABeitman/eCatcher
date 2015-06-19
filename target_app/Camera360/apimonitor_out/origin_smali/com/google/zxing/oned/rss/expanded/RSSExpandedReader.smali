.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I = null

.field private static final FINDER_PATTERNS:[[I = null

.field private static final FINDER_PATTERN_SEQUENCES:[[I = null

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I = null

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    new-array v0, v5, [I

    fill-array-data v0, :array_16e

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_17c

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_18a

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_198

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1a4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_1b0

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_1bc

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_1c8

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1d4

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1e0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1f4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_208

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_21c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_230

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_244

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_258

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_26c

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_280

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_294

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_2a8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_2bc

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_2d0

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_2e4

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_2f8

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_30c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_320

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_334

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_348

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_35c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_370

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_384

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_398

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_3ac

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_3b4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3be

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_3ca

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_3d8

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_3e8

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_3fa

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_40e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_424

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_43c

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    :array_16e
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_17c
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
    .end array-data

    :array_18a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x1t 0x0t 0x0t
        0x6ct 0x5t 0x0t 0x0t
        0x84t 0xbt 0x0t 0x0t
        0x94t 0xft 0x0t 0x0t
    .end array-data

    :array_198
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1bc
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1f4
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
    .end array-data

    :array_208
    .array-data 0x4
        0xbdt 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
    .end array-data

    :array_21c
    .array-data 0x4
        0xc1t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data

    :array_230
    .array-data 0x4
        0x3et 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
    .end array-data

    :array_244
    .array-data 0x4
        0xb9t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_258
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_26c
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
    .end array-data

    :array_280
    .array-data 0x4
        0x2et 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_294
    .array-data 0x4
        0x4ct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
    .end array-data

    :array_2a8
    .array-data 0x4
        0x2bt 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
    .end array-data

    :array_2bc
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d0
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e4
    .array-data 0x4
        0x46t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f8
    .array-data 0x4
        0x86t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
    .end array-data

    :array_30c
    .array-data 0x4
        0x94t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_320
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_334
    .array-data 0x4
        0x78t 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
    .end array-data

    :array_348
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
    .end array-data

    :array_35c
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
    .end array-data

    :array_370
    .array-data 0x4
        0xa1t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x9ft 0x0t 0x0t 0x0t
    .end array-data

    :array_384
    .array-data 0x4
        0x37t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_398
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
    .end array-data

    :array_3ac
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3be
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_3ca
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3d8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_3fa
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_40e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_424
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_43c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v12, 0xd

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v3

    add-int v10, v8, v3

    sub-int v6, v10, p1

    and-int/lit8 v10, v8, 0x1

    if-ne v10, v9, :cond_38

    move v7, v9

    :goto_1e
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_23

    move v2, v9

    :cond_23
    const/4 v5, 0x0

    const/4 v1, 0x0

    if-le v8, v12, :cond_3a

    const/4 v1, 0x1

    :cond_28
    :goto_28
    const/4 v4, 0x0

    const/4 v0, 0x0

    if-le v3, v12, :cond_3e

    const/4 v0, 0x1

    :cond_2d
    :goto_2d
    if-ne v6, v9, :cond_55

    if-eqz v7, :cond_4c

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_38
    move v7, v2

    goto :goto_1e

    :cond_3a
    if-ge v8, v11, :cond_28

    const/4 v5, 0x1

    goto :goto_28

    :cond_3e
    if-ge v3, v11, :cond_2d

    const/4 v4, 0x1

    goto :goto_2d

    :cond_42
    const/4 v1, 0x1

    :cond_43
    :goto_43
    if-eqz v5, :cond_96

    if-eqz v1, :cond_8b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_4c
    if-nez v2, :cond_53

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_53
    const/4 v0, 0x1

    goto :goto_43

    :cond_55
    const/4 v9, -0x1

    if-ne v6, v9, :cond_6c

    if-eqz v7, :cond_63

    if-eqz v2, :cond_61

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_61
    const/4 v5, 0x1

    goto :goto_43

    :cond_63
    if-nez v2, :cond_6a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_6a
    const/4 v4, 0x1

    goto :goto_43

    :cond_6c
    if-nez v6, :cond_86

    if-eqz v7, :cond_7f

    if-nez v2, :cond_77

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_77
    if-ge v8, v3, :cond_7c

    const/4 v5, 0x1

    const/4 v0, 0x1

    goto :goto_43

    :cond_7c
    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_43

    :cond_7f
    if-eqz v2, :cond_43

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_86
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_8b
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    :cond_96
    if-eqz v1, :cond_a3

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_a3
    if-eqz v4, :cond_b7

    if-eqz v0, :cond_ac

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_ac
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    :cond_b7
    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_c4
    return-void
.end method

.method private checkChecksum()Z
    .registers 12

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    if-nez v5, :cond_14

    :cond_13
    :goto_13
    return v9

    :cond_14
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v2

    const/4 v8, 0x2

    const/4 v7, 0x1

    :goto_1a
    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_45

    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    if-eqz v4, :cond_42

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_45
    rem-int/lit16 v2, v2, 0xd3

    add-int/lit8 v10, v8, -0x4

    mul-int/lit16 v10, v10, 0xd3

    add-int v1, v10, v2

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    if-ne v1, v10, :cond_13

    const/4 v9, 0x1

    goto :goto_13
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move v0, p2

    :goto_1
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5e

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v4, :cond_2f

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2f
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_43

    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_43
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v5

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    :goto_4b
    return-object v5

    :cond_4c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v0, 0x1

    :try_start_59
    invoke-direct {p0, v3, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_5c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_59 .. :try_end_5c} :catch_63

    move-result-object v5

    goto :goto_4b

    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :catch_63
    move-exception v5

    goto :goto_40
.end method

.method private checkRows(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_11

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1d

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_27
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1e .. :try_end_27} :catch_30

    move-result-object v0

    :goto_28
    if-eqz p1, :cond_10

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_10

    :catch_30
    move-exception v1

    goto :goto_28
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    new-instance v5, Lcom/google/zxing/Result;

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    aget-object v8, v2, v9

    aput-object v8, v7, v9

    aget-object v8, v2, v10

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aget-object v9, v3, v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aget-object v9, v3, v10

    aput-object v9, v7, v8

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v4, v6, v7, v8}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v5
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ltz p3, :cond_4c

    move v5, p3

    :goto_1b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_6c

    const/4 v6, 0x1

    :goto_24
    iget-boolean v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v9, :cond_2b

    if-nez v6, :cond_6e

    const/4 v6, 0x1

    :cond_2b
    :goto_2b
    const/4 v2, 0x0

    :goto_2c
    if-ge v5, v7, :cond_37

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_70

    const/4 v2, 0x1

    :goto_35
    if-nez v2, :cond_72

    :cond_37
    const/4 v0, 0x0

    move v4, v5

    move v8, v5

    :goto_3a
    if-ge v8, v7, :cond_bd

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_75

    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    :goto_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_4c
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_54

    const/4 v5, 0x0

    goto :goto_1b

    :cond_54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v5, v9, v10

    goto :goto_1b

    :cond_6c
    const/4 v6, 0x0

    goto :goto_24

    :cond_6e
    const/4 v6, 0x0

    goto :goto_2b

    :cond_70
    const/4 v2, 0x0

    goto :goto_35

    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_75
    const/4 v9, 0x3

    if-ne v0, v9, :cond_b8

    if-eqz v6, :cond_7d

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    :cond_7d
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_8e

    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x0

    aput v4, v9, v10

    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v10, 0x1

    aput v8, v9, v10

    return-void

    :cond_8e
    if-eqz v6, :cond_93

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    :cond_93
    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    const/4 v9, 0x0

    const/4 v10, 0x2

    aget v10, v1, v10

    aput v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x3

    aget v10, v1, v10

    aput v10, v1, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    add-int/lit8 v0, v0, -0x1

    :goto_b1
    const/4 v9, 0x1

    aput v9, v1, v0

    if-nez v2, :cond_bb

    const/4 v2, 0x1

    :goto_b7
    goto :goto_49

    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    :cond_bb
    const/4 v2, 0x0

    goto :goto_b7

    :cond_bd
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    goto :goto_e
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v1, 0x1

    :cond_3d
    if-nez v1, :cond_15

    const/4 v0, 0x0

    :cond_40
    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_43
    return v8

    :cond_44
    const/4 v8, 0x0

    goto :goto_43
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_34

    aget-object v4, v0, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, v4

    if-le v6, v7, :cond_12

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    const/4 v5, 0x1

    const/4 v2, 0x0

    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2d

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    aget v7, v4, v2

    if-eq v6, v7, :cond_31

    const/4 v5, 0x0

    :cond_2d
    if-eqz v5, :cond_f

    const/4 v6, 0x1

    :goto_30
    return v6

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_34
    const/4 v6, 0x0

    goto :goto_30
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 15

    const/4 v10, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_42

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    add-int/lit8 v8, v0, -0x1

    :goto_a
    if-ltz v8, :cond_15

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_15

    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    :cond_15
    add-int/lit8 v8, v8, 0x1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    sub-int v7, v0, v8

    move v3, v8

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v4, v0, v10

    :goto_22
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v6

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v7, v6, v5

    :try_start_2e
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_33
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2e .. :try_end_33} :catch_57

    move-result v1

    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    :goto_41
    return-object v0

    :cond_42
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v3, v0, v5

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v10

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v10

    sub-int v7, v4, v0

    goto :goto_22

    :catch_57
    move-exception v9

    const/4 v0, 0x0

    goto :goto_41
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const/4 v1, 0x1

    :cond_4b
    if-nez v1, :cond_27

    const/4 v0, 0x0

    :cond_4e
    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_54
    return-void
.end method

.method private static reverseCounters([I)V
    .registers 5

    array-length v1, p0

    const/4 v0, 0x0

    :goto_2
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_19

    aget v2, p0, v0

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method private storeRow(IZ)V
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1f

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_24

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    :cond_1f
    if-nez v2, :cond_23

    if-eqz v3, :cond_2d

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2d
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v5, v6, p1, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    goto :goto_23
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v5

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v31, v5, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput v31, v5, v30

    const/16 v30, 0x2

    const/16 v31, 0x0

    aput v31, v5, v30

    const/16 v30, 0x3

    const/16 v31, 0x0

    aput v31, v5, v30

    const/16 v30, 0x4

    const/16 v31, 0x0

    aput v31, v5, v30

    const/16 v30, 0x5

    const/16 v31, 0x0

    aput v31, v5, v30

    const/16 v30, 0x6

    const/16 v31, 0x0

    aput v31, v5, v30

    const/16 v30, 0x7

    const/16 v31, 0x0

    aput v31, v5, v30

    if-eqz p4, :cond_86

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    :cond_45
    const/16 v16, 0x11

    invoke-static {v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v6, v30, v31

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x4170

    div-float v11, v30, v31

    sub-float v30, v6, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    div-float v30, v30, v11

    const v31, 0x3e99999a

    cmpl-float v30, v30, v31

    if-lez v30, :cond_aa

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    :cond_86
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v14, 0x0

    array-length v0, v5

    move/from16 v30, v0

    add-int/lit8 v15, v30, -0x1

    :goto_9b
    if-ge v14, v15, :cond_45

    aget v24, v5, v14

    aget v30, v5, v15

    aput v30, v5, v14

    aput v24, v5, v15

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_9b

    :cond_aa
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v9

    const/4 v14, 0x0

    :goto_bb
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v14, v0, :cond_11a

    const/high16 v30, 0x3f80

    aget v31, v5, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    div-float v27, v30, v6

    const/high16 v30, 0x3f00

    add-float v30, v30, v27

    move/from16 v0, v30

    float-to-int v4, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ge v4, v0, :cond_fb

    const v30, 0x3e99999a

    cmpg-float v30, v27, v30

    if-gez v30, :cond_e8

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    :cond_e8
    const/4 v4, 0x1

    :cond_e9
    :goto_e9
    shr-int/lit8 v22, v14, 0x1

    and-int/lit8 v30, v14, 0x1

    if-nez v30, :cond_110

    aput v4, v18, v22

    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v27, v30

    aput v30, v19, v22

    :goto_f8
    add-int/lit8 v14, v14, 0x1

    goto :goto_bb

    :cond_fb
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v4, v0, :cond_e9

    const v30, 0x410b3333

    cmpl-float v30, v27, v30

    if-lez v30, :cond_10d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    :cond_10d
    const/16 v4, 0x8

    goto :goto_e9

    :cond_110
    aput v4, v8, v22

    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v27, v30

    aput v30, v9, v22

    goto :goto_f8

    :cond_11a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v30

    mul-int/lit8 v31, v30, 0x4

    if-eqz p3, :cond_15d

    const/16 v30, 0x0

    :goto_12b
    add-int v31, v31, v30

    if-eqz p4, :cond_160

    const/16 v30, 0x0

    :goto_131
    add-int v30, v30, v31

    add-int/lit8 v29, v30, -0x1

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_140
    if-ltz v14, :cond_163

    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_156

    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v29

    mul-int/lit8 v31, v14, 0x2

    aget v28, v30, v31

    aget v30, v18, v14

    mul-int v30, v30, v28

    add-int v17, v17, v30

    :cond_156
    aget v30, v18, v14

    add-int v20, v20, v30

    add-int/lit8 v14, v14, -0x1

    goto :goto_140

    :cond_15d
    const/16 v30, 0x2

    goto :goto_12b

    :cond_160
    const/16 v30, 0x1

    goto :goto_131

    :cond_163
    const/4 v7, 0x0

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_169
    if-ltz v14, :cond_184

    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_181

    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v29

    mul-int/lit8 v31, v14, 0x2

    add-int/lit8 v31, v31, 0x1

    aget v28, v30, v31

    aget v30, v8, v14

    mul-int v30, v30, v28

    add-int v7, v7, v30

    :cond_181
    add-int/lit8 v14, v14, -0x1

    goto :goto_169

    :cond_184
    add-int v3, v17, v7

    and-int/lit8 v30, v20, 0x1

    if-nez v30, :cond_19a

    const/16 v30, 0xd

    move/from16 v0, v20

    move/from16 v1, v30

    if-gt v0, v1, :cond_19a

    const/16 v30, 0x4

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_19f

    :cond_19a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    :cond_19f
    rsub-int/lit8 v30, v20, 0xd

    div-int/lit8 v13, v30, 0x2

    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v21, v30, v13

    rsub-int/lit8 v10, v21, 0x9

    const/16 v30, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v8, v10, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v23, v30, v13

    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v12, v30, v13

    mul-int v30, v26, v23

    add-int v30, v30, v25

    add-int v27, v30, v12

    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v30
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 6
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    :try_end_f
    .catch Lcom/google/zxing/NotFoundException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v1

    :goto_10
    return-object v1

    :catch_11
    move-exception v1

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v1

    goto :goto_10
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v7, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_2

    :catch_e
    move-exception v1

    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    throw v1

    :cond_18
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    :cond_20
    return-object v2

    :cond_21
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_41

    move v3, v5

    :goto_2a
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    if-eqz v3, :cond_3c

    invoke-direct {p0, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_20

    invoke-direct {p0, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_20

    :cond_3c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :cond_41
    move v3, v6

    goto :goto_2a
.end method

.method getRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_48

    move v2, v8

    :goto_b
    iget-boolean v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v10, :cond_12

    if-nez v2, :cond_4a

    move v2, v8

    :cond_12
    :goto_12
    const/4 v3, 0x1

    const/4 v0, -0x1

    :cond_14
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    invoke-direct {p0, p1, p3, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    if-nez v6, :cond_4c

    iget-object v10, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v10, v10, v9

    invoke-static {p1, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v0

    :goto_25
    if-nez v3, :cond_14

    invoke-virtual {p0, p1, v6, v2, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    :cond_48
    move v2, v9

    goto :goto_b

    :cond_4a
    move v2, v9

    goto :goto_12

    :cond_4c
    const/4 v3, 0x0

    goto :goto_25

    :cond_4e
    const/4 v8, 0x0

    :try_start_4f
    invoke-virtual {p0, p1, v6, v2, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_52
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4f .. :try_end_52} :catch_5a

    move-result-object v7

    :goto_53
    const/4 v5, 0x1

    new-instance v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v8, v4, v7, v6, v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v8

    :catch_5a
    move-exception v1

    const/4 v7, 0x0

    goto :goto_53
.end method
