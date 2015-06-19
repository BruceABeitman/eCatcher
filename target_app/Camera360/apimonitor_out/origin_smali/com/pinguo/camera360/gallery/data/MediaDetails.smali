.class public Lcom/pinguo/camera360/gallery/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INDEX_APERTURE:I = 0x69

.field public static final INDEX_DATETIME:I = 0x3

.field public static final INDEX_DESCRIPTION:I = 0x2

.field public static final INDEX_DURATION:I = 0x8

.field public static final INDEX_EXPOSURE_TIME:I = 0x6b

.field public static final INDEX_FLASH:I = 0x66

.field public static final INDEX_FOCAL_LENGTH:I = 0x67

.field public static final INDEX_HEIGHT:I = 0x6

.field public static final INDEX_ISO:I = 0x6c

.field public static final INDEX_LOCATION:I = 0x4

.field public static final INDEX_MAKE:I = 0x64

.field public static final INDEX_MIMETYPE:I = 0x9

.field public static final INDEX_MODEL:I = 0x65

.field public static final INDEX_ORIENTATION:I = 0x7

.field public static final INDEX_PATH:I = 0xc8

.field public static final INDEX_SHUTTER_SPEED:I = 0x6a

.field public static final INDEX_SIZE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WHITE_BALANCE:I = 0x68

.field public static final INDEX_WIDTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaDetails"


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    return-void
.end method

.method public static extractExifInfo(Lcom/pinguo/camera360/gallery/data/MediaDetails;Ljava/lang/String;)V
    .registers 11

    const-wide/16 v7, 0x0

    :try_start_2
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "Flash"

    const/16 v5, 0x66

    invoke-static {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->setExifData(Lcom/pinguo/camera360/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    const-string/jumbo v4, "ImageWidth"

    const/4 v5, 0x5

    invoke-static {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->setExifData(Lcom/pinguo/camera360/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    const-string/jumbo v4, "ImageLength"

    const/4 v5, 0x6

    invoke-static {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->setExifData(Lcom/pinguo/camera360/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    const-string/jumbo v4, "Make"

    const/16 v5, 0x64

    invoke-static {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->setExifData(Lcom/pinguo/camera360/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    const-string/jumbo v4, "Model"

    const/16 v5, 0x65

    invoke-static {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->setExifData(Lcom/pinguo/camera360/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    const-string/jumbo v4, "WhiteBalance"

    const/16 v5, 0x68

    invoke-static {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->setExifData(Lcom/pinguo/camera360/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    const-string/jumbo v4, "FocalLength"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    cmpl-double v4, v0, v7

    if-eqz v4, :cond_53

    const/16 v4, 0x67

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v4, 0x67

    const v5, 0x7f08009c

    invoke-virtual {p0, v4, v5}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->setUnit(II)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception v2

    const-string/jumbo v4, "MediaDetails"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private static setExifData(Lcom/pinguo/camera360/gallery/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/16 v2, 0x66

    if-ne p3, v2, :cond_1f

    new-instance v0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;-><init>(I)V

    invoke-virtual {p0, p3, v0}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0, p3, v1}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1e
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
