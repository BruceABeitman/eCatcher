.class Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/source/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketId:I

    invoke-static {p2}, Lcom/pinguo/album/utils/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;

    if-nez v2, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;

    iget v2, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/data/source/LocalAlbumSet$BucketEntry;->bucketId:I

    return v0
.end method
