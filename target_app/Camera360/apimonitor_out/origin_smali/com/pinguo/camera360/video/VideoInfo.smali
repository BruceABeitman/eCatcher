.class public Lcom/pinguo/camera360/video/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mCameraModeIndex:I

.field private mEffVideoPath:Ljava/lang/String;

.field private mEftAlias:Ljava/lang/String;

.field private mEftParam:Ljava/lang/String;

.field private mFailCount:I

.field private mLocation:Lcom/pinguo/lib/location/data/PGLocation;

.field private mMakeEffTime:J

.field private mProjectVersion:I

.field private mVideoExif:Ljava/lang/String;

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoHeight:Ljava/lang/String;

.field private mVideoLength:J

.field private mVideoMime:Ljava/lang/String;

.field private mVideoTakenTime:J

.field private mVideoTime:J

.field private mVideoTitle:Ljava/lang/String;

.field private mVideoWidth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoExif:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraModeIndex()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mCameraModeIndex:I

    return v0
.end method

.method public getLocation()Lcom/pinguo/lib/location/data/PGLocation;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;

    return-object v0
.end method

.method public getProjectVersion()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mProjectVersion:I

    return v0
.end method

.method public getVideoExif()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoExif:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoHeight()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoLength:J

    return-wide v0
.end method

.method public getVideoMime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoMime:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTakenTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoTakenTime:J

    return-wide v0
.end method

.method public getVideoTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoTime:J

    return-wide v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoWidth()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoWidth:Ljava/lang/String;

    return-object v0
.end method

.method public setCameraModeIndex(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mCameraModeIndex:I

    return-void
.end method

.method public setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoFileName:Ljava/lang/String;

    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVideoHeight(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoHeight:Ljava/lang/String;

    return-void
.end method

.method public setVideoLength(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoLength:J

    return-void
.end method

.method public setVideoMime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoMime:Ljava/lang/String;

    return-void
.end method

.method public setVideoTakenTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoTakenTime:J

    return-void
.end method

.method public setVideoTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoTime:J

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoWidth(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/VideoInfo;->mVideoWidth:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
