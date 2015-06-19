.class public final Lcom/google/zxing/b/f;
.super Lcom/google/zxing/b/i;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/b/b;
    .registers 21

    invoke-static/range {p4 .. p19}, Lcom/google/zxing/b/k;->a(FFFFFFFFFFFFFFFF)Lcom/google/zxing/b/k;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/b/f;->a(Lcom/google/zxing/b/b;IILcom/google/zxing/b/k;)Lcom/google/zxing/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/zxing/b/b;IILcom/google/zxing/b/k;)Lcom/google/zxing/b/b;
    .registers 28

    if-lez p2, :cond_4

    if-gtz p3, :cond_9

    :cond_4
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v2

    throw v2

    :cond_9
    new-instance v5, Lcom/google/zxing/b/b;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/b/b;-><init>(II)V

    shl-int/lit8 v2, p2, 0x1

    new-array v6, v2, [F

    const/4 v2, 0x0

    move v4, v2

    :goto_18
    move/from16 v0, p3

    if-ge v4, v0, :cond_14d

    array-length v7, v6

    int-to-float v2, v4

    const/high16 v3, 0x3f00

    add-float/2addr v3, v2

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v7, :cond_33

    shr-int/lit8 v8, v2, 0x1

    int-to-float v8, v8

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    aput v8, v6, v2

    add-int/lit8 v8, v2, 0x1

    aput v3, v6, v8

    add-int/lit8 v2, v2, 0x2

    goto :goto_22

    :cond_33
    array-length v3, v6

    move-object/from16 v0, p4

    iget v8, v0, Lcom/google/zxing/b/k;->a:F

    move-object/from16 v0, p4

    iget v9, v0, Lcom/google/zxing/b/k;->b:F

    move-object/from16 v0, p4

    iget v10, v0, Lcom/google/zxing/b/k;->c:F

    move-object/from16 v0, p4

    iget v11, v0, Lcom/google/zxing/b/k;->d:F

    move-object/from16 v0, p4

    iget v12, v0, Lcom/google/zxing/b/k;->e:F

    move-object/from16 v0, p4

    iget v13, v0, Lcom/google/zxing/b/k;->f:F

    move-object/from16 v0, p4

    iget v14, v0, Lcom/google/zxing/b/k;->g:F

    move-object/from16 v0, p4

    iget v15, v0, Lcom/google/zxing/b/k;->h:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/google/zxing/b/k;->i:F

    move/from16 v16, v0

    const/4 v2, 0x0

    :goto_5b
    if-ge v2, v3, :cond_88

    aget v17, v6, v2

    add-int/lit8 v18, v2, 0x1

    aget v18, v6, v18

    mul-float v19, v10, v17

    mul-float v20, v13, v18

    add-float v19, v19, v20

    add-float v19, v19, v16

    mul-float v20, v8, v17

    mul-float v21, v11, v18

    add-float v20, v20, v21

    add-float v20, v20, v14

    div-float v20, v20, v19

    aput v20, v6, v2

    add-int/lit8 v20, v2, 0x1

    mul-float v17, v17, v9

    mul-float v18, v18, v12

    add-float v17, v17, v18

    add-float v17, v17, v15

    div-float v17, v17, v19

    aput v17, v6, v20

    add-int/lit8 v2, v2, 0x2

    goto :goto_5b

    :cond_88
    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/zxing/b/b;->a:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/zxing/b/b;->b:I

    const/4 v3, 0x1

    const/4 v2, 0x0

    move/from16 v22, v2

    move v2, v3

    move/from16 v3, v22

    :goto_97
    array-length v10, v6

    if-ge v3, v10, :cond_db

    if-eqz v2, :cond_db

    aget v2, v6, v3

    float-to-int v10, v2

    add-int/lit8 v2, v3, 0x1

    aget v2, v6, v2

    float-to-int v11, v2

    const/4 v2, -0x1

    if-lt v10, v2, :cond_ae

    if-gt v10, v8, :cond_ae

    const/4 v2, -0x1

    if-lt v11, v2, :cond_ae

    if-le v11, v9, :cond_b3

    :cond_ae
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v2

    throw v2

    :cond_b3
    const/4 v2, 0x0

    const/4 v12, -0x1

    if-ne v10, v12, :cond_c7

    const/4 v2, 0x0

    aput v2, v6, v3

    const/4 v2, 0x1

    :cond_bb
    :goto_bb
    const/4 v10, -0x1

    if-ne v11, v10, :cond_d0

    add-int/lit8 v2, v3, 0x1

    const/4 v10, 0x0

    aput v10, v6, v2

    const/4 v2, 0x1

    :cond_c4
    :goto_c4
    add-int/lit8 v3, v3, 0x2

    goto :goto_97

    :cond_c7
    if-ne v10, v8, :cond_bb

    add-int/lit8 v2, v8, -0x1

    int-to-float v2, v2

    aput v2, v6, v3

    const/4 v2, 0x1

    goto :goto_bb

    :cond_d0
    if-ne v11, v9, :cond_c4

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v10, v9, -0x1

    int-to-float v10, v10

    aput v10, v6, v2

    const/4 v2, 0x1

    goto :goto_c4

    :cond_db
    const/4 v3, 0x1

    array-length v2, v6

    add-int/lit8 v2, v2, -0x2

    move/from16 v22, v2

    move v2, v3

    move/from16 v3, v22

    :goto_e4
    if-ltz v3, :cond_127

    if-eqz v2, :cond_127

    aget v2, v6, v3

    float-to-int v10, v2

    add-int/lit8 v2, v3, 0x1

    aget v2, v6, v2

    float-to-int v11, v2

    const/4 v2, -0x1

    if-lt v10, v2, :cond_fa

    if-gt v10, v8, :cond_fa

    const/4 v2, -0x1

    if-lt v11, v2, :cond_fa

    if-le v11, v9, :cond_ff

    :cond_fa
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v2

    throw v2

    :cond_ff
    const/4 v2, 0x0

    const/4 v12, -0x1

    if-ne v10, v12, :cond_113

    const/4 v2, 0x0

    aput v2, v6, v3

    const/4 v2, 0x1

    :cond_107
    :goto_107
    const/4 v10, -0x1

    if-ne v11, v10, :cond_11c

    add-int/lit8 v2, v3, 0x1

    const/4 v10, 0x0

    aput v10, v6, v2

    const/4 v2, 0x1

    :cond_110
    :goto_110
    add-int/lit8 v3, v3, -0x2

    goto :goto_e4

    :cond_113
    if-ne v10, v8, :cond_107

    add-int/lit8 v2, v8, -0x1

    int-to-float v2, v2

    aput v2, v6, v3

    const/4 v2, 0x1

    goto :goto_107

    :cond_11c
    if-ne v11, v9, :cond_110

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v10, v9, -0x1

    int-to-float v10, v10

    aput v10, v6, v2

    const/4 v2, 0x1

    goto :goto_110

    :cond_127
    const/4 v2, 0x0

    :goto_128
    if-ge v2, v7, :cond_148

    :try_start_12a
    aget v3, v6, v2

    float-to-int v3, v3

    add-int/lit8 v8, v2, 0x1

    aget v8, v6, v8

    float-to-int v8, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_13f

    shr-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v3, v4}, Lcom/google/zxing/b/b;->b(II)V
    :try_end_13f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12a .. :try_end_13f} :catch_142

    :cond_13f
    add-int/lit8 v2, v2, 0x2

    goto :goto_128

    :catch_142
    move-exception v2

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v2

    throw v2

    :cond_148
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_18

    :cond_14d
    return-object v5
.end method
