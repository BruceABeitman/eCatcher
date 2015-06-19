.class public Lcom/pinguo/camera360/camera/event/OnPictureSavedEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "OnPictureSavedEvent.java"
.field private mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field private mSucceed:Z
.method public constructor <init>(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.registers 3
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/camera/event/OnPictureSavedEvent;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-boolean p2, p0, Lcom/pinguo/camera360/camera/event/OnPictureSavedEvent;->mSucceed:Z
return-void
.end method
.method public getPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/OnPictureSavedEvent;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-object v0
.end method
.method public isSaveSucceed()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/event/OnPictureSavedEvent;->mSucceed:Z
return v0
.end method