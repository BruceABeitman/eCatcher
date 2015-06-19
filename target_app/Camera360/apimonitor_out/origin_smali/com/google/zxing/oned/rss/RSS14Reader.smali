.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    new-array v0, v4, [I

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_e0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_ec

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_f8

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_104

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_110

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_11c

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_128

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_7a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    :array_88
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    :array_94
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xc1t 0x3t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0x9bt 0xat 0x0t 0x0t
    .end array-data

    :array_a2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xect 0x5t 0x0t 0x0t
    .end array-data

    :array_ae
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_bc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_c8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_ec
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_f8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_104
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_110
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_11c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_128
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_8

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    const/4 v0, 0x1

    :cond_22
    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private adjustOddEvenCounts(ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v3

    add-int v9, v8, v3

    sub-int v6, v9, p2

    and-int/lit8 v10, v8, 0x1

    if-eqz p1, :cond_3e

    const/4 v9, 0x1

    :goto_19
    if-ne v10, v9, :cond_40

    const/4 v7, 0x1

    :goto_1c
    and-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_42

    const/4 v2, 0x1

    :goto_22
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    const/16 v9, 0xc

    if-le v8, v9, :cond_44

    const/4 v1, 0x1

    :cond_2d
    :goto_2d
    const/16 v9, 0xc

    if-le v3, v9, :cond_49

    const/4 v0, 0x1

    :cond_32
    :goto_32
    const/4 v9, 0x1

    if-ne v6, v9, :cond_76

    if-eqz v7, :cond_6d

    if-eqz v2, :cond_63

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_3e
    const/4 v9, 0x0

    goto :goto_19

    :cond_40
    const/4 v7, 0x0

    goto :goto_1c

    :cond_42
    const/4 v2, 0x0

    goto :goto_22

    :cond_44
    const/4 v9, 0x4

    if-ge v8, v9, :cond_2d

    const/4 v5, 0x1

    goto :goto_2d

    :cond_49
    const/4 v9, 0x4

    if-ge v3, v9, :cond_32

    const/4 v4, 0x1

    goto :goto_32

    :cond_4e
    const/16 v9, 0xb

    if-le v8, v9, :cond_59

    const/4 v1, 0x1

    :cond_53
    :goto_53
    const/16 v9, 0xa

    if-le v3, v9, :cond_5e

    const/4 v0, 0x1

    goto :goto_32

    :cond_59
    const/4 v9, 0x5

    if-ge v8, v9, :cond_53

    const/4 v5, 0x1

    goto :goto_53

    :cond_5e
    const/4 v9, 0x4

    if-ge v3, v9, :cond_32

    const/4 v4, 0x1

    goto :goto_32

    :cond_63
    const/4 v1, 0x1

    :cond_64
    :goto_64
    if-eqz v5, :cond_b7

    if-eqz v1, :cond_ac

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_6d
    if-nez v2, :cond_74

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_74
    const/4 v0, 0x1

    goto :goto_64

    :cond_76
    const/4 v9, -0x1

    if-ne v6, v9, :cond_8d

    if-eqz v7, :cond_84

    if-eqz v2, :cond_82

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_82
    const/4 v5, 0x1

    goto :goto_64

    :cond_84
    if-nez v2, :cond_8b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_8b
    const/4 v4, 0x1

    goto :goto_64

    :cond_8d
    if-nez v6, :cond_a7

    if-eqz v7, :cond_a0

    if-nez v2, :cond_98

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_98
    if-ge v8, v3, :cond_9d

    const/4 v5, 0x1

    const/4 v0, 0x1

    goto :goto_64

    :cond_9d
    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_64

    :cond_a0
    if-eqz v2, :cond_64

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_a7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_ac
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    :cond_b7
    if-eqz v1, :cond_c4

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    :cond_c4
    if-eqz v4, :cond_d8

    if-eqz v0, :cond_cd

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_cd
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    :cond_d8
    if-eqz v0, :cond_e5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    :cond_e5
    return-void
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x4f

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    add-int v1, v2, v3

    const/16 v2, 0x48

    if-le v1, v2, :cond_27

    add-int/lit8 v1, v1, -0x1

    :cond_27
    const/16 v2, 0x8

    if-le v1, v2, :cond_2d

    add-int/lit8 v1, v1, -0x1

    :cond_2d
    if-ne v0, v1, :cond_31

    const/4 v2, 0x1

    :goto_30
    return v2

    :cond_31
    const/4 v2, 0x0

    goto :goto_30
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .registers 17

    const-wide/32 v9, 0x453af5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v11

    int-to-long v11, v11

    add-long v6, v9, v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0xe

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    rsub-int/lit8 v3, v9, 0xd

    :goto_21
    if-lez v3, :cond_2b

    const/16 v9, 0x30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_2b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_30
    const/16 v9, 0xd

    if-ge v3, v9, :cond_44

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    add-int/lit8 v2, v9, -0x30

    and-int/lit8 v9, v3, 0x1

    if-nez v9, :cond_40

    mul-int/lit8 v2, v2, 0x3

    :cond_40
    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_44
    rem-int/lit8 v9, v1, 0xa

    rsub-int/lit8 v1, v9, 0xa

    const/16 v9, 0xa

    if-ne v1, v9, :cond_4d

    const/4 v1, 0x0

    :cond_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    new-instance v9, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v4, v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v4, v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    aget-object v14, v5, v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x1

    aget-object v14, v5, v14

    aput-object v14, v12, v13

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v9
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v5

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v5, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput v30, v5, v29

    const/16 v29, 0x2

    const/16 v30, 0x0

    aput v30, v5, v29

    const/16 v29, 0x3

    const/16 v30, 0x0

    aput v30, v5, v29

    const/16 v29, 0x4

    const/16 v30, 0x0

    aput v30, v5, v29

    const/16 v29, 0x5

    const/16 v30, 0x0

    aput v30, v5, v29

    const/16 v29, 0x6

    const/16 v30, 0x0

    aput v30, v5, v29

    const/16 v29, 0x7

    const/16 v30, 0x0

    aput v30, v5, v29

    if-eqz p3, :cond_9a

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    :cond_45
    if-eqz p3, :cond_c0

    const/16 v16, 0x10

    :goto_49
    invoke-static {v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v6, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v9

    const/4 v14, 0x0

    :goto_6a
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_d6

    aget v29, v5, v14

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v29, v6

    const/high16 v29, 0x3f00

    add-float v29, v29, v28

    move/from16 v0, v29

    float-to-int v4, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ge v4, v0, :cond_c3

    const/4 v4, 0x1

    :cond_88
    :goto_88
    shr-int/lit8 v22, v14, 0x1

    and-int/lit8 v29, v14, 0x1

    if-nez v29, :cond_cc

    aput v4, v18, v22

    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v19, v22

    :goto_97
    add-int/lit8 v14, v14, 0x1

    goto :goto_6a

    :cond_9a
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v14, 0x0

    array-length v0, v5

    move/from16 v29, v0

    add-int/lit8 v15, v29, -0x1

    :goto_b1
    if-ge v14, v15, :cond_45

    aget v25, v5, v14

    aget v29, v5, v15

    aput v29, v5, v14

    aput v25, v5, v15

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_b1

    :cond_c0
    const/16 v16, 0xf

    goto :goto_49

    :cond_c3
    const/16 v29, 0x8

    move/from16 v0, v29

    if-le v4, v0, :cond_88

    const/16 v4, 0x8

    goto :goto_88

    :cond_cc
    aput v4, v8, v22

    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v9, v22

    goto :goto_97

    :cond_d6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_ea
    if-ltz v14, :cond_f9

    mul-int/lit8 v17, v17, 0x9

    aget v29, v18, v14

    add-int v17, v17, v29

    aget v29, v18, v14

    add-int v20, v20, v29

    add-int/lit8 v14, v14, -0x1

    goto :goto_ea

    :cond_f9
    const/4 v7, 0x0

    const/4 v10, 0x0

    array-length v0, v8

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_100
    if-ltz v14, :cond_10f

    mul-int/lit8 v7, v7, 0x9

    aget v29, v8, v14

    add-int v7, v7, v29

    aget v29, v8, v14

    add-int v10, v10, v29

    add-int/lit8 v14, v14, -0x1

    goto :goto_100

    :cond_10f
    mul-int/lit8 v29, v7, 0x3

    add-int v3, v17, v29

    if-eqz p3, :cond_164

    and-int/lit8 v29, v20, 0x1

    if-nez v29, :cond_129

    const/16 v29, 0xc

    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_129

    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_12e

    :cond_129
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    :cond_12e
    rsub-int/lit8 v29, v20, 0xc

    div-int/lit8 v13, v29, 0x2

    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    rsub-int/lit8 v11, v21, 0x9

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v23, v29, v13

    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v12, v29, v13

    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v27, v23

    add-int v30, v30, v26

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    :goto_163
    return-object v29

    :cond_164
    and-int/lit8 v29, v10, 0x1

    if-nez v29, :cond_174

    const/16 v29, 0xa

    move/from16 v0, v29

    if-gt v10, v0, :cond_174

    const/16 v29, 0x4

    move/from16 v0, v29

    if-ge v10, v0, :cond_179

    :cond_174
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    :cond_179
    rsub-int/lit8 v29, v10, 0xa

    div-int/lit8 v13, v29, 0x2

    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    rsub-int/lit8 v11, v21, 0x9

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v24, v29, v13

    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v12, v29, v13

    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v26, v24

    add-int v30, v30, v27

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    goto :goto_163
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, p1, v7, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v6

    invoke-direct {p0, p1, p3, p2, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    if-nez p4, :cond_54

    const/4 v5, 0x0

    :goto_c
    if-eqz v5, :cond_2e

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float v0, v7, v8

    if-eqz p2, :cond_25

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    sub-float v0, v7, v0

    :cond_25
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v0, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v5, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_2e
    const/4 v7, 0x1

    invoke-direct {p0, p1, v4, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {p0, p1, v4, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    new-instance v7, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x63d

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-direct {v7, v8, v9, v4}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    :goto_53
    return-object v7

    :cond_54
    sget-object v7, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/ResultPointCallback;
    :try_end_5c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_5c} :catch_5e

    move-object v5, v7

    goto :goto_c

    :catch_5e
    move-exception v1

    const/4 v7, 0x0

    goto :goto_53
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v1

    aput v7, v1, v7

    aput v7, v1, v6

    aput v7, v1, v10

    aput v7, v1, v11

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v2, 0x0

    :goto_15
    if-ge p2, v4, :cond_20

    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_35

    move v2, v6

    :goto_1e
    if-ne p3, v2, :cond_37

    :cond_20
    const/4 v0, 0x0

    move v3, p2

    move v5, p2

    :goto_23
    if-ge v5, v4, :cond_68

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_3a

    aget v8, v1, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v0

    :goto_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_35
    move v2, v7

    goto :goto_1e

    :cond_37
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_3a
    if-ne v0, v11, :cond_63

    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v8

    if-eqz v8, :cond_49

    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    :cond_49
    aget v8, v1, v7

    aget v9, v1, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    aget v8, v1, v10

    aput v8, v1, v7

    aget v8, v1, v11

    aput v8, v1, v6

    aput v7, v1, v10

    aput v7, v1, v11

    add-int/lit8 v0, v0, -0x1

    :goto_5d
    aput v6, v1, v0

    if-nez v2, :cond_66

    move v2, v6

    :goto_62
    goto :goto_32

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_66
    move v2, v7

    goto :goto_62

    :cond_68
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v5, 0x0

    aget v0, p4, v5

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    aget v0, p4, v5

    add-int/lit8 v8, v0, -0x1

    :goto_c
    if-ltz v8, :cond_18

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    xor-int/2addr v0, v9

    if-eqz v0, :cond_18

    add-int/lit8 v8, v8, -0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v8, v8, 0x1

    aget v0, p4, v5

    sub-int v7, v0, v8

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v7, v6, v5

    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    move v3, v8

    aget v4, p4, v10

    if-eqz p3, :cond_45

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    :cond_45
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v8, v2, v5

    aget v5, p4, v10

    aput v5, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 14
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p2, v8, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v4

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v8, v4}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    invoke-direct {p0, p2, v9, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v6

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v2, :cond_59

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v8

    if-le v8, v9, :cond_56

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v7, :cond_56

    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v8

    if-le v8, v9, :cond_53

    invoke-static {v3, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-static {v3, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v8

    return-object v8

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_59
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
