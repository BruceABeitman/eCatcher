.class public final Lcom/google/zxing/b/j;
.super Lcom/google/zxing/b/h;
.source "HybridBinarizer.java"


# instance fields
.field private b:Lcom/google/zxing/b/b;


# direct methods
.method public constructor <init>(Lcom/google/zxing/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/b/h;-><init>(Lcom/google/zxing/g;)V

    return-void
.end method

.method private static a(II)I
    .registers 3

    const/4 v0, 0x2

    if-ge p0, v0, :cond_5

    move p1, v0

    :cond_4
    :goto_4
    return p1

    :cond_5
    if-gt p0, p1, :cond_4

    move p1, p0

    goto :goto_4
.end method


# virtual methods
.method public final a()Lcom/google/zxing/b/b;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/b/j;->b:Lcom/google/zxing/b/b;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/b/j;->b:Lcom/google/zxing/b/b;

    :goto_a
    return-object v1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/b;->a:Lcom/google/zxing/g;

    iget v15, v1, Lcom/google/zxing/g;->a:I

    iget v0, v1, Lcom/google/zxing/g;->b:I

    move/from16 v16, v0

    const/16 v2, 0x28

    if-lt v15, v2, :cond_171

    const/16 v2, 0x28

    move/from16 v0, v16

    if-lt v0, v2, :cond_171

    invoke-virtual {v1}, Lcom/google/zxing/g;->a()[B

    move-result-object v17

    shr-int/lit8 v1, v15, 0x3

    and-int/lit8 v2, v15, 0x7

    if-eqz v2, :cond_191

    add-int/lit8 v1, v1, 0x1

    move v14, v1

    :goto_2c
    shr-int/lit8 v1, v16, 0x3

    and-int/lit8 v2, v16, 0x7

    if-eqz v2, :cond_18e

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_35
    filled-new-array {v2, v14}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v3, 0x0

    move v13, v3

    :goto_43
    if-ge v13, v2, :cond_e8

    shl-int/lit8 v4, v13, 0x3

    add-int/lit8 v3, v16, -0x8

    if-le v4, v3, :cond_18b

    :goto_4b
    const/4 v4, 0x0

    move v12, v4

    :goto_4d
    if-ge v12, v14, :cond_e3

    shl-int/lit8 v5, v12, 0x3

    add-int/lit8 v4, v15, -0x8

    if-le v5, v4, :cond_188

    :goto_55
    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v5, 0x0

    const/4 v7, 0x0

    mul-int v6, v3, v15

    add-int/2addr v6, v4

    :goto_5d
    const/16 v4, 0x8

    if-ge v7, v4, :cond_b1

    const/4 v4, 0x0

    move v10, v4

    :goto_63
    const/16 v4, 0x8

    if-ge v10, v4, :cond_7b

    add-int v4, v6, v10

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xff

    add-int v11, v8, v4

    if-ge v4, v9, :cond_185

    move v8, v4

    :goto_72
    if-le v4, v5, :cond_182

    :goto_74
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v9, v8

    move v5, v4

    move v8, v11

    goto :goto_63

    :cond_7b
    sub-int v4, v5, v9

    const/16 v10, 0x18

    if-le v4, v10, :cond_a4

    add-int/lit8 v7, v7, 0x1

    add-int v4, v6, v15

    move v6, v7

    move v7, v8

    :goto_87
    const/16 v8, 0x8

    if-ge v6, v8, :cond_a7

    const/4 v8, 0x0

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    :goto_91
    const/16 v10, 0x8

    if-ge v7, v10, :cond_9f

    add-int v10, v4, v7

    aget-byte v10, v17, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_91

    :cond_9f
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v15

    move v7, v8

    goto :goto_87

    :cond_a4
    move v4, v6

    move v6, v7

    move v7, v8

    :cond_a7
    add-int/lit8 v8, v6, 0x1

    add-int v6, v4, v15

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    goto :goto_5d

    :cond_b1
    shr-int/lit8 v4, v8, 0x6

    sub-int/2addr v5, v9

    const/16 v6, 0x18

    if-gt v5, v6, :cond_da

    shr-int/lit8 v5, v9, 0x1

    if-lez v13, :cond_17f

    if-lez v12, :cond_17f

    add-int/lit8 v4, v13, -0x1

    aget-object v4, v1, v4

    aget v4, v4, v12

    aget-object v6, v1, v13

    add-int/lit8 v7, v12, -0x1

    aget v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v6, v13, -0x1

    aget-object v6, v1, v6

    add-int/lit8 v7, v12, -0x1

    aget v6, v6, v7

    add-int/2addr v4, v6

    shr-int/lit8 v4, v4, 0x2

    if-ge v9, v4, :cond_17f

    :cond_da
    :goto_da
    aget-object v5, v1, v13

    aput v4, v5, v12

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_4d

    :cond_e3
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto/16 :goto_43

    :cond_e8
    new-instance v10, Lcom/google/zxing/b/b;

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lcom/google/zxing/b/b;-><init>(II)V

    const/4 v3, 0x0

    move v6, v3

    :goto_f1
    if-ge v6, v2, :cond_167

    shl-int/lit8 v4, v6, 0x3

    add-int/lit8 v3, v16, -0x8

    if-le v4, v3, :cond_17a

    move v5, v3

    :goto_fa
    const/4 v3, 0x0

    move v8, v3

    :goto_fc
    if-ge v8, v14, :cond_163

    shl-int/lit8 v4, v8, 0x3

    add-int/lit8 v3, v15, -0x8

    if-le v4, v3, :cond_17d

    :goto_104
    add-int/lit8 v4, v14, -0x3

    invoke-static {v8, v4}, Lcom/google/zxing/b/j;->a(II)I

    move-result v9

    add-int/lit8 v4, v2, -0x3

    invoke-static {v6, v4}, Lcom/google/zxing/b/j;->a(II)I

    move-result v11

    const/4 v7, 0x0

    const/4 v4, -0x2

    :goto_112
    const/4 v12, 0x2

    if-gt v4, v12, :cond_136

    add-int v12, v11, v4

    aget-object v12, v1, v12

    add-int/lit8 v13, v9, -0x2

    aget v13, v12, v13

    add-int/lit8 v18, v9, -0x1

    aget v18, v12, v18

    add-int v13, v13, v18

    aget v18, v12, v9

    add-int v13, v13, v18

    add-int/lit8 v18, v9, 0x1

    aget v18, v12, v18

    add-int v13, v13, v18

    add-int/lit8 v18, v9, 0x2

    aget v12, v12, v18

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_112

    :cond_136
    div-int/lit8 v11, v7, 0x19

    const/4 v7, 0x0

    mul-int v4, v5, v15

    add-int/2addr v4, v3

    move v9, v7

    move v7, v4

    :goto_13e
    const/16 v4, 0x8

    if-ge v9, v4, :cond_15f

    const/4 v4, 0x0

    :goto_143
    const/16 v12, 0x8

    if-ge v4, v12, :cond_159

    add-int v12, v7, v4

    aget-byte v12, v17, v12

    and-int/lit16 v12, v12, 0xff

    if-gt v12, v11, :cond_156

    add-int v12, v3, v4

    add-int v13, v5, v9

    invoke-virtual {v10, v12, v13}, Lcom/google/zxing/b/b;->b(II)V

    :cond_156
    add-int/lit8 v4, v4, 0x1

    goto :goto_143

    :cond_159
    add-int/lit8 v9, v9, 0x1

    add-int v4, v7, v15

    move v7, v4

    goto :goto_13e

    :cond_15f
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_fc

    :cond_163
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_f1

    :cond_167
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/zxing/b/j;->b:Lcom/google/zxing/b/b;

    :goto_16b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/b/j;->b:Lcom/google/zxing/b/b;

    goto/16 :goto_a

    :cond_171
    invoke-super/range {p0 .. p0}, Lcom/google/zxing/b/h;->a()Lcom/google/zxing/b/b;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/zxing/b/j;->b:Lcom/google/zxing/b/b;

    goto :goto_16b

    :cond_17a
    move v5, v4

    goto/16 :goto_fa

    :cond_17d
    move v3, v4

    goto :goto_104

    :cond_17f
    move v4, v5

    goto/16 :goto_da

    :cond_182
    move v4, v5

    goto/16 :goto_74

    :cond_185
    move v8, v9

    goto/16 :goto_72

    :cond_188
    move v4, v5

    goto/16 :goto_55

    :cond_18b
    move v3, v4

    goto/16 :goto_4b

    :cond_18e
    move v2, v1

    goto/16 :goto_35

    :cond_191
    move v14, v1

    goto/16 :goto_2c
.end method
