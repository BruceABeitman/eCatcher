.class public final Lcom/instagram/creation/photo/gallery/p;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/instagram/creation/photo/gallery/p;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    const/16 v0, 0x8

    if-gt v1, v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    if-ge v0, v1, :cond_14

    shl-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    :cond_14
    return v0
.end method

.method private static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-nez p4, :cond_8

    :try_start_4
    invoke-static {p2, p3}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_7} :catch_49

    move-result-object p4

    :cond_8
    if-nez p4, :cond_e

    invoke-static {p4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_d
    return-object v0

    :cond_e
    if-nez p5, :cond_15

    :try_start_10
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_15
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {v1, v2, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2c

    iget v2, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_2c

    iget v2, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_2a} :catch_49

    if-ne v2, v3, :cond_30

    :cond_2c
    invoke-static {p4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    :cond_30
    :try_start_30
    invoke-static {p5, p0, p1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-static {v1, v2, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_44} :catch_49

    move-result-object v0

    invoke-static {p4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    :catch_49
    move-exception v1

    :try_start_4a
    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    invoke-static {p4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    :catchall_55
    move-exception v0

    invoke-static {p4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_17

    move-result-object v4

    :try_start_7
    invoke-static {}, Lcom/instagram/creation/photo/gallery/p;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    const/4 v0, -0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/instagram/creation/photo/gallery/p;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_24
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_26

    move-result-object v0

    invoke-static {v4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    move-object v4, v6

    :goto_19
    invoke-static {v4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    goto :goto_16

    :catchall_1e
    move-exception v0

    move-object v4, v6

    :goto_20
    invoke-static {v4}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_24
    move-exception v0

    goto :goto_20

    :catch_26
    move-exception v0

    goto :goto_19
.end method

.method public static a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v2, 0x0

    invoke-static {}, Lcom/instagram/creation/photo/gallery/p;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    const/4 v0, -0x1

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/instagram/creation/photo/gallery/p;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    const/high16 v3, 0x4000

    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_31

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32

    move-object p0, v0

    :cond_31
    :goto_31
    return-object p0

    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method private static a()Landroid/graphics/BitmapFactory$Options;
    .registers 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-object v0
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 14

    const/4 v1, 0x1

    const/4 v10, -0x1

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    if-ne p2, v10, :cond_12

    move v0, v1

    :goto_b
    if-ne p1, v10, :cond_20

    const/16 v2, 0x80

    :goto_f
    if-ge v2, v0, :cond_32

    :cond_11
    :goto_11
    return v0

    :cond_12
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_b

    :cond_20
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_f

    :cond_32
    if-ne p2, v10, :cond_38

    if-ne p1, v10, :cond_38

    move v0, v1

    goto :goto_11

    :cond_38
    if-eq p1, v10, :cond_11

    move v0, v2

    goto :goto_11
.end method
