.class public Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "ShowIDPhotoFaceDetectEvent.java"


# instance fields
.field private mData:[B

.field private mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[B)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;->mData:[B

    return-void
.end method


# virtual methods
.method public getPictureData()[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;->mData:[B

    return-object v0
.end method

.method public getPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    return-object v0
.end method
