.class public Lcom/pinguo/album/data/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final DEFAULT_JPEG_QUALITY:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field public static final UNCONSTRAINED:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .registers 2

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/pinguo/album/data/utils/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeInitialSampleSize(IIII)I
    .registers 9

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-ne p3, v4, :cond_7

    if-ne p2, v4, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p3, v4, :cond_18

    :goto_9
    if-eq p2, v4, :cond_6

    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6

    :cond_18
    mul-int v2, p0, p1

    div-int/2addr v2, p3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_9
.end method

.method public static computeSampleSize(F)I
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_20

    move v1, v2

    :goto_7
    invoke-static {v1}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V

    const/high16 v1, 0x3f80

    div-float/2addr v1, p0

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_22

    invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_7

    :cond_22
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_1f
.end method

.method public static computeSampleSize(IIII)I
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/pinguo/album/data/utils/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_d

    invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_c
    return v1

    :cond_d
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_c
.end method

.method public static computeSampleSizeLarger(F)I
    .registers 5

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    div-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-gt v0, v1, :cond_d

    :goto_c
    return v1

    :cond_d
    const/16 v1, 0x8

    if-gt v0, v1, :cond_16

    invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_c

    :cond_16
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_c
.end method

.method public static computeSampleSizeLarger(III)I
    .registers 7

    const/4 v1, 0x1

    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    const/16 v1, 0x8

    if-gt v0, v1, :cond_15

    invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_b

    :cond_15
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_b
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_2
    const-string/jumbo v6, "android.media.MediaMetadataRetriever"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v6, "setDataSource"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-gt v6, v7, :cond_51

    const-string/jumbo v6, "captureFrame"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_174
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_3e} :catch_aa
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_3e} :catch_bf
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_3e} :catch_d5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_3e} :catch_f4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_3e} :catch_113
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_3e} :catch_132
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_3e} :catch_153

    if-eqz v4, :cond_50

    :try_start_40
    const-string/jumbo v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_50} :catch_190

    :cond_50
    :goto_50
    return-object v6

    :cond_51
    :try_start_51
    const-string/jumbo v6, "getEmbeddedPicture"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_82

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_174
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_6b} :catch_aa
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_6b} :catch_bf
    .catch Ljava/lang/InstantiationException; {:try_start_51 .. :try_end_6b} :catch_d5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_51 .. :try_end_6b} :catch_f4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_6b} :catch_113
    .catch Ljava/lang/NoSuchMethodException; {:try_start_51 .. :try_end_6b} :catch_132
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_6b} :catch_153

    move-result-object v0

    if-eqz v0, :cond_82

    if-eqz v4, :cond_80

    :try_start_70
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_80} :catch_18d

    :cond_80
    :goto_80
    move-object v6, v0

    goto :goto_50

    :cond_82
    :try_start_82
    const-string/jumbo v6, "getFrameAtTime"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;
    :try_end_95
    .catchall {:try_start_82 .. :try_end_95} :catchall_174
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_95} :catch_aa
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_95} :catch_bf
    .catch Ljava/lang/InstantiationException; {:try_start_82 .. :try_end_95} :catch_d5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_82 .. :try_end_95} :catch_f4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_82 .. :try_end_95} :catch_113
    .catch Ljava/lang/NoSuchMethodException; {:try_start_82 .. :try_end_95} :catch_132
    .catch Ljava/lang/IllegalAccessException; {:try_start_82 .. :try_end_95} :catch_153

    if-eqz v4, :cond_50

    :try_start_97
    const-string/jumbo v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a7} :catch_a8

    goto :goto_50

    :catch_a8
    move-exception v7

    goto :goto_50

    :catch_aa
    move-exception v6

    if-eqz v4, :cond_bd

    :try_start_ad
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_bd} :catch_18a

    :cond_bd
    :goto_bd
    const/4 v6, 0x0

    goto :goto_50

    :catch_bf
    move-exception v6

    if-eqz v4, :cond_bd

    :try_start_c2
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d2} :catch_d3

    goto :goto_bd

    :catch_d3
    move-exception v6

    goto :goto_bd

    :catch_d5
    move-exception v3

    :try_start_d6
    const-string/jumbo v6, "BitmapUtils"

    const-string/jumbo v7, "createVideoThumbnail"

    invoke-static {v6, v7, v3}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_df
    .catchall {:try_start_d6 .. :try_end_df} :catchall_174

    if-eqz v4, :cond_bd

    :try_start_e1
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f1} :catch_f2

    goto :goto_bd

    :catch_f2
    move-exception v6

    goto :goto_bd

    :catch_f4
    move-exception v3

    :try_start_f5
    const-string/jumbo v6, "BitmapUtils"

    const-string/jumbo v7, "createVideoThumbnail"

    invoke-static {v6, v7, v3}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fe
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_174

    if-eqz v4, :cond_bd

    :try_start_100
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_110} :catch_111

    goto :goto_bd

    :catch_111
    move-exception v6

    goto :goto_bd

    :catch_113
    move-exception v3

    :try_start_114
    const-string/jumbo v6, "BitmapUtils"

    const-string/jumbo v7, "createVideoThumbnail"

    invoke-static {v6, v7, v3}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11d
    .catchall {:try_start_114 .. :try_end_11d} :catchall_174

    if-eqz v4, :cond_bd

    :try_start_11f
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_12f} :catch_130

    goto :goto_bd

    :catch_130
    move-exception v6

    goto :goto_bd

    :catch_132
    move-exception v3

    :try_start_133
    const-string/jumbo v6, "BitmapUtils"

    const-string/jumbo v7, "createVideoThumbnail"

    invoke-static {v6, v7, v3}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_174

    if-eqz v4, :cond_bd

    :try_start_13e
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_14e} :catch_150

    goto/16 :goto_bd

    :catch_150
    move-exception v6

    goto/16 :goto_bd

    :catch_153
    move-exception v3

    :try_start_154
    const-string/jumbo v6, "BitmapUtils"

    const-string/jumbo v7, "createVideoThumbnail"

    invoke-static {v6, v7, v3}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15d
    .catchall {:try_start_154 .. :try_end_15d} :catchall_174

    if-eqz v4, :cond_bd

    :try_start_15f
    const-string/jumbo v6, "release"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16f} :catch_171

    goto/16 :goto_bd

    :catch_171
    move-exception v6

    goto/16 :goto_bd

    :catchall_174
    move-exception v6

    if-eqz v4, :cond_187

    :try_start_177
    const-string/jumbo v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_187} :catch_188

    :cond_187
    :goto_187
    throw v6

    :catch_188
    move-exception v7

    goto :goto_187

    :catch_18a
    move-exception v6

    goto/16 :goto_bd

    :catch_18d
    move-exception v6

    goto/16 :goto_80

    :catch_190
    move-exception v7

    goto/16 :goto_50
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_8
    return-object v0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static recycleSilently(Landroid/graphics/Bitmap;)V
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    const-string/jumbo v1, "BitmapUtils"

    const-string/jumbo v2, "unable recycle bitmap"

    invoke-static {v1, v2, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 15

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v6, p1, :cond_10

    if-ne v1, p1, :cond_10

    :goto_f
    return-object p0

    :cond_10
    int-to-float v8, p1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    invoke-static {p0}, Lcom/pinguo/album/data/utils/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v8, p1, v7

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-int v9, p1, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_55

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_55
    move-object p0, v5

    goto :goto_f
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_22

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_22

    :goto_21
    return-object p0

    :cond_22
    invoke-static {p0}, Lcom/pinguo/album/data/utils/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_40

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_40
    move-object p0, v3

    goto :goto_21
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_19

    :goto_18
    return-object p0

    :cond_19
    invoke-static {p0, v0, p2}, Lcom/pinguo/album/data/utils/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_18
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz p2, :cond_21

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_21
    move-object p0, v7

    goto :goto_3
.end method
