.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# static fields
.field private static final MAX_AVG_VARIANCE:I = 0x33

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0x73

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .registers 3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-void
.end method

.method protected static count([I)I
    .registers 6

    const/4 v2, 0x0

    move-object v1, p0

    array-length v4, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_c

    aget v0, v1, v3

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    return v2
.end method

.method protected static decrement([I[F)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v0, p1, v3

    const/4 v1, 0x1

    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_14

    aget v3, p1, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_11

    aget v0, p1, v1

    move v2, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    aget v3, p0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v2

    return-void
.end method

.method protected static increment([I[F)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v0, p1, v3

    const/4 v1, 0x1

    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_14

    aget v3, p1, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_11

    aget v0, p1, v1

    move v2, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    return-void
.end method

.method protected static isFinderPattern([I)Z
    .registers 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v11, p0, v10

    aget v12, p0, v9

    add-int v2, v11, v12

    const/4 v11, 0x2

    aget v11, p0, v11

    add-int/2addr v11, v2

    const/4 v12, 0x3

    aget v12, p0, v12

    add-int v8, v11, v12

    int-to-float v11, v2

    int-to-float v12, v8

    div-float v7, v11, v12

    const v11, 0x3f4aaaab

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_3f

    const v11, 0x3f649249

    cmpg-float v11, v7, v11

    if-gtz v11, :cond_3f

    const v6, 0x7fffffff

    const/high16 v5, -0x8000

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v4, :cond_38

    aget v1, v0, v3

    if-le v1, v5, :cond_32

    move v5, v1

    :cond_32
    if-ge v1, v6, :cond_35

    move v6, v1

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_38
    mul-int/lit8 v11, v6, 0xa

    if-ge v5, v11, :cond_3d

    :goto_3c
    return v9

    :cond_3d
    move v9, v10

    goto :goto_3c

    :cond_3f
    move v9, v10

    goto :goto_3c
.end method

.method protected static parseFinderValue([I[[I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_14

    aget-object v1, p1, v0

    const/16 v2, 0x73

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[II)I

    move-result v1

    const/16 v2, 0x33

    if-ge v1, v2, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object v0
.end method

.method protected final getEvenCounts()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object v0
.end method

.method protected final getOddCounts()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object v0
.end method
