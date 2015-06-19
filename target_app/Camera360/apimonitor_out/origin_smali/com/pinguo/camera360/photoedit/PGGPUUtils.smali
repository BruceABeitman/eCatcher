.class public final Lcom/pinguo/camera360/photoedit/PGGPUUtils;
.super Ljava/lang/Object;
.source "PGGPUUtils.java"


# static fields
.field private static final DEVIATION:F = 0.0020f

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/photoedit/PGGPUUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUPicFrame(IILcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Ljava/lang/String;
    .registers 12

    const/16 v8, 0x10e

    const/16 v7, 0x5a

    const/4 v4, 0x0

    if-nez p0, :cond_8

    :cond_7
    :goto_7
    return-object v4

    :cond_8
    invoke-static {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v1

    if-ge v3, v1, :cond_20

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v1

    :cond_20
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v2, v5, v6

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_70

    :goto_28
    const v5, 0x3c23d70a

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_7

    invoke-static {v2, v0}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->isEqual(FF)Z

    move-result v5

    if-nez v5, :cond_7

    packed-switch p0, :pswitch_data_7c

    goto :goto_7

    :pswitch_39
    if-eq p1, v7, :cond_3d

    if-ne p1, v8, :cond_4f

    :cond_3d
    const-string/jumbo v4, ";cutratio=9,16"

    goto :goto_7

    :pswitch_41
    const v0, 0x3fe38e39

    goto :goto_28

    :pswitch_45
    const v0, 0x3faaaaab

    goto :goto_28

    :pswitch_49
    const/high16 v0, 0x3fc0

    goto :goto_28

    :pswitch_4c
    const/high16 v0, 0x3f80

    goto :goto_28

    :cond_4f
    const-string/jumbo v4, ";cutratio=16,9"

    goto :goto_7

    :pswitch_53
    const-string/jumbo v4, ";cutratio=1,1"

    goto :goto_7

    :pswitch_57
    if-eq p1, v7, :cond_5b

    if-ne p1, v8, :cond_5f

    :cond_5b
    const-string/jumbo v4, ";cutratio=2,3"

    goto :goto_7

    :cond_5f
    const-string/jumbo v4, ";cutratio=3,2"

    goto :goto_7

    :pswitch_63
    if-eq p1, v7, :cond_67

    if-ne p1, v8, :cond_6b

    :cond_67
    const-string/jumbo v4, ";cutratio=3,4"

    goto :goto_7

    :cond_6b
    const-string/jumbo v4, ";cutratio=4,3"

    goto :goto_7

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_41
        :pswitch_45
        :pswitch_49
        :pswitch_4c
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_63
        :pswitch_57
        :pswitch_53
    .end packed-switch
.end method

.method public static getCpuPicFramef(IILcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)F
    .registers 10

    const/4 v4, 0x0

    if-nez p0, :cond_5

    move v0, v4

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-static {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v1

    if-ge v3, v1, :cond_1d

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v1

    :cond_1d
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v2, v5, v6

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_54

    :goto_25
    const v5, 0x3c23d70a

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3c

    move v0, v4

    goto :goto_4

    :pswitch_2e
    const v0, 0x3fe38e39

    goto :goto_25

    :pswitch_32
    const v0, 0x3faaaaab

    goto :goto_25

    :pswitch_36
    const/high16 v0, 0x3fc0

    goto :goto_25

    :pswitch_39
    const/high16 v0, 0x3f80

    goto :goto_25

    :cond_3c
    invoke-static {v2, v0}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->isEqual(FF)Z

    move-result v5

    if-eqz v5, :cond_44

    move v0, v4

    goto :goto_4

    :cond_44
    const/16 v4, 0x5a

    if-eq p1, v4, :cond_4c

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_4

    :cond_4c
    const/high16 v4, 0x3f80

    div-float v0, v4, v0

    goto :goto_4

    :cond_51
    move v0, v4

    goto :goto_4

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method

.method protected static getPictureFrameRect(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;II)Lus/pinguo/androidsdk/PGRect;
    .registers 16

    const/high16 v12, 0x4000

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    invoke-static {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z

    move-result v9

    if-nez v9, :cond_d

    :cond_c
    :goto_c
    return-object v8

    :cond_d
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v9

    int-to-float v0, v9

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v9

    int-to-float v1, v9

    cmpg-float v9, v0, v1

    if-gez v9, :cond_27

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v9

    int-to-float v0, v9

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v9

    int-to-float v1, v9

    :cond_27
    div-float v2, v0, v1

    const/high16 v4, 0x3f80

    packed-switch p1, :pswitch_data_7c

    goto :goto_c

    :pswitch_2f
    const v4, 0x3fe38e39

    :goto_32
    invoke-static {v2, v4}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->isEqual(FF)Z

    move-result v9

    if-nez v9, :cond_c

    cmpl-float v8, v2, v4

    if-lez v8, :cond_62

    div-float v3, v10, v2

    div-float v5, v10, v4

    sub-float v8, v5, v3

    div-float v6, v8, v12

    rem-int/lit16 v8, p2, 0xb4

    if-nez v8, :cond_5a

    new-instance v8, Lus/pinguo/androidsdk/PGRect;

    sub-float v9, v10, v6

    invoke-direct {v8, v6, v11, v9, v10}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V

    goto :goto_c

    :pswitch_50
    const v4, 0x3faaaaab

    goto :goto_32

    :pswitch_54
    const/high16 v4, 0x3fc0

    goto :goto_32

    :pswitch_57
    const/high16 v4, 0x3f80

    goto :goto_32

    :cond_5a
    new-instance v8, Lus/pinguo/androidsdk/PGRect;

    sub-float v9, v10, v6

    invoke-direct {v8, v11, v6, v10, v9}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V

    goto :goto_c

    :cond_62
    div-float v8, v2, v4

    sub-float v8, v10, v8

    div-float v7, v8, v12

    rem-int/lit16 v8, p2, 0xb4

    if-nez v8, :cond_74

    new-instance v8, Lus/pinguo/androidsdk/PGRect;

    sub-float v9, v10, v7

    invoke-direct {v8, v11, v7, v10, v9}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V

    goto :goto_c

    :cond_74
    new-instance v8, Lus/pinguo/androidsdk/PGRect;

    sub-float v9, v10, v7

    invoke-direct {v8, v7, v11, v9, v10}, Lus/pinguo/androidsdk/PGRect;-><init>(FFFF)V

    goto :goto_c

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_50
        :pswitch_54
        :pswitch_57
    .end packed-switch
.end method

.method public static isEqual(FF)Z
    .registers 4

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3b03126f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected static writeExifInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLjava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B

    move-result-object v3

    if-nez v3, :cond_f

    if-eqz p1, :cond_2a

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V

    :cond_f
    :goto_f
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/pinguo/lib/image/Exif;->getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B

    move-result-object v1

    :try_start_14
    invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v1}, Lcom/pinguo/lib/image/Exif;->exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_52
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_36

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/lib/image/Exif;->getExifData(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V

    goto :goto_f

    :catch_36
    move-exception v0

    :try_start_37
    sget-object v3, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_52

    :try_start_3c
    invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_52
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_62

    :goto_43
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_29

    :catchall_52
    move-exception v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_61
    throw v3

    :catch_62
    move-exception v3

    goto :goto_43
.end method
