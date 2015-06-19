.class public interface abstract Lcom/pinguo/camera360/cloud/controller/UploadController$UploadFunction;
.super Ljava/lang/Object;
.source "UploadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/controller/UploadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadFunction"
.end annotation


# virtual methods
.method public abstract uploadAlbum()V
.end method

.method public abstract uploadAllFailed(Ljava/lang/String;)V
.end method

.method public abstract uploadAllStart(I)V
.end method

.method public abstract uploadAllSuccess()V
.end method

.method public abstract uploadBattyError()V
.end method

.method public abstract uploadCancel(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
.end method

.method public abstract uploadDisableServer()V
.end method

.method public abstract uploadError(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
.end method

.method public abstract uploadFailForSdcard()V
.end method

.method public abstract uploadNetError()V
.end method

.method public abstract uploadProgress(Ljava/lang/String;II)V
.end method

.method public abstract uploadStart(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
.end method

.method public abstract uploadStop(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
.end method

.method public abstract uploadTimeOut()V
.end method

.method public abstract uploadUserUnavailable()V
.end method

.method public abstract uploading(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)V
.end method
