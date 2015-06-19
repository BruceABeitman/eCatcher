.class public final Lcom/ubermedia/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x2

.field private static final b:I = 0x0

.field private static final c:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, p1, :cond_c

    if-le v2, p1, :cond_22

    :cond_c
    if-le v2, v1, :cond_19

    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_1b

    mul-int v0, p1, v1

    div-int/2addr v0, v2

    :goto_14
    invoke-static {p0, v0, p1}, Lcom/ubermedia/b/l;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_f

    :cond_1b
    mul-int v0, p1, v2

    div-int/2addr v0, v1

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_14

    :cond_22
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_c

    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, p1, p2}, Lcom/ubermedia/b/l;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_16

    move-result-object v0

    goto :goto_b

    :catch_11
    move-exception v1

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_b

    :catch_16
    move-exception v1

    goto :goto_b
.end method

.method private static a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 16

    const/high16 v10, 0x3f80

    const v9, 0x3f666666

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_73

    move v2, v6

    :goto_d
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_75

    move v7, v6

    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p3

    if-nez v2, :cond_77

    if-ltz v3, :cond_22

    if-gez v4, :cond_77

    :cond_22
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {p3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v1

    invoke-direct {v4, v3, v1, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v3, v3, 0x2

    new-instance v6, Landroid/graphics/Rect;

    sub-int v8, p2, v1

    sub-int v9, p3, v3

    invoke-direct {v6, v1, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p1, v4, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_71

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_71
    move-object v0, v2

    :cond_72
    :goto_72
    return-object v0

    :cond_73
    move v2, v1

    goto :goto_d

    :cond_75
    move v7, v1

    goto :goto_12

    :cond_77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v3

    int-to-float v5, p2

    int-to-float v8, p3

    div-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d6

    int-to-float v2, p3

    div-float/2addr v2, v3

    cmpg-float v3, v2, v9

    if-ltz v3, :cond_94

    cmpl-float v3, v2, v10

    if-lez v3, :cond_d4

    :cond_94
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_97
    move-object v5, p0

    :goto_98
    if-eqz v5, :cond_e8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_a9
    if-eqz v7, :cond_b0

    if-eq v2, p1, :cond_b0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v0, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_72

    if-nez v7, :cond_d0

    if-eq v2, p1, :cond_72

    :cond_d0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_72

    :cond_d4
    move-object p0, v0

    goto :goto_97

    :cond_d6
    int-to-float v3, p2

    div-float v2, v3, v2

    cmpg-float v3, v2, v9

    if-ltz v3, :cond_e1

    cmpl-float v3, v2, v10

    if-lez v3, :cond_e6

    :cond_e1
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    goto :goto_98

    :cond_e6
    move-object v5, v0

    goto :goto_98

    :cond_e8
    move-object v2, p1

    goto :goto_a9
.end method

.method private static b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_23

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_15
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v0, 0x1

    invoke-static {v1, p0, p1, p2, v0}, Lcom/ubermedia/b/l;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_23
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_15
.end method
