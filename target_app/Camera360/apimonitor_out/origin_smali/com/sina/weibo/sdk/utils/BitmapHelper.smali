.class public final Lcom/sina/weibo/sdk/utils/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSampleSizeAutoFitToScreen(IIII)I
    .registers 8

    if-eqz p1, :cond_4

    if-nez p0, :cond_6

    :cond_4
    const/4 v2, 0x1

    :goto_5
    return v2

    :cond_6
    div-int v2, p2, p0

    div-int v3, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v2, p3, p0

    div-int v3, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5
.end method

.method public static getSampleSizeOfNotTooLarge(Landroid/graphics/Rect;)I
    .registers 8

    const/high16 v0, 0x50

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4154

    div-double v1, v3, v5

    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1c

    double-to-int v3, v1

    :goto_1b
    return v3

    :cond_1c
    const/4 v3, 0x1

    goto :goto_1b
.end method

.method public static makesureSizeNotTooLarge(Landroid/graphics/Rect;)Z
    .registers 4

    const/high16 v0, 0x50

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x50

    if-le v1, v2, :cond_13

    const/4 v1, 0x0

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public static verifyBitmap(Ljava/io/InputStream;)Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_6

    move v2, v3

    :goto_5
    return v2

    :cond_6
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    instance-of v2, p0, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_22

    :goto_11
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_29

    :goto_18
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_2e

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_2e

    move v2, v4

    goto :goto_5

    :cond_22
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v2

    goto :goto_11

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :cond_2e
    move v2, v3

    goto :goto_5
.end method

.method public static verifyBitmap(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/io/InputStream;)Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static verifyBitmap([B)Z
    .registers 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/BitmapHelper;->verifyBitmap(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method
