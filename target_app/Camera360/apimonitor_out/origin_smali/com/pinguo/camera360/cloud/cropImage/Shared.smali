.class public final Lcom/pinguo/camera360/cloud/cropImage/Shared;
.super Ljava/lang/Object;
.source "Shared.java"


# static fields
.field public static final INFINITY:I = 0x7fffffff

.field public static final INVALID:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argb(FFFF)I
    .registers 8

    const/high16 v3, 0x437f

    mul-float v0, p0, v3

    float-to-int v0, v0

    mul-float v1, p1, v3

    float-to-int v1, v1

    mul-float v2, p2, v3

    float-to-int v2, v2

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    :cond_3
    :goto_3
    return p0

    :cond_4
    if-le p0, p2, :cond_3

    move p0, p2

    goto :goto_3
.end method

.method public static clamp(JJJ)J
    .registers 7

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide p0, p2

    :cond_5
    :goto_5
    return-wide p0

    :cond_6
    cmp-long v0, p0, p4

    if-lez v0, :cond_5

    move-wide p0, p4

    goto :goto_5
.end method

.method public static degreesToExifOrientation(F)I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/high16 v1, 0x42b4

    cmpl-float v1, p0, v1

    if-nez v1, :cond_f

    const/4 v0, 0x6

    goto :goto_6

    :cond_f
    const/high16 v1, 0x4334

    cmpl-float v1, p0, v1

    if-nez v1, :cond_17

    const/4 v0, 0x3

    goto :goto_6

    :cond_17
    const/high16 v1, 0x4387

    cmpl-float v1, p0, v1

    if-nez v1, :cond_6

    const/16 v0, 0x8

    goto :goto_6
.end method

.method public static exifOrientationToDegrees(I)F
    .registers 2

    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const/high16 v0, 0x42b4

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    const/high16 v0, 0x4334

    goto :goto_5

    :cond_c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_13

    const/high16 v0, 0x4387

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isPowerOf2(I)Z
    .registers 2

    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static midPointIterator(I)I
    .registers 4

    if-eqz p0, :cond_14

    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, p0, -0x1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_12

    const/4 v0, 0x1

    :goto_f
    mul-int v2, v1, v0

    :goto_11
    return v2

    :cond_12
    const/4 v0, -0x1

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static nextPowerOf2(I)I
    .registers 2

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static normalizePositive(F)F
    .registers 6

    const/4 v2, 0x0

    const/high16 v4, 0x43b4

    cmpl-float v3, p0, v2

    if-nez v3, :cond_9

    move p0, v2

    :cond_8
    :goto_8
    return p0

    :cond_9
    div-float v1, p0, v4

    const/4 v0, 0x0

    cmpg-float v2, p0, v2

    if-gez v2, :cond_1e

    const/high16 v2, 0x3f80

    sub-float v2, v1, v2

    float-to-int v0, v2

    :cond_15
    :goto_15
    int-to-float v2, v0

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    cmpl-float v2, p0, v4

    if-nez v2, :cond_8

    const/4 p0, 0x0

    goto :goto_8

    :cond_1e
    cmpl-float v2, p0, v4

    if-lez v2, :cond_15

    float-to-int v0, v1

    goto :goto_15
.end method

.method public static prevPowerOf2(I)I
    .registers 2

    invoke-static {p0}, Lcom/pinguo/camera360/cloud/cropImage/Shared;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/pinguo/camera360/cloud/cropImage/Shared;->nextPowerOf2(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Lcom/pinguo/camera360/cloud/cropImage/Shared;->nextPowerOf2(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method public static scaleToFit(FFFFZ)F
    .registers 8

    div-float v0, p2, p0

    div-float v1, p3, p1

    if-eqz p4, :cond_b

    cmpl-float v2, v0, v1

    if-lez v2, :cond_f

    :cond_a
    :goto_a
    return v0

    :cond_b
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_a

    :cond_f
    move v0, v1

    goto :goto_a
.end method
