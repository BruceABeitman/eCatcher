.class final Lcom/google/zxing/g/b/b;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field final a:Lcom/google/zxing/b/b;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/g/b/a;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lcom/google/zxing/p;


# direct methods
.method constructor <init>(Lcom/google/zxing/b/b;IIIIFLcom/google/zxing/p;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/g/b/b;->a:Lcom/google/zxing/b/b;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/g/b/b;->b:Ljava/util/List;

    iput p2, p0, Lcom/google/zxing/g/b/b;->c:I

    iput p3, p0, Lcom/google/zxing/g/b/b;->d:I

    iput p4, p0, Lcom/google/zxing/g/b/b;->e:I

    iput p5, p0, Lcom/google/zxing/g/b/b;->f:I

    iput p6, p0, Lcom/google/zxing/g/b/b;->g:F

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/g/b/b;->h:[I

    iput-object p7, p0, Lcom/google/zxing/g/b/b;->i:Lcom/google/zxing/p;

    return-void
.end method

.method private static a([II)F
    .registers 5

    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method final a([III)Lcom/google/zxing/g/b/a;
    .registers 14

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v1, v0

    invoke-static {p1, p3}, Lcom/google/zxing/g/b/b;->a([II)F

    move-result v3

    float-to-int v2, v3

    const/4 v0, 0x1

    aget v0, p1, v0

    mul-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/google/zxing/g/b/b;->a:Lcom/google/zxing/b/b;

    iget v6, v5, Lcom/google/zxing/b/b;->b:I

    iget-object v7, p0, Lcom/google/zxing/g/b/b;->h:[I

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x2

    const/4 v8, 0x0

    aput v8, v7, v0

    move v0, p2

    :goto_28
    if-ltz v0, :cond_3f

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_3f

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_3f

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_3f
    if-ltz v0, :cond_46

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_b9

    :cond_46
    const/high16 v0, 0x7fc0

    move v1, v0

    :goto_49
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_166

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x4040

    div-float v4, v0, v2

    iget-object v0, p0, Lcom/google/zxing/g/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_153

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g/b/a;

    iget v2, v0, Lcom/google/zxing/o;->b:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_150

    iget v2, v0, Lcom/google/zxing/o;->a:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_150

    iget v2, v0, Lcom/google/zxing/g/b/a;->c:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-lez v6, :cond_9d

    iget v6, v0, Lcom/google/zxing/g/b/a;->c:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_14d

    :cond_9d
    const/4 v2, 0x1

    :goto_9e
    if-eqz v2, :cond_65

    iget v2, v0, Lcom/google/zxing/o;->a:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, v0, Lcom/google/zxing/o;->b:F

    add-float/2addr v1, v3

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    iget v0, v0, Lcom/google/zxing/g/b/a;->c:F

    add-float/2addr v0, v4

    const/high16 v3, 0x4000

    div-float v3, v0, v3

    new-instance v0, Lcom/google/zxing/g/b/a;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/zxing/g/b/a;-><init>(FFF)V

    :goto_b8
    return-object v0

    :cond_b9
    :goto_b9
    if-ltz v0, :cond_d0

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_d0

    const/4 v8, 0x0

    aget v8, v7, v8

    if-gt v8, v4, :cond_d0

    const/4 v8, 0x0

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_b9

    :cond_d0
    const/4 v0, 0x0

    aget v0, v7, v0

    if-le v0, v4, :cond_da

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    :cond_da
    add-int/lit8 v0, p2, 0x1

    :goto_dc
    if-ge v0, v6, :cond_f3

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_f3

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_f3

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    :cond_f3
    if-eq v0, v6, :cond_fa

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_ff

    :cond_fa
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    :cond_ff
    :goto_ff
    if-ge v0, v6, :cond_116

    invoke-virtual {v5, v2, v0}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_116

    const/4 v8, 0x2

    aget v8, v7, v8

    if-gt v8, v4, :cond_116

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    :cond_116
    const/4 v2, 0x2

    aget v2, v7, v2

    if-le v2, v4, :cond_120

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    :cond_120
    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aget v4, v7, v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v2, v1, :cond_13b

    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    :cond_13b
    invoke-virtual {p0, v7}, Lcom/google/zxing/g/b/b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_148

    invoke-static {v7, v0}, Lcom/google/zxing/g/b/b;->a([II)F

    move-result v0

    move v1, v0

    goto/16 :goto_49

    :cond_148
    const/high16 v0, 0x7fc0

    move v1, v0

    goto/16 :goto_49

    :cond_14d
    const/4 v2, 0x0

    goto/16 :goto_9e

    :cond_150
    const/4 v2, 0x0

    goto/16 :goto_9e

    :cond_153
    new-instance v0, Lcom/google/zxing/g/b/a;

    invoke-direct {v0, v3, v1, v4}, Lcom/google/zxing/g/b/a;-><init>(FFF)V

    iget-object v1, p0, Lcom/google/zxing/g/b/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/zxing/g/b/b;->i:Lcom/google/zxing/p;

    if-eqz v1, :cond_166

    iget-object v1, p0, Lcom/google/zxing/g/b/b;->i:Lcom/google/zxing/p;

    invoke-interface {v1, v0}, Lcom/google/zxing/p;->a(Lcom/google/zxing/o;)V

    :cond_166
    const/4 v0, 0x0

    goto/16 :goto_b8
.end method

.method final a([I)Z
    .registers 7

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/zxing/g/b/b;->g:F

    const/high16 v1, 0x4000

    div-float v3, v2, v1

    move v1, v0

    :goto_8
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1c

    aget v4, p1, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_19

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x1

    goto :goto_18
.end method
