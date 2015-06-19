.class final Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p2

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_d
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    array-length v0, p2

    const/4 v2, 0x1

    if-le v0, v2, :cond_3b

    aget v2, p2, v4

    if-nez v2, :cond_3b

    const/4 v1, 0x1

    :goto_18
    if-ge v1, v0, :cond_21

    aget v2, p2, v1

    if-nez v2, :cond_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_21
    if-ne v1, v0, :cond_2c

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    :goto_2b
    return-void

    :cond_2c
    sub-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v3, v3

    invoke-static {p2, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    :cond_3b
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    goto :goto_2b
.end method


# virtual methods
.method addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 11

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v7, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_14
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1b

    :goto_1a
    return-object p1

    :cond_1b
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_23

    move-object p1, p0

    goto :goto_1a

    :cond_23
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v6, v3

    array-length v7, v1

    if-le v6, v7, :cond_2e

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :cond_2e
    array-length v6, v1

    new-array v4, v6, [I

    array-length v6, v1

    array-length v7, v3

    sub-int v2, v6, v7

    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :goto_39
    array-length v6, v1

    if-ge v0, v6, :cond_4b

    sub-int v6, v0, v2

    aget v6, v3, v6

    aget v7, v1, v0

    invoke-static {v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v6

    aput v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4b
    new-instance p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {p1, v6, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_1a
.end method

.method divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 12

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v9, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_13
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_22

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Divide by 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_22
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v4

    move-object v5, p0

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v1

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v2

    :goto_37
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    if-lt v8, v9, :cond_72

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-nez v8, :cond_72

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    sub-int v0, v8, v9

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v6

    invoke-virtual {p1, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v4

    invoke-virtual {v5, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    goto :goto_37

    :cond_72
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    return-object v8
.end method

.method evaluateAt(I)I
    .registers 11

    const/4 v8, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v5

    :cond_7
    return v5

    :cond_8
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v6, v7

    const/4 v7, 0x1

    if-ne p1, v7, :cond_1e

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v4, :cond_7

    aget v1, v0, v3

    invoke-static {v5, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1e
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v5, v7, v8

    const/4 v2, 0x1

    :goto_23
    if-ge v2, v6, :cond_7

    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, p1, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v7

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v8, v8, v2

    invoke-static {v7, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_23
.end method

.method getCoefficient(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 7

    if-nez p1, :cond_9

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object p0

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v2, v3

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_23

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object p0, v3

    goto :goto_8
.end method

.method multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 14

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v9, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_26

    :cond_1f
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    :goto_25
    return-object v8

    :cond_26
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v2, v1

    iget-object v3, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v4, v3

    add-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [I

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v2, :cond_54

    aget v0, v1, v5

    const/4 v6, 0x0

    :goto_38
    if-ge v6, v4, :cond_51

    add-int v8, v5, v6

    add-int v9, v5, v6

    aget v9, v7, v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v11, v3, v6

    invoke-virtual {v10, v0, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_54
    new-instance v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v9, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_25
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 8

    if-gez p1, :cond_8

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_8
    if-nez p2, :cond_11

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    :goto_10
    return-object v3

    :cond_11
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v2, v3

    add-int v3, v2, p1

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_2a

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2a
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    :goto_10
    if-ltz v2, :cond_67

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v1

    if-eqz v1, :cond_3b

    if-gez v1, :cond_3e

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v1, v1

    :cond_21
    :goto_21
    if-eqz v2, :cond_25

    if-eq v1, v5, :cond_32

    :cond_25
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v0

    if-nez v0, :cond_4b

    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    :goto_32
    if-eqz v2, :cond_3b

    if-ne v2, v5, :cond_5d

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    :cond_3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_21

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_4b
    if-ne v0, v5, :cond_53

    const/16 v4, 0x61

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_53
    const-string/jumbo v4, "a^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_5d
    const-string/jumbo v4, "x^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
