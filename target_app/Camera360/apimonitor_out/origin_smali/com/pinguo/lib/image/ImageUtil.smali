.class public Lcom/pinguo/lib/image/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
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

    invoke-static {p0, p1, p2}, Lcom/pinguo/lib/image/ImageUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

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

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v2, 0x0

    const/4 v5, -0x1

    :try_start_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_1b

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_1b

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1c

    :cond_1b
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/pinguo/lib/image/ImageUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_32
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_32} :catch_34

    move-result-object v2

    goto :goto_1b

    :catch_34
    move-exception v0

    const-string/jumbo v3, "Image Intent"

    const-string/jumbo v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method
