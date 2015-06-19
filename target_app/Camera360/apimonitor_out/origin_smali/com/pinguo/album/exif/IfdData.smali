.class Lcom/pinguo/album/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/pinguo/album/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v3, v0, v3

    aput v4, v0, v4

    sput-object v0, Lcom/pinguo/album/exif/IfdData;->sIfds:[I

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/exif/IfdData;->mOffsetToNextIfd:I

    iput p1, p0, Lcom/pinguo/album/exif/IfdData;->mIfdId:I

    return-void
.end method

.method protected static getIfds()[I
    .registers 1

    sget-object v0, Lcom/pinguo/album/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method protected checkCollision(S)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v4

    :cond_5
    if-nez p1, :cond_9

    move v4, v5

    goto :goto_4

    :cond_9
    instance-of v6, p1, Lcom/pinguo/album/exif/IfdData;

    if-eqz v6, :cond_51

    move-object v0, p1

    check-cast v0, Lcom/pinguo/album/exif/IfdData;

    invoke-virtual {v0}, Lcom/pinguo/album/exif/IfdData;->getId()I

    move-result v6

    iget v7, p0, Lcom/pinguo/album/exif/IfdData;->mIfdId:I

    if-ne v6, v7, :cond_51

    invoke-virtual {v0}, Lcom/pinguo/album/exif/IfdData;->getTagCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/pinguo/album/exif/IfdData;->getTagCount()I

    move-result v7

    if-ne v6, v7, :cond_51

    invoke-virtual {v0}, Lcom/pinguo/album/exif/IfdData;->getAllTags()[Lcom/pinguo/album/exif/ExifTag;

    move-result-object v3

    array-length v7, v3

    move v6, v5

    :goto_28
    if-ge v6, v7, :cond_4

    aget-object v1, v3, v6

    invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S

    move-result v8

    invoke-static {v8}, Lcom/pinguo/album/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v8

    if-eqz v8, :cond_39

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_39
    iget-object v8, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/album/exif/ExifTag;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    move v4, v5

    goto :goto_4

    :cond_51
    move v4, v5

    goto :goto_4
.end method

.method protected getAllTags()[Lcom/pinguo/album/exif/ExifTag;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/pinguo/album/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pinguo/album/exif/ExifTag;

    return-object v0
.end method

.method protected getId()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/exif/IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/pinguo/album/exif/ExifTag;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/exif/IfdData;->mOffsetToNextIfd:I

    return-void
.end method

.method protected setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
    .registers 4

    iget v0, p0, Lcom/pinguo/album/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/ExifTag;->setIfd(I)V

    iget-object v0, p0, Lcom/pinguo/album/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/exif/ExifTag;

    return-object v0
.end method
