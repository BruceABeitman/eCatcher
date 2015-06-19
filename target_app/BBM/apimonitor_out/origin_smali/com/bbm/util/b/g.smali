.class public Lcom/bbm/util/b/g;
.super Lcom/bbm/util/b/i;
.source "ImageFetcher.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/bbm/util/b/i;-><init>(Landroid/app/Activity;)V

    const/high16 v0, 0x8

    iput v0, p0, Lcom/bbm/util/b/g;->a:I

    invoke-direct {p0, p2, p2}, Lcom/bbm/util/b/g;->a(II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/bbm/util/b/i;-><init>(Landroid/app/Activity;)V

    const/high16 v0, 0x8

    iput v0, p0, Lcom/bbm/util/b/g;->a:I

    invoke-direct {p0, p2, p3}, Lcom/bbm/util/b/g;->a(II)V

    return-void
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 7

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I

    move-result v0

    if-lez p2, :cond_c

    if-le p2, v0, :cond_d

    :cond_c
    move p2, v0

    :cond_d
    if-lez p3, :cond_11

    if-le p3, v0, :cond_12

    :cond_11
    move p3, v0

    :cond_12
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2a

    mul-int v0, p0, p3

    mul-int v1, p2, p1

    if-le v0, v1, :cond_26

    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    :goto_1f
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_38

    :goto_25
    return v0

    :cond_26
    int-to-float v0, p0

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1f

    :cond_2a
    mul-int v0, p0, p3

    mul-int v1, p2, p1

    if-ge v0, v1, :cond_34

    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    goto :goto_1f

    :cond_34
    int-to-float v0, p0

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_1f

    :cond_38
    const/4 v0, 0x1

    goto :goto_25
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v4, 0x1

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;IILcom/bbm/util/b/d;ZZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILcom/bbm/util/b/d;ZZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;
    .registers 19

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return-object v1

    :cond_12
    if-eqz p5, :cond_ae

    invoke-static {p0}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;)[B

    move-result-object v1

    move-object v6, v1

    :goto_19
    if-eqz v6, :cond_b2

    array-length v1, v6

    if-lez v1, :cond_b2

    const/4 v1, 0x1

    :goto_1f
    const/4 v3, 0x1

    iput-boolean v3, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_b5

    const/4 v3, 0x0

    :try_start_25
    array-length v8, v6

    invoke-static {v6, v3, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_29} :catch_e5

    :cond_29
    :goto_29
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_144

    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p6

    invoke-static {v3, v4, p1, p2, v0}, Lcom/bbm/util/b/g;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v3

    :goto_38
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p6

    invoke-static {v4, v8, p1, p2, v0}, Lcom/bbm/util/b/g;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v4

    if-eqz v1, :cond_141

    :try_start_44
    iput v3, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p4, :cond_5b

    invoke-static {}, Lcom/bbm/util/fb;->b()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "image/gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-static {v7, p3}, Lcom/bbm/util/b/h;->a(Landroid/graphics/BitmapFactory$Options;Lcom/bbm/util/b/d;)V

    :cond_5b
    const/4 v1, 0x0

    array-length v3, v6

    invoke-static {v6, v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_71

    iget-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_71

    iget-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_71
    :goto_71
    if-nez v1, :cond_13e

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_44 .. :try_end_78} :catchall_122
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_78} :catch_f4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_44 .. :try_end_78} :catch_10b

    :try_start_78
    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p4, :cond_8f

    invoke-static {}, Lcom/bbm/util/fb;->b()Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-static {v7, p3}, Lcom/bbm/util/b/h;->a(Landroid/graphics/BitmapFactory$Options;Lcom/bbm/util/b/d;)V

    :cond_8f
    const/4 v1, 0x0

    invoke-static {v3, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a4

    iget-object v2, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v2, :cond_a4

    iget-object v2, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_a4
    .catchall {:try_start_78 .. :try_end_a4} :catchall_12d
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_a4} :catch_133
    .catch Ljava/lang/OutOfMemoryError; {:try_start_78 .. :try_end_a4} :catch_130

    :cond_a4
    :goto_a4
    if-eqz v3, :cond_11

    :try_start_a6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_ab

    goto/16 :goto_11

    :catch_ab
    move-exception v2

    goto/16 :goto_11

    :cond_ae
    const/4 v1, 0x0

    move-object v6, v1

    goto/16 :goto_19

    :cond_b2
    const/4 v1, 0x0

    goto/16 :goto_1f

    :cond_b5
    :try_start_b5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ba} :catch_c8

    const/4 v2, 0x0

    :try_start_bb
    invoke-static {v3, v2, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_136
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_139

    :try_start_be
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_be .. :try_end_c1} :catch_e5

    move-object v2, v3

    goto/16 :goto_29

    :catch_c4
    move-exception v2

    move-object v2, v3

    goto/16 :goto_29

    :catch_c8
    move-exception v3

    :goto_c9
    :try_start_c9
    const-string v8, "Failed to fetch bitmap"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_de

    if-eqz v2, :cond_29

    :try_start_d6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_db
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d6 .. :try_end_d9} :catch_e5

    goto/16 :goto_29

    :catch_db
    move-exception v3

    goto/16 :goto_29

    :catchall_de
    move-exception v1

    :goto_df
    if-eqz v2, :cond_e4

    :try_start_e1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_129
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e1 .. :try_end_e4} :catch_e5

    :cond_e4
    :goto_e4
    :try_start_e4
    throw v1
    :try_end_e5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e4 .. :try_end_e5} :catch_e5

    :catch_e5
    move-exception v1

    const-string v2, "ImageFetcher failed out of memory"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto/16 :goto_11

    :catch_f4
    move-exception v1

    :goto_f5
    :try_start_f5
    const-string v3, "Failed to fetch bitmap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_100
    .catchall {:try_start_f5 .. :try_end_100} :catchall_122

    const/4 v1, 0x0

    if-eqz v2, :cond_11

    :try_start_103
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_108

    goto/16 :goto_11

    :catch_108
    move-exception v2

    goto/16 :goto_11

    :catch_10b
    move-exception v1

    :goto_10c
    :try_start_10c
    const-string v3, "Unable to fetch bitmap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_117
    .catchall {:try_start_10c .. :try_end_117} :catchall_122

    const/4 v1, 0x0

    if-eqz v2, :cond_11

    :try_start_11a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_11f

    goto/16 :goto_11

    :catch_11f
    move-exception v2

    goto/16 :goto_11

    :catchall_122
    move-exception v1

    :goto_123
    if-eqz v2, :cond_128

    :try_start_125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_12b

    :cond_128
    :goto_128
    throw v1

    :catch_129
    move-exception v2

    goto :goto_e4

    :catch_12b
    move-exception v2

    goto :goto_128

    :catchall_12d
    move-exception v1

    move-object v2, v3

    goto :goto_123

    :catch_130
    move-exception v1

    move-object v2, v3

    goto :goto_10c

    :catch_133
    move-exception v1

    move-object v2, v3

    goto :goto_f5

    :catchall_136
    move-exception v1

    move-object v2, v3

    goto :goto_df

    :catch_139
    move-exception v2

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_c9

    :cond_13e
    move-object v3, v2

    goto/16 :goto_a4

    :cond_141
    move-object v1, v5

    goto/16 :goto_71

    :cond_144
    move v3, v4

    goto/16 :goto_38
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)Lcom/bbm/d/fd;
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v3, "http"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "https"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    :cond_1f
    move v4, v0

    :goto_20
    if-eqz v4, :cond_85

    iget-object v3, p0, Lcom/bbm/util/b/g;->c:Lcom/bbm/util/bo;

    if-eqz v3, :cond_4e

    :goto_26
    const-string v3, "No HttpLoader set for this ImageFetcher"

    invoke-static {v0, v3}, Lcom/bbm/util/fb;->a(ZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    :try_start_2e
    iget-object v0, p0, Lcom/bbm/util/b/g;->c:Lcom/bbm/util/bo;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/util/bo;->b(Ljava/net/URL;)[B
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_2e .. :try_end_38} :catch_50
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_57

    move-result-object v0

    :try_start_39
    array-length v1, v0
    :try_end_3a
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_3a} :catch_198
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3a} :catch_195

    :goto_3a
    iget v3, p0, Lcom/bbm/util/b/g;->a:I

    if-gt v1, v3, :cond_af

    if-eqz v0, :cond_af

    invoke-static {v0}, Lcom/bbm/ui/cl;->a([B)Lcom/bbm/ui/cl;

    move-result-object v1

    if-eqz v1, :cond_af

    new-instance v2, Lcom/bbm/d/fd;

    invoke-direct {v2, v1}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V

    :cond_4b
    :goto_4b
    return-object v2

    :cond_4c
    move v4, v1

    goto :goto_20

    :cond_4e
    move v0, v1

    goto :goto_26

    :catch_50
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    :goto_53
    invoke-static {v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_3a

    :catch_57
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    :goto_5a
    invoke-static {v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_3a

    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v1}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;I)[B
    :try_end_77
    .catch Ljava/net/MalformedURLException; {:try_start_5e .. :try_end_77} :catch_79
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_77} :catch_7f

    move-result-object v0

    goto :goto_3a

    :catch_79
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_3a

    :catch_7f
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_3a

    :cond_85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v1, v6, v8

    if-gez v1, :cond_ae

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/bbm/util/b/g;->a:I

    if-gt v0, v1, :cond_ae

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/cl;->a(Ljava/lang/String;)Lcom/bbm/ui/cl;

    move-result-object v0

    if-eqz v0, :cond_ae

    new-instance v2, Lcom/bbm/d/fd;

    invoke-direct {v2, v0}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V

    goto :goto_4b

    :cond_ae
    move-object v0, v2

    :cond_af
    if-eqz v4, :cond_13d

    if-eqz v0, :cond_4b

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_b8
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/Alaska;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_c8
    .catchall {:try_start_b8 .. :try_end_c8} :catchall_12e
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c8} :catch_11b

    move-result-object v3

    :try_start_c9
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ce
    .catchall {:try_start_c9 .. :try_end_ce} :catchall_184
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_ce} :catch_18d

    :try_start_ce
    invoke-static {v6, v4}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget v5, p0, Lcom/bbm/util/b/g;->h:I

    iget v7, p0, Lcom/bbm/util/b/g;->i:I

    invoke-direct {v1, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    invoke-static {v0, v1, v5}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_10e

    iget-object v0, p0, Lcom/bbm/util/b/g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lcom/bbm/util/b/g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_10e

    new-instance v1, Lcom/bbm/d/fd;

    iget-object v0, p0, Lcom/bbm/util/b/g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_10d
    .catchall {:try_start_ce .. :try_end_10d} :catchall_187
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_10d} :catch_191

    move-object v2, v1

    :cond_10e
    invoke-static {v6}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_4b

    :catch_11b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_11e
    :try_start_11e
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_189

    invoke-static {v6}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_4b

    :catchall_12e
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_131
    invoke-static {v6}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_13c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_13c
    throw v0

    :cond_13d
    :try_start_13d
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget v3, p0, Lcom/bbm/util/b/g;->h:I

    iget v4, p0, Lcom/bbm/util/b/g;->i:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    iget-boolean v4, p0, Lcom/bbm/util/b/i;->j:Z

    invoke-static {v0, v1, v3, v4, p2}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;ZLandroid/widget/ImageView$ScaleType;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-object v0, p0, Lcom/bbm/util/b/g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/bbm/util/b/g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_4b

    new-instance v1, Lcom/bbm/d/fd;

    iget-object v0, p0, Lcom/bbm/util/b/g;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_17b} :catch_17e

    move-object v2, v1

    goto/16 :goto_4b

    :catch_17e
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    :catchall_184
    move-exception v0

    move-object v4, v2

    goto :goto_131

    :catchall_187
    move-exception v0

    goto :goto_131

    :catchall_189
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_131

    :catch_18d
    move-exception v0

    move-object v1, v3

    move-object v3, v2

    goto :goto_11e

    :catch_191
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_11e

    :catch_195
    move-exception v3

    goto/16 :goto_5a

    :catch_198
    move-exception v3

    goto/16 :goto_53
.end method

.method private a(II)V
    .registers 3

    iput p1, p0, Lcom/bbm/util/b/g;->h:I

    iput p2, p0, Lcom/bbm/util/b/g;->i:I

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method


# virtual methods
.method protected a(Ljava/lang/Object;IILandroid/widget/ImageView$ScaleType;)Lcom/bbm/d/fd;
    .registers 6

    iput p2, p0, Lcom/bbm/util/b/g;->h:I

    iput p3, p0, Lcom/bbm/util/b/g;->i:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)Lcom/bbm/d/fd;

    move-result-object v0

    return-object v0
.end method
