.class public final Lcom/d/a/b/b/a;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"

# interfaces
.implements Lcom/d/a/b/b/d;


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/d/a/b/b/a;->a:Z

    return-void
.end method

.method private static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    move-result-object v0

    invoke-static {p0}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_9
    move-exception v0

    invoke-static {p0}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/d/a/b/b/b;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "image/jpeg"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p0}, Lcom/d/a/b/d/d;->a(Ljava/lang/String;)Lcom/d/a/b/d/d;

    move-result-object v2

    sget-object v3, Lcom/d/a/b/d/d;->c:Lcom/d/a/b/d/d;

    if-ne v2, v3, :cond_27

    :try_start_12
    new-instance v2, Landroid/media/ExifInterface;

    sget-object v3, Lcom/d/a/b/d/d;->c:Lcom/d/a/b/d/d;

    invoke-virtual {v3, p0}, Lcom/d/a/b/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_23} :catch_3a

    move-result v2

    packed-switch v2, :pswitch_data_46

    :cond_27
    :goto_27
    :pswitch_27
    move v0, v1

    :goto_28
    :pswitch_28
    new-instance v2, Lcom/d/a/b/b/b;

    invoke-direct {v2, v1, v0}, Lcom/d/a/b/b/b;-><init>(IZ)V

    return-object v2

    :pswitch_2e
    move v0, v1

    :pswitch_2f
    const/16 v1, 0x5a

    goto :goto_28

    :pswitch_32
    move v0, v1

    :pswitch_33
    const/16 v1, 0xb4

    goto :goto_28

    :pswitch_36
    move v0, v1

    :pswitch_37
    const/16 v1, 0x10e

    goto :goto_28

    :catch_3a
    move-exception v2

    const-string v2, "Can\'t read EXIF tags from file [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v2, v0}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_27
        :pswitch_28
        :pswitch_32
        :pswitch_33
        :pswitch_37
        :pswitch_2e
        :pswitch_2f
        :pswitch_36
    .end packed-switch
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/d/a/b/b/c;
    .registers 8

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2b

    invoke-static {p0}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_30

    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/d/a/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/d/a/b/b/b;

    move-result-object v0

    :goto_1a
    new-instance v2, Lcom/d/a/b/b/c;

    new-instance v3, Lcom/d/a/b/a/f;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v0, Lcom/d/a/b/b/b;->a:I

    invoke-direct {v3, v4, v1, v5}, Lcom/d/a/b/a/f;-><init>(III)V

    invoke-direct {v2, v3, v0}, Lcom/d/a/b/b/c;-><init>(Lcom/d/a/b/a/f;Lcom/d/a/b/b/b;)V

    return-object v2

    :catchall_2b
    move-exception v0

    invoke-static {p0}, Lcom/d/a/c/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_30
    new-instance v0, Lcom/d/a/b/b/b;

    invoke-direct {v0}, Lcom/d/a/b/b/b;-><init>()V

    goto :goto_1a
.end method

.method private static b(Lcom/d/a/b/b/e;)Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lcom/d/a/b/b/e;->f:Lcom/d/a/b/d/c;

    iget-object v1, p0, Lcom/d/a/b/b/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/d/a/b/b/e;->g:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/d/a/b/d/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/d/a/b/b/e;)Landroid/graphics/Bitmap;
    .registers 16

    invoke-static {p1}, Lcom/d/a/b/b/a;->b(Lcom/d/a/b/b/e;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p1, Lcom/d/a/b/b/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/d/a/b/b/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/d/a/b/b/c;

    move-result-object v4

    iget-object v5, v4, Lcom/d/a/b/b/c;->a:Lcom/d/a/b/a/f;

    iget-object v1, p1, Lcom/d/a/b/b/e;->d:Lcom/d/a/b/a/e;

    iget-object v6, p1, Lcom/d/a/b/b/e;->c:Lcom/d/a/b/a/f;

    const/4 v0, 0x1

    sget-object v2, Lcom/d/a/b/a/e;->a:Lcom/d/a/b/a/e;

    if-eq v1, v2, :cond_61

    sget-object v0, Lcom/d/a/b/a/e;->b:Lcom/d/a/b/a/e;

    if-ne v1, v0, :cond_7d

    const/4 v0, 0x1

    :goto_1a
    iget-object v7, p1, Lcom/d/a/b/b/e;->e:Lcom/d/a/b/a/l;

    iget v3, v5, Lcom/d/a/b/a/f;->a:I

    iget v2, v5, Lcom/d/a/b/a/f;->b:I

    iget v8, v6, Lcom/d/a/b/a/f;->a:I

    iget v6, v6, Lcom/d/a/b/a/f;->b:I

    const/4 v1, 0x1

    div-int v9, v3, v8

    div-int v10, v2, v6

    sget-object v11, Lcom/d/a/c/b;->a:[I

    invoke-virtual {v7}, Lcom/d/a/b/a/l;->ordinal()I

    move-result v7

    aget v7, v11, v7

    packed-switch v7, :pswitch_data_1a6

    :cond_34
    move v0, v1

    :cond_35
    :goto_35
    if-gtz v0, :cond_38

    const/4 v0, 0x1

    :cond_38
    iget-boolean v1, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v1, :cond_61

    const-string v1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    new-instance v6, Lcom/d/a/b/a/f;

    iget v7, v5, Lcom/d/a/b/a/f;->a:I

    div-int/2addr v7, v0

    iget v5, v5, Lcom/d/a/b/a/f;->b:I

    div-int/2addr v5, v0

    invoke-direct {v6, v7, v5}, Lcom/d/a/b/a/f;-><init>(II)V

    aput-object v6, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    iget-object v1, p1, Lcom/d/a/b/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1}, Lcom/d/a/b/b/a;->b(Lcom/d/a/b/b/e;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/d/a/b/b/a;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b0

    const-string v1, "Image can\'t be decoded [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7c
    return-object v0

    :cond_7d
    const/4 v0, 0x0

    goto :goto_1a

    :pswitch_7f
    if-eqz v0, :cond_93

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_84
    div-int/lit8 v3, v2, 0x2

    if-ge v3, v8, :cond_8c

    div-int/lit8 v3, v1, 0x2

    if-lt v3, v6, :cond_35

    :cond_8c
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_84

    :cond_93
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    goto :goto_35

    :pswitch_99
    if-eqz v0, :cond_aa

    :goto_9b
    div-int/lit8 v0, v3, 0x2

    if-lt v0, v8, :cond_34

    div-int/lit8 v0, v2, 0x2

    if-lt v0, v6, :cond_34

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_9b

    :cond_aa
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v1

    goto :goto_35

    :cond_b0
    iget-object v1, v4, Lcom/d/a/b/b/c;->b:Lcom/d/a/b/b/b;

    iget v6, v1, Lcom/d/a/b/b/b;->a:I

    iget-object v1, v4, Lcom/d/a/b/b/c;->b:Lcom/d/a/b/b/b;

    iget-boolean v7, v1, Lcom/d/a/b/b/b;->b:Z

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p1, Lcom/d/a/b/b/e;->d:Lcom/d/a/b/a/e;

    sget-object v2, Lcom/d/a/b/a/e;->d:Lcom/d/a/b/a/e;

    if-eq v1, v2, :cond_c7

    sget-object v2, Lcom/d/a/b/a/e;->e:Lcom/d/a/b/a/e;

    if-ne v1, v2, :cond_149

    :cond_c7
    new-instance v8, Lcom/d/a/b/a/f;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v8, v2, v3, v6}, Lcom/d/a/b/a/f;-><init>(III)V

    iget-object v2, p1, Lcom/d/a/b/b/e;->c:Lcom/d/a/b/a/f;

    iget-object v4, p1, Lcom/d/a/b/b/e;->e:Lcom/d/a/b/a/l;

    sget-object v3, Lcom/d/a/b/a/e;->e:Lcom/d/a/b/a/e;

    if-ne v1, v3, :cond_198

    const/4 v1, 0x1

    :goto_dd
    iget v9, v8, Lcom/d/a/b/a/f;->a:I

    iget v10, v8, Lcom/d/a/b/a/f;->b:I

    iget v3, v2, Lcom/d/a/b/a/f;->a:I

    iget v2, v2, Lcom/d/a/b/a/f;->b:I

    int-to-float v11, v9

    int-to-float v12, v3

    div-float/2addr v11, v12

    int-to-float v12, v10

    int-to-float v13, v2

    div-float/2addr v12, v13

    sget-object v13, Lcom/d/a/b/a/l;->a:Lcom/d/a/b/a/l;

    if-ne v4, v13, :cond_f3

    cmpl-float v13, v11, v12

    if-gez v13, :cond_fb

    :cond_f3
    sget-object v13, Lcom/d/a/b/a/l;->b:Lcom/d/a/b/a/l;

    if-ne v4, v13, :cond_19b

    cmpg-float v4, v11, v12

    if-gez v4, :cond_19b

    :cond_fb
    int-to-float v2, v10

    div-float/2addr v2, v11

    float-to-int v2, v2

    move v4, v3

    move v3, v2

    :goto_100
    const/high16 v2, 0x3f80

    if-nez v1, :cond_108

    if-ge v4, v9, :cond_108

    if-lt v3, v10, :cond_10e

    :cond_108
    if-eqz v1, :cond_1a2

    if-eq v4, v9, :cond_1a2

    if-eq v3, v10, :cond_1a2

    :cond_10e
    int-to-float v1, v4

    int-to-float v2, v9

    div-float/2addr v1, v2

    :goto_111
    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_149

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-boolean v2, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v2, :cond_149

    const-string v2, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    new-instance v9, Lcom/d/a/b/a/f;

    iget v10, v8, Lcom/d/a/b/a/f;->a:I

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    iget v8, v8, Lcom/d/a/b/a/f;->b:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    invoke-direct {v9, v10, v8}, Lcom/d/a/b/a/f;-><init>(II)V

    aput-object v9, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-object v4, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_149
    if-eqz v7, :cond_163

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-boolean v1, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v1, :cond_163

    const-string v1, "Flip image horizontally [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_163
    if-eqz v6, :cond_181

    int-to-float v1, v6

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-boolean v1, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v1, :cond_181

    const-string v1, "Rotate image on %1$d\u00b0 [%2$s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_181
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_195

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_195
    move-object v0, v1

    goto/16 :goto_7c

    :cond_198
    const/4 v1, 0x0

    goto/16 :goto_dd

    :cond_19b
    int-to-float v3, v9

    div-float/2addr v3, v12

    float-to-int v3, v3

    move v4, v3

    move v3, v2

    goto/16 :goto_100

    :cond_1a2
    move v1, v2

    goto/16 :goto_111

    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_99
    .end packed-switch
.end method
