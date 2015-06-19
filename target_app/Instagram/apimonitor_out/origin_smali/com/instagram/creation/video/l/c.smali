.class public final Lcom/instagram/creation/video/l/c;
.super Ljava/lang/Object;
.source "ClipInfoUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F

.field private static final d:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_20

    sput-object v0, Lcom/instagram/creation/video/l/c;->a:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_36

    sput-object v0, Lcom/instagram/creation/video/l/c;->b:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/instagram/creation/video/l/c;->c:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_62

    sput-object v0, Lcom/instagram/creation/video/l/c;->d:[F

    return-void

    nop

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_62
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method public static a(Lcom/instagram/creation/b/a/a;)I
    .registers 2

    invoke-static {p0}, Lcom/instagram/creation/video/l/c;->b(Lcom/instagram/creation/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->d()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/camera/h;->b(I)I

    move-result v0

    goto :goto_a
.end method

.method public static a(Ljava/io/File;)I
    .registers 11

    const/16 v9, 0x9

    const/4 v2, 0x2

    const/4 v1, 0x0

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v0, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lcom/coremedia/iso/IsoFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v0

    const-class v3, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    new-array v3, v9, [F

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_24

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()[J

    move-result-object v5

    move v0, v1

    :goto_43
    if-ge v0, v9, :cond_24

    rem-int/lit8 v6, v0, 0x3

    if-ne v6, v2, :cond_55

    aget-wide v6, v5, v0

    long-to-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x4e80

    div-float/2addr v6, v7

    aput v6, v3, v0

    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_55
    aget-wide v6, v5, v0

    long-to-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x4780

    div-float/2addr v6, v7

    aput v6, v3, v0

    goto :goto_52

    :cond_5f
    invoke-static {v3}, Lcom/instagram/creation/video/l/c;->a([F)Z

    move-result v0

    if-eqz v0, :cond_67

    move v0, v1

    :goto_66
    return v0

    :cond_67
    invoke-static {v3}, Lcom/instagram/creation/video/l/c;->b([F)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x3

    goto :goto_66

    :cond_6f
    invoke-static {v3}, Lcom/instagram/creation/video/l/c;->c([F)Z

    move-result v0

    if-eqz v0, :cond_77

    move v0, v2

    goto :goto_66

    :cond_77
    invoke-static {v3}, Lcom/instagram/creation/video/l/c;->d([F)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v0, 0x1

    goto :goto_66

    :cond_7f
    move v0, v1

    goto :goto_66
.end method

.method private static a([F)Z
    .registers 5

    const/4 v3, 0x4

    const/4 v0, 0x0

    aget v1, p0, v0

    sget-object v2, Lcom/instagram/creation/video/l/c;->a:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    aget v1, p0, v3

    sget-object v2, Lcom/instagram/creation/video/l/c;->a:[F

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static b(Lcom/instagram/creation/b/a/a;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static b([F)Z
    .registers 5

    const/4 v3, 0x3

    const/4 v0, 0x1

    aget v1, p0, v0

    sget-object v2, Lcom/instagram/creation/video/l/c;->b:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    aget v1, p0, v3

    sget-object v2, Lcom/instagram/creation/video/l/c;->b:[F

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static c([F)Z
    .registers 5

    const/4 v3, 0x4

    const/4 v0, 0x0

    aget v1, p0, v0

    sget-object v2, Lcom/instagram/creation/video/l/c;->c:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    aget v1, p0, v3

    sget-object v2, Lcom/instagram/creation/video/l/c;->c:[F

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method private static d([F)Z
    .registers 5

    const/4 v3, 0x3

    const/4 v0, 0x1

    aget v1, p0, v0

    sget-object v2, Lcom/instagram/creation/video/l/c;->d:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    aget v1, p0, v3

    sget-object v2, Lcom/instagram/creation/video/l/c;->d:[F

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
