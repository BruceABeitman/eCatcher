.class public Lcom/pinguo/camera360/cloud/cropImage/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static CRCTable:[J = null

.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final UNCONSTRAINED:I = -0x1

.field private static init:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/pinguo/camera360/cloud/cropImage/Utils;->init:Z

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/Utils;->CRCTable:[J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 15

    const/4 v6, 0x1

    const/4 v11, -0x1

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    if-ne p2, v11, :cond_12

    move v2, v6

    :goto_b
    if-ne p1, v11, :cond_20

    const/16 v3, 0x80

    :goto_f
    if-ge v3, v2, :cond_34

    :cond_11
    :goto_11
    return v2

    :cond_12
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_b

    :cond_20
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_f

    :cond_34
    if-ne p2, v11, :cond_3a

    if-ne p1, v11, :cond_3a

    move v2, v6

    goto :goto_11

    :cond_3a
    if-eq p1, v11, :cond_11

    move v2, v3

    goto :goto_11
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/pinguo/camera360/cloud/cropImage/Utils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_f

    const/4 v1, 0x1

    :goto_9
    if-lt v1, v0, :cond_c

    :goto_b
    return v1

    :cond_c
    shl-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    goto :goto_b
.end method

.method public static crc64Long(Ljava/lang/String;)J
    .registers 15

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_b

    :cond_8
    const-wide/16 v1, 0x0

    :cond_a
    return-wide v1

    :cond_b
    const-wide/16 v1, -0x1

    sget-boolean v10, Lcom/pinguo/camera360/cloud/cropImage/Utils;->init:Z

    if-nez v10, :cond_19

    const/4 v3, 0x0

    :goto_12
    const/16 v10, 0x100

    if-lt v3, v10, :cond_35

    const/4 v10, 0x1

    sput-boolean v10, Lcom/pinguo/camera360/cloud/cropImage/Utils;->init:Z

    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v6, :cond_a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v10, Lcom/pinguo/camera360/cloud/cropImage/Utils;->CRCTable:[J

    long-to-int v11, v1

    xor-int/2addr v11, v0

    and-int/lit16 v11, v11, 0xff

    aget-wide v10, v10, v11

    const/16 v12, 0x8

    shr-long v12, v1, v12

    xor-long v1, v10, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_35
    int-to-long v7, v3

    const/4 v4, 0x0

    :goto_37
    const/16 v10, 0x8

    if-lt v4, v10, :cond_42

    sget-object v10, Lcom/pinguo/camera360/cloud/cropImage/Utils;->CRCTable:[J

    aput-wide v7, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_42
    long-to-int v10, v7

    and-int/lit8 v9, v10, 0x1

    if-eqz v9, :cond_54

    const/4 v10, 0x1

    shr-long v10, v7, v10

    const-wide v12, -0x6a536cd653b4364bL

    xor-long v7, v10, v12

    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_54
    const/4 v10, 0x1

    shr-long/2addr v7, v10

    goto :goto_51
.end method
