.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v2

    new-array v3, v2, [I

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_8
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_25

    if-ge v0, v2, :cond_25

    invoke-virtual {p1, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_25
    if-eq v0, v2, :cond_2c

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    :cond_2c
    return-object v3
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I
    .registers 16

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    new-array v3, v1, [I

    const/4 v4, 0x1

    :goto_7
    if-gt v4, v1, :cond_1a

    sub-int v9, v1, v4

    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v10, v4, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    aput v10, v3, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_1a
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v9, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    array-length v7, p3

    new-array v6, v7, [I

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v7, :cond_4f

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v10, p3, v4

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v10, 0x0

    invoke-virtual {p1, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v5

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v0

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v9, v5, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v9

    aput v9, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_4f
    return-object v6
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    move-object/from16 v17, p1

    move-object/from16 p1, p2

    move-object/from16 p2, v17

    :cond_14
    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v14

    :goto_2c
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    div-int/lit8 v19, p3, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_ce

    move-object v10, v9

    move-object/from16 v16, v15

    move-object v9, v8

    move-object v15, v14

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v18

    if-eqz v18, :cond_48

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v18

    throw v18

    :cond_48
    move-object v8, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    :goto_69
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_bc

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v18

    if-nez v18, :cond_bc

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    sub-int v2, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    invoke-virtual {v9, v2, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    goto :goto_69

    :cond_bc
    invoke-virtual {v7, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v14

    goto/16 :goto_2c

    :cond_ce
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v13

    if-nez v13, :cond_dd

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v18

    throw v18

    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v12

    invoke-virtual {v8, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    return-object v18
.end method


# virtual methods
.method public decode([II[I)I
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v17, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move/from16 v0, p2

    new-array v4, v0, [I

    const/4 v8, 0x0

    move/from16 v12, p2

    :goto_18
    if-lez v12, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v11

    sub-int v23, p2, v12

    aput v11, v4, v23

    if-eqz v11, :cond_35

    const/4 v8, 0x1

    :cond_35
    add-int/lit8 v12, v12, -0x1

    goto :goto_18

    :cond_38
    if-nez v8, :cond_3d

    const/16 v23, 0x0

    :goto_3c
    return v23

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v14

    move-object/from16 v5, p3

    array-length v15, v5

    const/4 v13, 0x0

    :goto_4b
    if-ge v13, v15, :cond_98

    aget v7, v5, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    sub-int v24, v24, v7

    invoke-virtual/range {v23 .. v24}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v6

    new-instance v22, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v26

    aput v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x1

    aput v26, v24, v25

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    :cond_98
    new-instance v21, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v20

    const/16 v23, 0x0

    aget-object v19, v20, v23

    const/16 v23, 0x1

    aget-object v16, v20, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v9}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I

    move-result-object v10

    const/4 v12, 0x0

    :goto_e0
    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_116

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v24, v0

    aget v25, v9, v12

    invoke-virtual/range {v24 .. v25}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->log(I)I

    move-result v24

    sub-int v18, v23, v24

    if-gez v18, :cond_103

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v23

    throw v23

    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v23, v0

    aget v24, p1, v18

    aget v25, v10, v12

    invoke-virtual/range {v23 .. v25}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v23

    aput v23, p1, v18

    add-int/lit8 v12, v12, 0x1

    goto :goto_e0

    :cond_116
    array-length v0, v9

    move/from16 v23, v0

    goto/16 :goto_3c
.end method
