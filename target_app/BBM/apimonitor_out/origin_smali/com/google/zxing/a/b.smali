.class public final Lcom/google/zxing/a/b;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/c;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/e;",
            "*>;)",
            "Lcom/google/zxing/m;"
        }
    .end annotation

    new-instance v21, Lcom/google/zxing/a/b/a;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Lcom/google/zxing/a/b/a;-><init>(Lcom/google/zxing/b/b;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/a/b/a;->a()Lcom/google/zxing/a/b/b;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput v3, v0, Lcom/google/zxing/a/b/a;->e:I

    move-object v4, v2

    move-object v6, v2

    move-object v8, v2

    :goto_18
    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    const/16 v5, 0x9

    if-ge v3, v5, :cond_df

    const/4 v3, 0x1

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v1, v3, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v9

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v1, v3, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v7

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v5

    const/4 v3, -0x1

    const/4 v10, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v1, v3, v10}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;ZII)Lcom/google/zxing/a/b/b;

    move-result-object v3

    move-object/from16 v0, v21

    iget v10, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_c8

    invoke-static {v3, v9}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F

    move-result v10

    move-object/from16 v0, v21

    iget v11, v0, Lcom/google/zxing/a/b/a;->e:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v2, v8}, Lcom/google/zxing/a/b/a;->b(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)F

    move-result v11

    move-object/from16 v0, v21

    iget v12, v0, Lcom/google/zxing/a/b/a;->e:I

    add-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    mul-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-double v11, v10

    const-wide/high16 v13, 0x3fe8

    cmpg-double v11, v11, v13

    if-ltz v11, :cond_df

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff4

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_df

    new-instance v10, Lcom/google/zxing/a/b/b;

    iget v11, v9, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v11, v11, -0x3

    iget v12, v9, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v12, v12, 0x3

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v11, Lcom/google/zxing/a/b/b;

    iget v12, v7, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v12, v12, -0x3

    iget v13, v7, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v13, v13, -0x3

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v12, Lcom/google/zxing/a/b/b;

    iget v13, v5, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v13, v13, 0x3

    iget v14, v5, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v14, v14, -0x3

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v13, Lcom/google/zxing/a/b/b;

    iget v14, v3, Lcom/google/zxing/a/b/b;->a:I

    add-int/lit8 v14, v14, 0x3

    iget v15, v3, Lcom/google/zxing/a/b/b;->b:I

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v10}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v14

    if-eqz v14, :cond_db

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v10

    if-ne v10, v14, :cond_db

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v12}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v10

    if-ne v10, v14, :cond_db

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;)I

    move-result v10

    if-ne v10, v14, :cond_db

    const/4 v10, 0x1

    :goto_c6
    if-eqz v10, :cond_df

    :cond_c8
    if-nez v1, :cond_dd

    const/4 v1, 0x1

    :goto_cb
    move-object/from16 v0, v21

    iget v2, v0, Lcom/google/zxing/a/b/a;->e:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Lcom/google/zxing/a/b/a;->e:I

    move-object v2, v3

    move-object v4, v5

    move-object v6, v7

    move-object v8, v9

    goto/16 :goto_18

    :cond_db
    const/4 v10, 0x0

    goto :goto_c6

    :cond_dd
    const/4 v1, 0x0

    goto :goto_cb

    :cond_df
    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_f2

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_f2

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v1

    throw v1

    :cond_f2
    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_193

    const/4 v1, 0x1

    :goto_fa
    move-object/from16 v0, v21

    iput-boolean v1, v0, Lcom/google/zxing/a/b/a;->b:Z

    const/high16 v1, 0x3fc0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, v8, Lcom/google/zxing/a/b/b;->a:I

    iget v5, v4, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v3, v5

    iget v5, v8, Lcom/google/zxing/a/b/b;->b:I

    iget v7, v4, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v5, v7

    iget v7, v4, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v7, v7

    int-to-float v9, v3

    mul-float/2addr v9, v1

    sub-float/2addr v7, v9

    const/high16 v9, 0x3f00

    add-float/2addr v7, v9

    float-to-int v7, v7

    iget v4, v4, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v4, v4

    int-to-float v9, v5

    mul-float/2addr v9, v1

    sub-float/2addr v4, v9

    const/high16 v9, 0x3f00

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v9, v8, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v9, v9

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v9

    const/high16 v9, 0x3f00

    add-float/2addr v3, v9

    float-to-int v3, v3

    iget v8, v8, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v8, v8

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v8

    const/high16 v8, 0x3f00

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v8, v6, Lcom/google/zxing/a/b/b;->a:I

    iget v9, v2, Lcom/google/zxing/a/b/b;->a:I

    sub-int/2addr v8, v9

    iget v9, v6, Lcom/google/zxing/a/b/b;->b:I

    iget v10, v2, Lcom/google/zxing/a/b/b;->b:I

    sub-int/2addr v9, v10

    iget v10, v2, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v10, v10

    int-to-float v11, v8

    mul-float/2addr v11, v1

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget v2, v2, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v2, v2

    int-to-float v11, v9

    mul-float/2addr v11, v1

    sub-float/2addr v2, v11

    const/high16 v11, 0x3f00

    add-float/2addr v2, v11

    float-to-int v2, v2

    iget v11, v6, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v11, v11

    int-to-float v8, v8

    mul-float/2addr v8, v1

    add-float/2addr v8, v11

    const/high16 v11, 0x3f00

    add-float/2addr v8, v11

    float-to-int v8, v8

    iget v6, v6, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v6, v6

    int-to-float v9, v9

    mul-float/2addr v1, v9

    add-float/2addr v1, v6

    const/high16 v6, 0x3f00

    add-float/2addr v1, v6

    float-to-int v1, v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_18e

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_18e

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v4}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_18e

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v2}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v6

    if-nez v6, :cond_196

    :cond_18e
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v1

    throw v1

    :cond_193
    const/4 v1, 0x0

    goto/16 :goto_fa

    :cond_196
    new-instance v6, Lcom/google/zxing/a/b/b;

    const/4 v9, 0x0

    invoke-direct {v6, v3, v5, v9}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v3, Lcom/google/zxing/a/b/b;

    const/4 v5, 0x0

    invoke-direct {v3, v8, v1, v5}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v1, Lcom/google/zxing/a/b/b;

    const/4 v5, 0x0

    invoke-direct {v1, v7, v4, v5}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    new-instance v4, Lcom/google/zxing/a/b/b;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v2, v5}, Lcom/google/zxing/a/b/b;-><init>(IIB)V

    const/4 v2, 0x4

    new-array v7, v2, [Lcom/google/zxing/a/b/b;

    const/4 v2, 0x0

    aput-object v6, v7, v2

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v2, 0x2

    aput-object v1, v7, v2

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v2

    const/4 v1, 0x1

    aget-object v1, v7, v1

    const/4 v3, 0x2

    aget-object v3, v7, v3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v3

    const/4 v1, 0x2

    aget-object v1, v7, v1

    const/4 v4, 0x3

    aget-object v4, v7, v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v4

    const/4 v1, 0x3

    aget-object v1, v7, v1

    const/4 v5, 0x0

    aget-object v5, v7, v5

    move-object/from16 v0, v21

    iget v6, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1, v5, v6}, Lcom/google/zxing/a/b/a;->a(Lcom/google/zxing/a/b/b;Lcom/google/zxing/a/b/b;I)[Z

    move-result-object v5

    const/4 v1, 0x0

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_250

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_250

    const/4 v1, 0x0

    move-object/from16 v0, v21

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    :goto_221
    move-object/from16 v0, v21

    iget-boolean v1, v0, Lcom/google/zxing/a/b/a;->b:Z

    if-eqz v1, :cond_2ad

    const/16 v1, 0x1c

    new-array v6, v1, [Z

    const/4 v1, 0x0

    :goto_22c
    const/4 v8, 0x7

    if-ge v1, v8, :cond_294

    add-int/lit8 v8, v1, 0x2

    aget-boolean v8, v2, v8

    aput-boolean v8, v6, v1

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v8, v1, 0xe

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v8, v1, 0x15

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_22c

    :cond_250
    const/4 v1, 0x0

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_265

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_265

    const/4 v1, 0x1

    move-object/from16 v0, v21

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    goto :goto_221

    :cond_265
    const/4 v1, 0x0

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_27a

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_27a

    const/4 v1, 0x2

    move-object/from16 v0, v21

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    goto :goto_221

    :cond_27a
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-eqz v1, :cond_28f

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->e:I

    mul-int/lit8 v1, v1, 0x2

    aget-boolean v1, v5, v1

    if-eqz v1, :cond_28f

    const/4 v1, 0x3

    move-object/from16 v0, v21

    iput v1, v0, Lcom/google/zxing/a/b/a;->f:I

    goto :goto_221

    :cond_28f
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v1

    throw v1

    :cond_294
    const/16 v1, 0x1c

    new-array v1, v1, [Z

    const/4 v2, 0x0

    :goto_299
    const/16 v3, 0x1c

    if-ge v2, v3, :cond_31c

    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/zxing/a/b/a;->f:I

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x1c

    aget-boolean v3, v6, v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_299

    :cond_2ad
    const/16 v1, 0x28

    new-array v6, v1, [Z

    const/4 v1, 0x0

    :goto_2b2
    const/16 v8, 0xb

    if-ge v1, v8, :cond_303

    const/4 v8, 0x5

    if-ge v1, v8, :cond_2d7

    add-int/lit8 v8, v1, 0x2

    aget-boolean v8, v2, v8

    aput-boolean v8, v6, v1

    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v8, v1, 0x1e

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v8

    :cond_2d7
    const/4 v8, 0x5

    if-le v1, v8, :cond_300

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v2, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v3, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v8, v1, 0x14

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v4, v9

    aput-boolean v9, v6, v8

    add-int/lit8 v8, v1, 0x1e

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v1, 0x2

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v8

    :cond_300
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b2

    :cond_303
    const/16 v1, 0x28

    new-array v1, v1, [Z

    const/4 v2, 0x0

    :goto_308
    const/16 v3, 0x28

    if-ge v2, v3, :cond_31c

    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/zxing/a/b/a;->f:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x28

    aget-boolean v3, v6, v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_308

    :cond_31c
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/google/zxing/a/b/a;->b:Z

    if-eqz v2, :cond_343

    const/4 v3, 0x7

    const/4 v2, 0x2

    :goto_324
    sub-int v8, v3, v2

    new-array v9, v3, [I

    const/4 v4, 0x0

    :goto_329
    if-ge v4, v3, :cond_34a

    const/4 v6, 0x1

    const/4 v5, 0x1

    :goto_32d
    const/4 v10, 0x4

    if-gt v5, v10, :cond_347

    mul-int/lit8 v10, v4, 0x4

    add-int/lit8 v10, v10, 0x4

    sub-int/2addr v10, v5

    aget-boolean v10, v1, v10

    if-eqz v10, :cond_33e

    aget v10, v9, v4

    add-int/2addr v10, v6

    aput v10, v9, v4

    :cond_33e
    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_32d

    :cond_343
    const/16 v3, 0xa

    const/4 v2, 0x4

    goto :goto_324

    :cond_347
    add-int/lit8 v4, v4, 0x1

    goto :goto_329

    :cond_34a
    :try_start_34a
    new-instance v3, Lcom/google/zxing/b/b/c;

    sget-object v4, Lcom/google/zxing/b/b/a;->d:Lcom/google/zxing/b/b/a;

    invoke-direct {v3, v4}, Lcom/google/zxing/b/b/c;-><init>(Lcom/google/zxing/b/b/a;)V

    invoke-virtual {v3, v9, v8}, Lcom/google/zxing/b/b/c;->a([II)V
    :try_end_354
    .catch Lcom/google/zxing/b/b/e; {:try_start_34a .. :try_end_354} :catch_373

    const/4 v3, 0x0

    move v6, v3

    :goto_356
    if-ge v6, v2, :cond_37f

    const/4 v4, 0x1

    const/4 v3, 0x1

    move v5, v4

    move v4, v3

    :goto_35c
    const/4 v3, 0x4

    if-gt v4, v3, :cond_37b

    mul-int/lit8 v3, v6, 0x4

    add-int/lit8 v3, v3, 0x4

    sub-int v8, v3, v4

    aget v3, v9, v6

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_379

    const/4 v3, 0x1

    :goto_36b
    aput-boolean v3, v1, v8

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_35c

    :catch_373
    move-exception v1

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v1

    throw v1

    :cond_379
    const/4 v3, 0x0

    goto :goto_36b

    :cond_37b
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_356

    :cond_37f
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/google/zxing/a/b/a;->b:Z

    if-eqz v2, :cond_3a5

    const/4 v2, 0x2

    const/4 v3, 0x6

    :goto_387
    const/4 v4, 0x0

    :goto_388
    if-ge v4, v2, :cond_3a9

    move-object/from16 v0, v21

    iget v5, v0, Lcom/google/zxing/a/b/a;->c:I

    shl-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/google/zxing/a/b/a;->c:I

    aget-boolean v5, v1, v4

    if-eqz v5, :cond_3a2

    move-object/from16 v0, v21

    iget v5, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/google/zxing/a/b/a;->c:I

    :cond_3a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_388

    :cond_3a5
    const/4 v2, 0x5

    const/16 v3, 0xb

    goto :goto_387

    :cond_3a9
    move v4, v2

    :goto_3aa
    add-int v5, v2, v3

    if-ge v4, v5, :cond_3c9

    move-object/from16 v0, v21

    iget v5, v0, Lcom/google/zxing/a/b/a;->d:I

    shl-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/google/zxing/a/b/a;->d:I

    aget-boolean v5, v1, v4

    if-eqz v5, :cond_3c6

    move-object/from16 v0, v21

    iget v5, v0, Lcom/google/zxing/a/b/a;->d:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/google/zxing/a/b/a;->d:I

    :cond_3c6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3aa

    :cond_3c9
    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v21

    iput v1, v0, Lcom/google/zxing/a/b/a;->c:I

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->d:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v21

    iput v1, v0, Lcom/google/zxing/a/b/a;->d:I

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v2, v1, 0x2

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    const/4 v3, 0x4

    if-le v1, v3, :cond_4cd

    const/4 v1, 0x1

    :goto_3eb
    add-int/2addr v1, v2

    move-object/from16 v0, v21

    iget v2, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v2, v2, -0x4

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4000

    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/zxing/a/b/a;->e:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float v2, v1, v2

    const/4 v1, 0x0

    aget-object v1, v7, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->a:I

    const/4 v3, 0x2

    aget-object v3, v7, v3

    iget v3, v3, Lcom/google/zxing/a/b/b;->a:I

    sub-int v3, v1, v3

    if-lez v3, :cond_4d0

    const/4 v1, 0x1

    :goto_40f
    add-int/2addr v3, v1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->b:I

    const/4 v4, 0x2

    aget-object v4, v7, v4

    iget v4, v4, Lcom/google/zxing/a/b/b;->b:I

    sub-int v4, v1, v4

    if-lez v4, :cond_4d3

    const/4 v1, 0x1

    :goto_41f
    add-int/2addr v1, v4

    const/4 v4, 0x2

    aget-object v4, v7, v4

    iget v4, v4, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v4, v4

    int-to-float v5, v3

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x2

    aget-object v5, v7, v5

    iget v5, v5, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    aget-object v6, v7, v6

    iget v6, v6, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v6, v6

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    add-float/2addr v3, v6

    float-to-int v3, v3

    const/4 v6, 0x0

    aget-object v6, v7, v6

    iget v6, v6, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v6, v6

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    const/high16 v6, 0x3f00

    add-float/2addr v1, v6

    float-to-int v6, v1

    const/4 v1, 0x1

    aget-object v1, v7, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->a:I

    const/4 v8, 0x3

    aget-object v8, v7, v8

    iget v8, v8, Lcom/google/zxing/a/b/b;->a:I

    sub-int v8, v1, v8

    if-lez v8, :cond_4d6

    const/4 v1, 0x1

    :goto_463
    add-int/2addr v8, v1

    const/4 v1, 0x1

    aget-object v1, v7, v1

    iget v1, v1, Lcom/google/zxing/a/b/b;->b:I

    const/4 v9, 0x3

    aget-object v9, v7, v9

    iget v9, v9, Lcom/google/zxing/a/b/b;->b:I

    sub-int v9, v1, v9

    if-lez v9, :cond_4d8

    const/4 v1, 0x1

    :goto_473
    add-int/2addr v1, v9

    const/4 v9, 0x3

    aget-object v9, v7, v9

    iget v9, v9, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v9, v9

    int-to-float v10, v8

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x3

    aget-object v10, v7, v10

    iget v10, v10, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v10, v10

    int-to-float v11, v1

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    iget v11, v11, Lcom/google/zxing/a/b/b;->a:I

    int-to-float v11, v11

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    const/high16 v11, 0x3f00

    add-float/2addr v8, v11

    float-to-int v8, v8

    const/4 v11, 0x1

    aget-object v7, v7, v11

    iget v7, v7, Lcom/google/zxing/a/b/b;->b:I

    int-to-float v7, v7

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_4c8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v1}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_4c8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_4c8

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/a/b/a;->a(II)Z

    move-result v2

    if-nez v2, :cond_4da

    :cond_4c8
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v1

    throw v1

    :cond_4cd
    const/4 v1, 0x0

    goto/16 :goto_3eb

    :cond_4d0
    const/4 v1, -0x1

    goto/16 :goto_40f

    :cond_4d3
    const/4 v1, -0x1

    goto/16 :goto_41f

    :cond_4d6
    const/4 v1, -0x1

    goto :goto_463

    :cond_4d8
    const/4 v1, -0x1

    goto :goto_473

    :cond_4da
    const/4 v2, 0x4

    new-array v0, v2, [Lcom/google/zxing/o;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    new-instance v7, Lcom/google/zxing/o;

    int-to-float v3, v3

    int-to-float v6, v6

    invoke-direct {v7, v3, v6}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v7, v22, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/google/zxing/o;

    int-to-float v6, v8

    int-to-float v1, v1

    invoke-direct {v3, v6, v1}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v3, v22, v2

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/o;

    int-to-float v3, v4

    int-to-float v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v2, v22, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/o;

    int-to-float v3, v9

    int-to-float v4, v10

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v2, v22, v1

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/zxing/a/b/a;->a:Lcom/google/zxing/b/b;

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    rem-int/lit8 v1, v1, 0x4

    aget-object v4, v22, v1

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit8 v1, v1, 0x4

    aget-object v20, v22, v1

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    add-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x4

    aget-object v18, v22, v1

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->f:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    aget-object v16, v22, v1

    move-object/from16 v0, v21

    iget-boolean v1, v0, Lcom/google/zxing/a/b/a;->b:Z

    if-eqz v1, :cond_5b5

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0xb

    :goto_53f
    invoke-static {}, Lcom/google/zxing/b/i;->a()Lcom/google/zxing/b/i;

    move-result-object v1

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    int-to-float v7, v3

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f00

    int-to-float v9, v3

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    int-to-float v10, v3

    const/high16 v11, 0x3f00

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    int-to-float v12, v3

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    iget v13, v4, Lcom/google/zxing/o;->a:F

    iget v14, v4, Lcom/google/zxing/o;->b:F

    move-object/from16 v0, v16

    iget v15, v0, Lcom/google/zxing/o;->a:F

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/o;->b:F

    move/from16 v16, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/o;->a:F

    move/from16 v17, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/o;->b:F

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/zxing/o;->a:F

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/google/zxing/o;->b:F

    move/from16 v20, v0

    move v4, v3

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/b/i;->a(Lcom/google/zxing/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/b/b;

    move-result-object v2

    new-instance v1, Lcom/google/zxing/a/a;

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/google/zxing/a/b/a;->b:Z

    move-object/from16 v0, v21

    iget v5, v0, Lcom/google/zxing/a/b/a;->d:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/google/zxing/a/b/a;->c:I

    move-object/from16 v3, v22

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/a/a;-><init>(Lcom/google/zxing/b/b;[Lcom/google/zxing/o;ZII)V

    iget-object v10, v1, Lcom/google/zxing/b/g;->e:[Lcom/google/zxing/o;

    if-eqz p2, :cond_5dd

    sget-object v2, Lcom/google/zxing/e;->h:Lcom/google/zxing/e;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/p;

    if-eqz v2, :cond_5dd

    array-length v4, v10

    const/4 v3, 0x0

    :goto_5ab
    if-ge v3, v4, :cond_5dd

    aget-object v5, v10, v3

    invoke-interface {v2, v5}, Lcom/google/zxing/p;->a(Lcom/google/zxing/o;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5ab

    :cond_5b5
    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    const/4 v3, 0x4

    if-gt v1, v3, :cond_5c6

    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0xf

    goto/16 :goto_53f

    :cond_5c6
    move-object/from16 v0, v21

    iget v1, v0, Lcom/google/zxing/a/b/a;->c:I

    mul-int/lit8 v1, v1, 0x4

    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/zxing/a/b/a;->c:I

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, 0xf

    goto/16 :goto_53f

    :cond_5dd
    new-instance v9, Lcom/google/zxing/a/a/a;

    invoke-direct {v9}, Lcom/google/zxing/a/a/a;-><init>()V

    iput-object v1, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget-object v1, v1, Lcom/google/zxing/b/g;->d:Lcom/google/zxing/b/b;

    iget-object v2, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget-boolean v2, v2, Lcom/google/zxing/a/a;->a:Z

    if-nez v2, :cond_5f4

    iget-object v1, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget-object v1, v1, Lcom/google/zxing/b/g;->d:Lcom/google/zxing/b/b;

    invoke-static {v1}, Lcom/google/zxing/a/a/a;->a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/b;

    move-result-object v1

    :cond_5f4
    iget-object v2, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget-boolean v2, v2, Lcom/google/zxing/a/a;->a:Z

    if-eqz v2, :cond_65a

    iget-object v2, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v2, v2, Lcom/google/zxing/a/a;->c:I

    sget-object v3, Lcom/google/zxing/a/a/a;->a:[I

    array-length v3, v3

    if-le v2, v3, :cond_608

    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v1

    throw v1

    :cond_608
    sget-object v2, Lcom/google/zxing/a/a/a;->a:[I

    iget-object v3, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v3, v3, Lcom/google/zxing/a/a;->c:I

    aget v2, v2, v3

    new-array v2, v2, [Z

    sget-object v3, Lcom/google/zxing/a/a/a;->c:[I

    iget-object v4, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v4, v4, Lcom/google/zxing/a/a;->c:I

    aget v3, v3, v4

    iput v3, v9, Lcom/google/zxing/a/a/a;->e:I

    :goto_61c
    iget-object v3, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v6, v3, Lcom/google/zxing/a/a;->c:I

    iget v5, v1, Lcom/google/zxing/b/b;->b:I

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    :goto_628
    if-eqz v8, :cond_6d0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_62c
    mul-int/lit8 v11, v7, 0x2

    add-int/lit8 v11, v11, -0x4

    if-ge v3, v11, :cond_67d

    add-int v11, v6, v3

    add-int v12, v5, v4

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v5

    invoke-virtual {v1, v12, v13}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v12

    aput-boolean v12, v2, v11

    mul-int/lit8 v11, v7, 0x2

    add-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x4

    add-int/2addr v11, v3

    div-int/lit8 v12, v3, 0x2

    add-int/2addr v12, v5

    add-int v13, v5, v7

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v4

    invoke-virtual {v1, v12, v13}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v12

    aput-boolean v12, v2, v11

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_62c

    :cond_65a
    iget-object v2, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v2, v2, Lcom/google/zxing/a/a;->c:I

    sget-object v3, Lcom/google/zxing/a/a/a;->b:[I

    array-length v3, v3

    if-le v2, v3, :cond_668

    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v1

    throw v1

    :cond_668
    sget-object v2, Lcom/google/zxing/a/a/a;->b:[I

    iget-object v3, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v3, v3, Lcom/google/zxing/a/a;->c:I

    aget v2, v2, v3

    new-array v2, v2, [Z

    sget-object v3, Lcom/google/zxing/a/a/a;->d:[I

    iget-object v4, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v4, v4, Lcom/google/zxing/a/a;->c:I

    aget v3, v3, v4

    iput v3, v9, Lcom/google/zxing/a/a/a;->e:I

    goto :goto_61c

    :cond_67d
    const/4 v4, 0x0

    mul-int/lit8 v3, v7, 0x2

    add-int/lit8 v3, v3, 0x1

    :goto_682
    const/4 v11, 0x5

    if-le v3, v11, :cond_6bf

    mul-int/lit8 v11, v7, 0x4

    add-int/2addr v11, v6

    add-int/lit8 v11, v11, -0x8

    mul-int/lit8 v12, v7, 0x2

    sub-int/2addr v12, v3

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    add-int v12, v5, v7

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v4

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v5

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v1, v12, v13}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v12

    aput-boolean v12, v2, v11

    mul-int/lit8 v11, v7, 0x6

    add-int/2addr v11, v6

    add-int/lit8 v11, v11, -0xc

    mul-int/lit8 v12, v7, 0x2

    sub-int/2addr v12, v3

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    div-int/lit8 v12, v3, 0x2

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, -0x1

    add-int v13, v5, v4

    invoke-virtual {v1, v12, v13}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v12

    aput-boolean v12, v2, v11

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, -0x1

    goto :goto_682

    :cond_6bf
    add-int/lit8 v3, v5, 0x2

    mul-int/lit8 v4, v7, 0x8

    add-int/lit8 v4, v4, -0x10

    add-int/2addr v4, v6

    add-int/lit8 v6, v8, -0x1

    add-int/lit8 v5, v7, -0x4

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    goto/16 :goto_628

    :cond_6d0
    invoke-virtual {v9, v2}, Lcom/google/zxing/a/a/a;->a([Z)[Z

    move-result-object v11

    iget v1, v9, Lcom/google/zxing/a/a/a;->f:I

    iget-object v2, v9, Lcom/google/zxing/a/a/a;->g:Lcom/google/zxing/a/a;

    iget v2, v2, Lcom/google/zxing/a/a;->b:I

    mul-int/2addr v1, v2

    iget v2, v9, Lcom/google/zxing/a/a/a;->h:I

    sub-int v12, v1, v2

    array-length v1, v11

    if-le v12, v1, :cond_6e7

    invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;

    move-result-object v1

    throw v1

    :cond_6e7
    sget-object v7, Lcom/google/zxing/a/a/c;->a:Lcom/google/zxing/a/a/c;

    sget-object v6, Lcom/google/zxing/a/a/c;->a:Lcom/google/zxing/a/a/c;

    const/4 v5, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v8, v3

    move v9, v5

    move-object v3, v7

    move v7, v1

    move v1, v4

    :goto_6fc
    if-nez v1, :cond_7b6

    if-eqz v8, :cond_741

    const/4 v2, 0x1

    move v4, v2

    move-object v5, v3

    :goto_703
    if-eqz v7, :cond_753

    sub-int v2, v12, v9

    const/4 v3, 0x5

    if-lt v2, v3, :cond_7b6

    const/4 v2, 0x5

    invoke-static {v11, v9, v2}, Lcom/google/zxing/a/a/a;->a([ZII)I

    move-result v2

    add-int/lit8 v3, v9, 0x5

    if-nez v2, :cond_723

    sub-int v2, v12, v3

    const/16 v7, 0xb

    if-lt v2, v7, :cond_7b6

    const/16 v2, 0xb

    invoke-static {v11, v3, v2}, Lcom/google/zxing/a/a/a;->a([ZII)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    add-int/lit8 v3, v3, 0xb

    :cond_723
    const/4 v7, 0x0

    :goto_724
    if-ge v7, v2, :cond_72d

    sub-int v9, v12, v3

    const/16 v14, 0x8

    if-ge v9, v14, :cond_744

    const/4 v1, 0x1

    :cond_72d
    const/4 v7, 0x0

    move v2, v8

    move/from16 v23, v7

    move v7, v3

    move-object v3, v6

    move v6, v1

    move/from16 v1, v23

    :goto_736
    if-eqz v4, :cond_7e0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v8, v3

    move v9, v7

    move v7, v1

    move-object v3, v5

    move v1, v6

    move-object v6, v5

    goto :goto_6fc

    :cond_741
    move v4, v2

    move-object v5, v6

    goto :goto_703

    :cond_744
    const/16 v9, 0x8

    invoke-static {v11, v3, v9}, Lcom/google/zxing/a/a/a;->a([ZII)I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_724

    :cond_753
    sget-object v2, Lcom/google/zxing/a/a/c;->f:Lcom/google/zxing/a/a/c;

    if-ne v6, v2, :cond_76f

    sub-int v2, v12, v9

    const/16 v3, 0x8

    if-lt v2, v3, :cond_7b6

    const/16 v2, 0x8

    invoke-static {v11, v9, v2}, Lcom/google/zxing/a/a/a;->a([ZII)I

    move-result v3

    add-int/lit8 v2, v9, 0x8

    int-to-char v3, v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v3, v6

    move v6, v1

    move v1, v7

    move v7, v2

    move v2, v8

    goto :goto_736

    :cond_76f
    const/4 v2, 0x5

    sget-object v3, Lcom/google/zxing/a/a/c;->d:Lcom/google/zxing/a/a/c;

    if-ne v6, v3, :cond_775

    const/4 v2, 0x4

    :cond_775
    sub-int v3, v12, v9

    if-lt v3, v2, :cond_7b6

    invoke-static {v11, v9, v2}, Lcom/google/zxing/a/a/a;->a([ZII)I

    move-result v3

    add-int/2addr v2, v9

    invoke-static {v6, v3}, Lcom/google/zxing/a/a/a;->a(Lcom/google/zxing/a/a/c;I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "CTRL_"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7ad

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/a/a/a;->a(C)Lcom/google/zxing/a/a/c;

    move-result-object v6

    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v14, 0x53

    if-ne v9, v14, :cond_7b0

    const/4 v8, 0x1

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x42

    if-ne v3, v9, :cond_7b0

    const/4 v7, 0x1

    move-object v3, v6

    move v6, v1

    move v1, v7

    move v7, v2

    move v2, v8

    goto :goto_736

    :cond_7ad
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b0
    move-object v3, v6

    move v6, v1

    move v1, v7

    move v7, v2

    move v2, v8

    goto :goto_736

    :cond_7b6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/b/e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/google/zxing/b/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance v1, Lcom/google/zxing/m;

    iget-object v3, v2, Lcom/google/zxing/b/e;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/zxing/b/e;->a:[B

    sget-object v5, Lcom/google/zxing/a;->a:Lcom/google/zxing/a;

    invoke-direct {v1, v3, v4, v10, v5}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V

    iget-object v3, v2, Lcom/google/zxing/b/e;->c:Ljava/util/List;

    if-eqz v3, :cond_7d6

    sget-object v4, Lcom/google/zxing/n;->c:Lcom/google/zxing/n;

    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V

    :cond_7d6
    iget-object v2, v2, Lcom/google/zxing/b/e;->d:Ljava/lang/String;

    if-eqz v2, :cond_7df

    sget-object v3, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V

    :cond_7df
    return-object v1

    :cond_7e0
    move v8, v2

    move v9, v7

    move v7, v1

    move v2, v4

    move v1, v6

    move-object v6, v3

    move-object v3, v5

    goto/16 :goto_6fc
.end method

.method public final a()V
    .registers 1

    return-void
.end method
