.class public Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "ShowPicturePreviewEvent.java"


# instance fields
.field private mCanReplaceEffect:Z

.field private mData:[B

.field private mNeedShowPreview:Z

.field private mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[BZZ)V
    .registers 5

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mData:[B

    iput-boolean p3, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mNeedShowPreview:Z

    iput-boolean p4, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mCanReplaceEffect:Z

    return-void
.end method


# virtual methods
.method public canChangeEffect()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mCanReplaceEffect:Z

    return v0
.end method

.method public getPictureData()[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mData:[B

    return-object v0
.end method

.method public getPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    return-object v0
.end method

.method public needShowPreview()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->mNeedShowPreview:Z

    return v0
.end method
