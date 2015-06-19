.class public final Lcom/google/zxing/e/a/e;
.super Lcom/google/zxing/e/a/a;
.source "RSS14Reader.java"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[[I


# instance fields
.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/d;",
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

    sput-object v0, Lcom/google/zxing/e/a/e;->g:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/google/zxing/e/a/e;->h:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/google/zxing/e/a/e;->i:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/google/zxing/e/a/e;->j:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/google/zxing/e/a/e;->k:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/google/zxing/e/a/e;->l:[I

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

    sput-object v0, Lcom/google/zxing/e/a/e;->m:[[I

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

    invoke-direct {p0}, Lcom/google/zxing/e/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/a/e;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/a/e;->o:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/zxing/b/a;Lcom/google/zxing/e/a/c;Z)Lcom/google/zxing/e/a/b;
    .registers 16

    iget-object v3, p0, Lcom/google/zxing/e/a/a;->b:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v3, v0

    if-eqz p3, :cond_60

    iget-object v0, p2, Lcom/google/zxing/e/a/c;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/e/a/e;->b(Lcom/google/zxing/b/a;I[I)V

    :cond_2c
    if-eqz p3, :cond_7d

    const/16 v0, 0x10

    :goto_30
    invoke-static {v3}, Lcom/google/zxing/e/a/e;->a([I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float v4, v1, v2

    iget-object v6, p0, Lcom/google/zxing/e/a/a;->e:[I

    iget-object v7, p0, Lcom/google/zxing/e/a/a;->f:[I

    iget-object v5, p0, Lcom/google/zxing/e/a/a;->c:[F

    iget-object v8, p0, Lcom/google/zxing/e/a/a;->d:[F

    const/4 v1, 0x0

    :goto_41
    array-length v2, v3

    if-ge v1, v2, :cond_8f

    aget v2, v3, v1

    int-to-float v2, v2

    div-float v9, v2, v4

    const/high16 v2, 0x3f00

    add-float/2addr v2, v9

    float-to-int v2, v2

    if-gtz v2, :cond_80

    const/4 v2, 0x1

    :cond_50
    :goto_50
    shr-int/lit8 v10, v1, 0x1

    and-int/lit8 v11, v1, 0x1

    if-nez v11, :cond_87

    aput v2, v6, v10

    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v5, v10

    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_60
    iget-object v0, p2, Lcom/google/zxing/e/a/c;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/e/a/e;->a(Lcom/google/zxing/b/a;I[I)V

    const/4 v1, 0x0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_6e
    if-ge v1, v0, :cond_2c

    aget v2, v3, v1

    aget v4, v3, v0

    aput v4, v3, v1

    aput v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6e

    :cond_7d
    const/16 v0, 0xf

    goto :goto_30

    :cond_80
    const/16 v10, 0x8

    if-le v2, v10, :cond_50

    const/16 v2, 0x8

    goto :goto_50

    :cond_87
    aput v2, v7, v10

    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v8, v10

    goto :goto_5d

    :cond_8f
    iget-object v1, p0, Lcom/google/zxing/e/a/a;->e:[I

    invoke-static {v1}, Lcom/google/zxing/e/a/e;->a([I)I

    move-result v8

    iget-object v1, p0, Lcom/google/zxing/e/a/a;->f:[I

    invoke-static {v1}, Lcom/google/zxing/e/a/e;->a([I)I

    move-result v9

    add-int v1, v8, v9

    sub-int v10, v1, v0

    and-int/lit8 v1, v8, 0x1

    if-eqz p3, :cond_cb

    const/4 v0, 0x1

    :goto_a4
    if-ne v1, v0, :cond_cd

    const/4 v0, 0x1

    move v5, v0

    :goto_a8
    and-int/lit8 v0, v9, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d0

    const/4 v0, 0x1

    move v4, v0

    :goto_af
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_dd

    const/16 v11, 0xc

    if-le v8, v11, :cond_d3

    const/4 v2, 0x1

    :cond_ba
    :goto_ba
    const/16 v11, 0xc

    if-le v9, v11, :cond_d8

    const/4 v0, 0x1

    :cond_bf
    :goto_bf
    const/4 v11, 0x1

    if-ne v10, v11, :cond_105

    if-eqz v5, :cond_fc

    if-eqz v4, :cond_f2

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_cb
    const/4 v0, 0x0

    goto :goto_a4

    :cond_cd
    const/4 v0, 0x0

    move v5, v0

    goto :goto_a8

    :cond_d0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_af

    :cond_d3
    const/4 v11, 0x4

    if-ge v8, v11, :cond_ba

    const/4 v3, 0x1

    goto :goto_ba

    :cond_d8
    const/4 v11, 0x4

    if-ge v9, v11, :cond_bf

    const/4 v1, 0x1

    goto :goto_bf

    :cond_dd
    const/16 v11, 0xb

    if-le v8, v11, :cond_e8

    const/4 v2, 0x1

    :cond_e2
    :goto_e2
    const/16 v11, 0xa

    if-le v9, v11, :cond_ed

    const/4 v0, 0x1

    goto :goto_bf

    :cond_e8
    const/4 v11, 0x5

    if-ge v8, v11, :cond_e2

    const/4 v3, 0x1

    goto :goto_e2

    :cond_ed
    const/4 v11, 0x4

    if-ge v9, v11, :cond_bf

    const/4 v1, 0x1

    goto :goto_bf

    :cond_f2
    const/4 v2, 0x1

    :cond_f3
    :goto_f3
    if-eqz v3, :cond_142

    if-eqz v2, :cond_13b

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_fc
    if-nez v4, :cond_103

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_103
    const/4 v0, 0x1

    goto :goto_f3

    :cond_105
    const/4 v11, -0x1

    if-ne v10, v11, :cond_11c

    if-eqz v5, :cond_113

    if-eqz v4, :cond_111

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_111
    const/4 v3, 0x1

    goto :goto_f3

    :cond_113
    if-nez v4, :cond_11a

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_11a
    const/4 v1, 0x1

    goto :goto_f3

    :cond_11c
    if-nez v10, :cond_136

    if-eqz v5, :cond_12f

    if-nez v4, :cond_127

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_127
    if-ge v8, v9, :cond_12c

    const/4 v3, 0x1

    const/4 v0, 0x1

    goto :goto_f3

    :cond_12c
    const/4 v2, 0x1

    const/4 v1, 0x1

    goto :goto_f3

    :cond_12f
    if-eqz v4, :cond_f3

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_136
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_13b
    iget-object v3, p0, Lcom/google/zxing/e/a/a;->e:[I

    iget-object v4, p0, Lcom/google/zxing/e/a/a;->c:[F

    invoke-static {v3, v4}, Lcom/google/zxing/e/a/e;->a([I[F)V

    :cond_142
    if-eqz v2, :cond_14b

    iget-object v2, p0, Lcom/google/zxing/e/a/a;->e:[I

    iget-object v3, p0, Lcom/google/zxing/e/a/a;->c:[F

    invoke-static {v2, v3}, Lcom/google/zxing/e/a/e;->b([I[F)V

    :cond_14b
    if-eqz v1, :cond_15b

    if-eqz v0, :cond_154

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_154
    iget-object v1, p0, Lcom/google/zxing/e/a/a;->f:[I

    iget-object v2, p0, Lcom/google/zxing/e/a/a;->c:[F

    invoke-static {v1, v2}, Lcom/google/zxing/e/a/e;->a([I[F)V

    :cond_15b
    if-eqz v0, :cond_164

    iget-object v0, p0, Lcom/google/zxing/e/a/a;->f:[I

    iget-object v1, p0, Lcom/google/zxing/e/a/a;->d:[F

    invoke-static {v0, v1}, Lcom/google/zxing/e/a/e;->b([I[F)V

    :cond_164
    const/4 v2, 0x0

    const/4 v1, 0x0

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    :goto_16b
    if-ltz v0, :cond_17a

    mul-int/lit8 v1, v3, 0x9

    aget v2, v6, v0

    add-int/2addr v1, v2

    aget v2, v6, v0

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    goto :goto_16b

    :cond_17a
    const/4 v1, 0x0

    const/4 v0, 0x0

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_17f
    if-ltz v2, :cond_18c

    mul-int/lit8 v1, v1, 0x9

    aget v5, v7, v2

    add-int/2addr v1, v5

    aget v5, v7, v2

    add-int/2addr v0, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_17f

    :cond_18c
    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    if-eqz p3, :cond_1c6

    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_19c

    const/16 v0, 0xc

    if-gt v4, v0, :cond_19c

    const/4 v0, 0x4

    if-ge v4, v0, :cond_1a1

    :cond_19c
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_1a1
    rsub-int/lit8 v0, v4, 0xc

    div-int/lit8 v0, v0, 0x2

    sget-object v2, Lcom/google/zxing/e/a/e;->k:[I

    aget v2, v2, v0

    rsub-int/lit8 v3, v2, 0x9

    const/4 v4, 0x0

    invoke-static {v6, v2, v4}, Lcom/google/zxing/e/a/f;->a([IIZ)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v7, v3, v4}, Lcom/google/zxing/e/a/f;->a([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/zxing/e/a/e;->g:[I

    aget v4, v4, v0

    sget-object v5, Lcom/google/zxing/e/a/e;->i:[I

    aget v5, v5, v0

    new-instance v0, Lcom/google/zxing/e/a/b;

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/e/a/b;-><init>(II)V

    :goto_1c5
    return-object v0

    :cond_1c6
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1d1

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1d1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1d6

    :cond_1d1
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_1d6
    rsub-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x2

    sget-object v2, Lcom/google/zxing/e/a/e;->l:[I

    aget v2, v2, v0

    rsub-int/lit8 v3, v2, 0x9

    const/4 v4, 0x1

    invoke-static {v6, v2, v4}, Lcom/google/zxing/e/a/f;->a([IIZ)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Lcom/google/zxing/e/a/f;->a([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/zxing/e/a/e;->h:[I

    aget v4, v4, v0

    sget-object v5, Lcom/google/zxing/e/a/e;->j:[I

    aget v5, v5, v0

    new-instance v0, Lcom/google/zxing/e/a/b;

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/e/a/b;-><init>(II)V

    goto :goto_1c5
.end method

.method private a(Lcom/google/zxing/b/a;ZILjava/util/Map;)Lcom/google/zxing/e/a/d;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/b/a;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/e;",
            "*>;)",
            "Lcom/google/zxing/e/a/d;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/google/zxing/e/a/a;->a:[I

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x2

    const/4 v2, 0x0

    aput v2, v5, v0

    const/4 v0, 0x3

    const/4 v2, 0x0

    aput v2, v5, v0

    iget v6, p1, Lcom/google/zxing/b/a;->b:I

    const/4 v0, 0x0

    :goto_16
    if-ge v1, v6, :cond_26

    invoke-virtual {p1, v1}, Lcom/google/zxing/b/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_1f
    if-eq p2, v0, :cond_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    goto :goto_1f

    :cond_26
    const/4 v2, 0x0

    move v4, v1

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_2b
    if-ge v4, v6, :cond_9e

    invoke-virtual {p1, v4}, Lcom/google/zxing/b/a;->a(I)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_44

    aget v3, v5, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v0

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_3d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v8, v1

    move v1, v2

    move v2, v8

    goto :goto_2b

    :cond_44
    const/4 v3, 0x3

    if-ne v0, v3, :cond_97

    invoke-static {v5}, Lcom/google/zxing/e/a/e;->b([I)Z

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    const/4 v0, 0x1

    aput v4, v6, v0

    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/b/a;->a(I)Z

    move-result v1

    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/lit8 v0, v0, -0x1

    :goto_62
    if-ltz v0, :cond_a6

    invoke-virtual {p1, v0}, Lcom/google/zxing/b/a;->a(I)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_a6

    add-int/lit8 v0, v0, -0x1

    goto :goto_62

    :cond_6e
    const/4 v3, 0x0

    aget v3, v5, v3

    const/4 v7, 0x1

    aget v7, v5, v7

    add-int/2addr v3, v7

    add-int/2addr v3, v1

    const/4 v1, 0x0

    const/4 v7, 0x2

    aget v7, v5, v7

    aput v7, v5, v1

    const/4 v1, 0x1

    const/4 v7, 0x3

    aget v7, v5, v7

    aput v7, v5, v1

    const/4 v1, 0x2

    const/4 v7, 0x0

    aput v7, v5, v1

    const/4 v1, 0x3

    const/4 v7, 0x0

    aput v7, v5, v1

    add-int/lit8 v1, v0, -0x1

    :goto_8c
    const/4 v0, 0x1

    aput v0, v5, v1

    if-nez v2, :cond_9c

    const/4 v0, 0x1

    :goto_92
    move v2, v3

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_3d

    :cond_97
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    goto :goto_8c

    :cond_9c
    const/4 v0, 0x0

    goto :goto_92

    :cond_9e
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :catch_a3
    move-exception v0

    const/4 v0, 0x0

    :goto_a5
    return-object v0

    :cond_a6
    add-int/lit8 v5, v0, 0x1

    const/4 v0, 0x0

    aget v0, v6, v0

    sub-int/2addr v0, v5

    iget-object v1, p0, Lcom/google/zxing/e/a/a;->a:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/google/zxing/e/a/e;->m:[[I

    invoke-static {v1, v0}, Lcom/google/zxing/e/a/e;->a([I[[I)I

    move-result v1

    const/4 v0, 0x1

    aget v4, v6, v0

    if-eqz p2, :cond_12e

    iget v0, p1, Lcom/google/zxing/b/a;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v5

    iget v0, p1, Lcom/google/zxing/b/a;->b:I

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    :goto_d0
    new-instance v0, Lcom/google/zxing/e/a/c;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v7, 0x0

    aput v5, v2, v7

    const/4 v5, 0x1

    const/4 v7, 0x1

    aget v7, v6, v7

    aput v7, v2, v5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/e/a/c;-><init>(I[IIII)V

    if-nez p4, :cond_124

    const/4 v1, 0x0

    move-object v2, v1

    :goto_e6
    if-eqz v2, :cond_105

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v3, 0x1

    aget v3, v6, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    if-eqz p2, :cond_fc

    iget v3, p1, Lcom/google/zxing/b/a;->b:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    sub-float v1, v3, v1

    :cond_fc
    new-instance v3, Lcom/google/zxing/o;

    int-to-float v4, p3

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/o;-><init>(FF)V

    invoke-interface {v2, v3}, Lcom/google/zxing/p;->a(Lcom/google/zxing/o;)V

    :cond_105
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/zxing/e/a/e;->a(Lcom/google/zxing/b/a;Lcom/google/zxing/e/a/c;Z)Lcom/google/zxing/e/a/b;

    move-result-object v2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/zxing/e/a/e;->a(Lcom/google/zxing/b/a;Lcom/google/zxing/e/a/c;Z)Lcom/google/zxing/e/a/b;

    move-result-object v3

    new-instance v1, Lcom/google/zxing/e/a/d;

    iget v4, v2, Lcom/google/zxing/e/a/b;->a:I

    mul-int/lit16 v4, v4, 0x63d

    iget v5, v3, Lcom/google/zxing/e/a/b;->a:I

    add-int/2addr v4, v5

    iget v2, v2, Lcom/google/zxing/e/a/b;->b:I

    iget v3, v3, Lcom/google/zxing/e/a/b;->b:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-direct {v1, v4, v2, v0}, Lcom/google/zxing/e/a/d;-><init>(IILcom/google/zxing/e/a/c;)V

    move-object v0, v1

    goto :goto_a5

    :cond_124
    sget-object v1, Lcom/google/zxing/e;->h:Lcom/google/zxing/e;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/p;
    :try_end_12c
    .catch Lcom/google/zxing/i; {:try_start_1 .. :try_end_12c} :catch_a3

    move-object v2, v1

    goto :goto_e6

    :cond_12e
    move v3, v5

    goto :goto_d0
.end method

.method private static a(Ljava/util/Collection;Lcom/google/zxing/e/a/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/e/a/d;",
            ">;",
            "Lcom/google/zxing/e/a/d;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/d;

    iget v3, v0, Lcom/google/zxing/e/a/b;->a:I

    iget v4, p1, Lcom/google/zxing/e/a/b;->a:I

    if-ne v3, v4, :cond_8

    iget v1, v0, Lcom/google/zxing/e/a/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/zxing/e/a/d;->d:I

    const/4 v0, 0x1

    :goto_21
    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_27
    move v0, v1

    goto :goto_21
.end method


# virtual methods
.method public final a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/b/a;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/e;",
            "*>;)",
            "Lcom/google/zxing/m;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3, p1, p3}, Lcom/google/zxing/e/a/e;->a(Lcom/google/zxing/b/a;ZILjava/util/Map;)Lcom/google/zxing/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/e/a/e;->n:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/zxing/e/a/e;->a(Ljava/util/Collection;Lcom/google/zxing/e/a/d;)V

    invoke-virtual {p2}, Lcom/google/zxing/b/a;->b()V

    invoke-direct {p0, p2, v6, p1, p3}, Lcom/google/zxing/e/a/e;->a(Lcom/google/zxing/b/a;ZILjava/util/Map;)Lcom/google/zxing/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/e/a/e;->o:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/zxing/e/a/e;->a(Ljava/util/Collection;Lcom/google/zxing/e/a/d;)V

    invoke-virtual {p2}, Lcom/google/zxing/b/a;->b()V

    iget-object v0, p0, Lcom/google/zxing/e/a/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/zxing/e/a/d;

    iget v0, v1, Lcom/google/zxing/e/a/d;->d:I

    if-le v0, v6, :cond_20

    iget-object v0, p0, Lcom/google/zxing/e/a/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/d;

    iget v2, v0, Lcom/google/zxing/e/a/d;->d:I

    if-le v2, v6, :cond_37

    iget-object v2, v1, Lcom/google/zxing/e/a/d;->c:Lcom/google/zxing/e/a/c;

    iget v2, v2, Lcom/google/zxing/e/a/c;->a:I

    iget-object v2, v0, Lcom/google/zxing/e/a/d;->c:Lcom/google/zxing/e/a/c;

    iget v2, v2, Lcom/google/zxing/e/a/c;->a:I

    iget v2, v1, Lcom/google/zxing/e/a/b;->b:I

    iget v7, v0, Lcom/google/zxing/e/a/b;->b:I

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v2, v7

    rem-int/lit8 v7, v2, 0x4f

    iget-object v2, v1, Lcom/google/zxing/e/a/d;->c:Lcom/google/zxing/e/a/c;

    iget v2, v2, Lcom/google/zxing/e/a/c;->a:I

    mul-int/lit8 v2, v2, 0x9

    iget-object v8, v0, Lcom/google/zxing/e/a/d;->c:Lcom/google/zxing/e/a/c;

    iget v8, v8, Lcom/google/zxing/e/a/c;->a:I

    add-int/2addr v2, v8

    const/16 v8, 0x48

    if-le v2, v8, :cond_69

    add-int/lit8 v2, v2, -0x1

    :cond_69
    const/16 v8, 0x8

    if-le v2, v8, :cond_6f

    add-int/lit8 v2, v2, -0x1

    :cond_6f
    if-ne v7, v2, :cond_9a

    move v2, v6

    :goto_72
    if-eqz v2, :cond_37

    const-wide/32 v4, 0x453af5

    iget v2, v1, Lcom/google/zxing/e/a/b;->a:I

    int-to-long v7, v2

    mul-long/2addr v4, v7

    iget v2, v0, Lcom/google/zxing/e/a/b;->a:I

    int-to-long v7, v2

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xd

    :goto_90
    if-lez v2, :cond_9c

    const/16 v5, 0x30

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_90

    :cond_9a
    move v2, v3

    goto :goto_72

    :cond_9c
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    move v5, v3

    :goto_a1
    const/16 v2, 0xd

    if-ge v4, v2, :cond_b6

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    and-int/lit8 v8, v4, 0x1

    if-nez v8, :cond_b1

    mul-int/lit8 v2, v2, 0x3

    :cond_b1
    add-int/2addr v5, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_a1

    :cond_b6
    rem-int/lit8 v2, v5, 0xa

    rsub-int/lit8 v2, v2, 0xa

    const/16 v4, 0xa

    if-ne v2, v4, :cond_bf

    move v2, v3

    :cond_bf
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/zxing/e/a/d;->c:Lcom/google/zxing/e/a/c;

    iget-object v1, v1, Lcom/google/zxing/e/a/c;->c:[Lcom/google/zxing/o;

    iget-object v0, v0, Lcom/google/zxing/e/a/d;->c:Lcom/google/zxing/e/a/c;

    iget-object v0, v0, Lcom/google/zxing/e/a/c;->c:[Lcom/google/zxing/o;

    new-instance v2, Lcom/google/zxing/m;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/o;

    aget-object v8, v1, v3

    aput-object v8, v7, v3

    aget-object v1, v1, v6

    aput-object v1, v7, v6

    const/4 v1, 0x2

    aget-object v3, v0, v3

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aget-object v0, v0, v6

    aput-object v0, v7, v1

    sget-object v0, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;

    invoke-direct {v2, v4, v5, v7, v0}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V

    return-object v2

    :cond_f0
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/e/a/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/zxing/e/a/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
