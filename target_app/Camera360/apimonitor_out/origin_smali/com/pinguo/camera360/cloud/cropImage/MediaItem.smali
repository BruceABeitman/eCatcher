.class public final Lcom/pinguo/camera360/cloud/cropImage/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field private static final VIDEO:Ljava/lang/String; = "video/"


# instance fields
.field public mCaption:Ljava/lang/String;

.field public mContentUri:Ljava/lang/String;

.field public mDateAddedInSec:J

.field public mDateModifiedInSec:J

.field public mDateTakenInMs:J

.field private mDisplayMimeType:Ljava/lang/String;

.field public mDurationInSec:I

.field public mFilePath:Ljava/lang/String;

.field public mId:J

.field public mLatitude:D

.field public mLongitude:D

.field private mMediaType:I

.field public mMimeType:Ljava/lang/String;

.field public mRotation:F


# direct methods
.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mMediaType:I

    iput-wide v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateTakenInMs:J

    iput-wide v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateModifiedInSec:J

    iput-wide v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateAddedInSec:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mCaption:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMediaType()I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mMediaType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_15
    iput v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mMediaType:I

    :cond_17
    iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mMediaType:I

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isLatLongValid()Z
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mCaption:Ljava/lang/String;

    return-object v0
.end method
