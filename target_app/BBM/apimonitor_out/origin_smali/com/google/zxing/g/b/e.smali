.class public final Lcom/google/zxing/g/b/e;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# instance fields
.field public final a:Lcom/google/zxing/b/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/g/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field private final d:[I

.field private final e:Lcom/google/zxing/p;


# direct methods
.method public constructor <init>(Lcom/google/zxing/b/b;Lcom/google/zxing/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/g/b/e;->a:Lcom/google/zxing/b/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/g/b/e;->d:[I

    iput-object p2, p0, Lcom/google/zxing/g/b/e;->e:Lcom/google/zxing/p;

    return-void
.end method

.method private static a([II)F
    .registers 5

    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static a([I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    move v3, v0

    :goto_4
    const/4 v4, 0x5

    if-ge v2, v4, :cond_10

    aget v4, p0, v2

    if-nez v4, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    const/4 v2, 0x7

    if-lt v3, v2, :cond_b

    shl-int/lit8 v2, v3, 0x8

    div-int/lit8 v2, v2, 0x7

    div-int/lit8 v3, v2, 0x2

    aget v4, p0, v0

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_b

    aget v4, p0, v1

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_b

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    aget v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    if-ge v4, v5, :cond_b

    const/4 v4, 0x3

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_b

    const/4 v4, 0x4

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method private b()[I
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->d:[I

    aput v2, v0, v2

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->d:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->d:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->d:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->d:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->d:[I

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v4

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g/b/d;

    iget v7, v0, Lcom/google/zxing/g/b/d;->d:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_56

    add-int/lit8 v3, v3, 0x1

    iget v0, v0, Lcom/google/zxing/g/b/d;->c:F

    add-float/2addr v0, v1

    move v1, v3

    :goto_27
    move v3, v1

    move v1, v0

    goto :goto_10

    :cond_2a
    const/4 v0, 0x3

    if-ge v3, v0, :cond_2e

    :cond_2d
    :goto_2d
    return v4

    :cond_2e
    int-to-float v0, v5

    div-float v3, v1, v0

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g/b/d;

    iget v0, v0, Lcom/google/zxing/g/b/d;->c:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v2, v0

    goto :goto_37

    :cond_4c
    const v0, 0x3d4ccccd

    mul-float/2addr v0, v1

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2d

    const/4 v4, 0x1

    goto :goto_2d

    :cond_56
    move v0, v1

    move v1, v3

    goto :goto_27
.end method

.method public final a([III)Z
    .registers 15

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int v3, v0, v1

    invoke-static {p1, p3}, Lcom/google/zxing/g/b/e;->a([II)F

    move-result v2

    float-to-int v1, v2

    const/4 v0, 0x2

    aget v4, p1, v0

    iget-object v5, p0, Lcom/google/zxing/g/b/e;->a:Lcom/google/zxing/b/b;

    iget v6, v5, Lcom/google/zxing/b/b;->b:I

    invoke-direct {p0}, Lcom/google/zxing/g/b/e;->b()[I

    move-result-object v7

    move v0, p2

    :goto_25
    if-ltz v0, :cond_37

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_37
    if-gez v0, :cond_62

    const/high16 v0, 0x7fc0

    move v1, v0

    :goto_3c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2ac

    float-to-int v2, v2

    float-to-int v4, v1

    const/4 v0, 0x2

    aget v5, p1, v0

    iget-object v6, p0, Lcom/google/zxing/g/b/e;->a:Lcom/google/zxing/b/b;

    iget v7, v6, Lcom/google/zxing/b/b;->a:I

    invoke-direct {p0}, Lcom/google/zxing/g/b/e;->b()[I

    move-result-object v8

    move v0, v2

    :goto_50
    if-ltz v0, :cond_138

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_138

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_50

    :cond_62
    :goto_62
    if-ltz v0, :cond_79

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_79

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_79

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_62

    :cond_79
    if-ltz v0, :cond_80

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_84

    :cond_80
    const/high16 v0, 0x7fc0

    move v1, v0

    goto :goto_3c

    :cond_84
    :goto_84
    if-ltz v0, :cond_9b

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_9b

    const/4 v8, 0x0

    aget v8, v7, v8

    if-gt v8, v4, :cond_9b

    const/4 v8, 0x0

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_84

    :cond_9b
    const/4 v0, 0x0

    aget v0, v7, v0

    if-le v0, v4, :cond_a4

    const/high16 v0, 0x7fc0

    move v1, v0

    goto :goto_3c

    :cond_a4
    add-int/lit8 v0, p2, 0x1

    :goto_a6
    if-ge v0, v6, :cond_b8

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_b8

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_b8
    if-ne v0, v6, :cond_bf

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_bf
    :goto_bf
    if-ge v0, v6, :cond_d6

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_d6

    const/4 v8, 0x3

    aget v8, v7, v8

    if-ge v8, v4, :cond_d6

    const/4 v8, 0x3

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :cond_d6
    if-eq v0, v6, :cond_dd

    const/4 v8, 0x3

    aget v8, v7, v8

    if-lt v8, v4, :cond_e2

    :cond_dd
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_e2
    :goto_e2
    if-ge v0, v6, :cond_f9

    invoke-virtual {v5, v1, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_f9

    const/4 v8, 0x4

    aget v8, v7, v8

    if-ge v8, v4, :cond_f9

    const/4 v8, 0x4

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    :cond_f9
    const/4 v1, 0x4

    aget v1, v7, v1

    if-lt v1, v4, :cond_103

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_103
    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v1, v4

    const/4 v4, 0x2

    aget v4, v7, v4

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, v7, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, v7, v4

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    mul-int/lit8 v4, v3, 0x2

    if-lt v1, v4, :cond_126

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_126
    invoke-static {v7}, Lcom/google/zxing/g/b/e;->a([I)Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-static {v7, v0}, Lcom/google/zxing/g/b/e;->a([II)F

    move-result v0

    move v1, v0

    goto/16 :goto_3c

    :cond_133
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_3c

    :cond_138
    if-gez v0, :cond_1cb

    const/high16 v0, 0x7fc0

    move v2, v0

    :goto_13d
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2ac

    int-to-float v0, v3

    const/high16 v3, 0x40e0

    div-float v6, v0, v3

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_14b
    iget-object v0, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2af

    iget-object v0, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g/b/d;

    iget v5, v0, Lcom/google/zxing/o;->b:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2a4

    iget v5, v0, Lcom/google/zxing/o;->a:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2a4

    iget v5, v0, Lcom/google/zxing/g/b/d;->c:F

    sub-float v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x3f80

    cmpg-float v7, v5, v7

    if-lez v7, :cond_187

    iget v7, v0, Lcom/google/zxing/g/b/d;->c:F

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_2a1

    :cond_187
    const/4 v5, 0x1

    :goto_188
    if-eqz v5, :cond_2a7

    iget-object v4, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    iget v5, v0, Lcom/google/zxing/g/b/d;->d:I

    add-int/lit8 v5, v5, 0x1

    iget v7, v0, Lcom/google/zxing/g/b/d;->d:I

    int-to-float v7, v7

    iget v8, v0, Lcom/google/zxing/o;->a:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    int-to-float v8, v5

    div-float/2addr v7, v8

    iget v8, v0, Lcom/google/zxing/g/b/d;->d:I

    int-to-float v8, v8

    iget v9, v0, Lcom/google/zxing/o;->b:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v0, Lcom/google/zxing/g/b/d;->d:I

    int-to-float v9, v9

    iget v0, v0, Lcom/google/zxing/g/b/d;->c:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v6

    int-to-float v9, v5

    div-float/2addr v0, v9

    new-instance v9, Lcom/google/zxing/g/b/d;

    invoke-direct {v9, v7, v8, v0, v5}, Lcom/google/zxing/g/b/d;-><init>(FFFI)V

    invoke-interface {v4, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1b4
    if-nez v0, :cond_1c9

    new-instance v0, Lcom/google/zxing/g/b/d;

    invoke-direct {v0, v2, v1, v6}, Lcom/google/zxing/g/b/d;-><init>(FFF)V

    iget-object v1, p0, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/zxing/g/b/e;->e:Lcom/google/zxing/p;

    if-eqz v1, :cond_1c9

    iget-object v1, p0, Lcom/google/zxing/g/b/e;->e:Lcom/google/zxing/p;

    invoke-interface {v1, v0}, Lcom/google/zxing/p;->a(Lcom/google/zxing/o;)V

    :cond_1c9
    const/4 v0, 0x1

    :goto_1ca
    return v0

    :cond_1cb
    :goto_1cb
    if-ltz v0, :cond_1e2

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v9

    if-nez v9, :cond_1e2

    const/4 v9, 0x1

    aget v9, v8, v9

    if-gt v9, v5, :cond_1e2

    const/4 v9, 0x1

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_1cb

    :cond_1e2
    if-ltz v0, :cond_1e9

    const/4 v9, 0x1

    aget v9, v8, v9

    if-le v9, v5, :cond_1ee

    :cond_1e9
    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_1ee
    :goto_1ee
    if-ltz v0, :cond_205

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_205

    const/4 v9, 0x0

    aget v9, v8, v9

    if-gt v9, v5, :cond_205

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v0, v0, -0x1

    goto :goto_1ee

    :cond_205
    const/4 v0, 0x0

    aget v0, v8, v0

    if-le v0, v5, :cond_20f

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_20f
    add-int/lit8 v0, v2, 0x1

    :goto_211
    if-ge v0, v7, :cond_223

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_223

    const/4 v2, 0x2

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_211

    :cond_223
    if-ne v0, v7, :cond_22a

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_22a
    :goto_22a
    if-ge v0, v7, :cond_241

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v2

    if-nez v2, :cond_241

    const/4 v2, 0x3

    aget v2, v8, v2

    if-ge v2, v5, :cond_241

    const/4 v2, 0x3

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_22a

    :cond_241
    if-eq v0, v7, :cond_248

    const/4 v2, 0x3

    aget v2, v8, v2

    if-lt v2, v5, :cond_24d

    :cond_248
    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_24d
    :goto_24d
    if-ge v0, v7, :cond_264

    invoke-virtual {v6, v0, v4}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_264

    const/4 v2, 0x4

    aget v2, v8, v2

    if-ge v2, v5, :cond_264

    const/4 v2, 0x4

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_24d

    :cond_264
    const/4 v2, 0x4

    aget v2, v8, v2

    if-lt v2, v5, :cond_26e

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_26e
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v4, 0x1

    aget v4, v8, v4

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aget v4, v8, v4

    add-int/2addr v2, v4

    const/4 v4, 0x3

    aget v4, v8, v4

    add-int/2addr v2, v4

    const/4 v4, 0x4

    aget v4, v8, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    if-lt v2, v3, :cond_28f

    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_28f
    invoke-static {v8}, Lcom/google/zxing/g/b/e;->a([I)Z

    move-result v2

    if-eqz v2, :cond_29c

    invoke-static {v8, v0}, Lcom/google/zxing/g/b/e;->a([II)F

    move-result v0

    move v2, v0

    goto/16 :goto_13d

    :cond_29c
    const/high16 v0, 0x7fc0

    move v2, v0

    goto/16 :goto_13d

    :cond_2a1
    const/4 v5, 0x0

    goto/16 :goto_188

    :cond_2a4
    const/4 v5, 0x0

    goto/16 :goto_188

    :cond_2a7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_14b

    :cond_2ac
    const/4 v0, 0x0

    goto/16 :goto_1ca

    :cond_2af
    move v0, v4

    goto/16 :goto_1b4
.end method
