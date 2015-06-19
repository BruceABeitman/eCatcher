.class public Landroid/support/v8/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .registers 5

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .registers 2

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/support/v8/renderscript/Matrix3f;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .registers 5

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/support/v8/renderscript/Matrix3f;Landroid/support/v8/renderscript/Matrix3f;)V
    .registers 14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v10, :cond_32

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v10, :cond_26

    invoke-virtual {p2, v0, v1}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v2

    invoke-virtual {p1, v1, v7}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    invoke-virtual {p1, v1, v8}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    invoke-virtual {p1, v1, v9}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_26
    invoke-virtual {p0, v0, v7, v3}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v0, v8, v4}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v0, v9, v5}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_32
    return-void
.end method

.method public loadRotate(F)V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    return-void
.end method

.method public loadRotate(FFFF)V
    .registers 19

    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v0, v11

    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v4, v11

    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    const/high16 v11, 0x3f80

    cmpl-float v11, v1, v11

    if-nez v11, :cond_2e

    const/high16 v11, 0x3f80

    div-float v3, v11, v1

    mul-float p2, p2, v3

    mul-float p3, p3, v3

    mul-float p4, p4, v3

    :cond_2e
    const/high16 v11, 0x3f80

    sub-float v2, v11, v0

    mul-float v6, p2, p3

    mul-float v8, p3, p4

    mul-float v10, p4, p2

    mul-float v5, p2, v4

    mul-float v7, p3, v4

    mul-float v9, p4, v4

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x0

    mul-float v13, p2, p2

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x3

    mul-float v13, v6, v2

    sub-float/2addr v13, v9

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x6

    mul-float v13, v10, v2

    add-float/2addr v13, v7

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x1

    mul-float v13, v6, v2

    add-float/2addr v13, v9

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x4

    mul-float v13, p3, p3

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x7

    mul-float v13, v8, v2

    sub-float/2addr v13, v5

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x2

    mul-float v13, v10, v2

    sub-float/2addr v13, v7

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x5

    mul-float v13, v8, v2

    add-float/2addr v13, v5

    aput v13, v11, v12

    iget-object v11, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/16 v12, 0x8

    mul-float v13, p4, p4

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    return-void
.end method

.method public loadScale(FF)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    return-void
.end method

.method public loadScale(FFF)V
    .registers 6

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput p3, v0, v1

    return-void
.end method

.method public loadTranslate(FF)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    return-void
.end method

.method public multiply(Landroid/support/v8/renderscript/Matrix3f;)V
    .registers 3

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/support/v8/renderscript/Matrix3f;->loadMultiply(Landroid/support/v8/renderscript/Matrix3f;Landroid/support/v8/renderscript/Matrix3f;)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->load(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(F)V
    .registers 3

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix3f;->loadRotate(F)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .registers 6

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Matrix3f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FF)V
    .registers 4

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix3f;->loadScale(FF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FFF)V
    .registers 5

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix3f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public set(IIF)V
    .registers 6

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public translate(FF)V
    .registers 4

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix3f;->loadTranslate(FF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public transpose()V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2b

    add-int/lit8 v1, v0, 0x1

    :goto_6
    const/4 v3, 0x3

    if-ge v1, v3, :cond_28

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    aget v2, v3, v4

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2b
    return-void
.end method
