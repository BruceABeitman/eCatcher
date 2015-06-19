.class public interface abstract Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
.super Ljava/lang/Object;
.source "SonyCameraEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChangeListener"
.end annotation


# virtual methods
.method public abstract getPictureStatusIdle()Z
.end method

.method public abstract notifyTakePictureOrientationRest()V
.end method

.method public abstract onApiListModified(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCameraStatusChanged(Ljava/lang/String;)V
.end method

.method public abstract onLiveviewOrientationChanged(I)V
.end method

.method public abstract onLiveviewStatusChanged(Z)V
.end method

.method public abstract onPostViewSizeChanged(Ljava/lang/String;)V
.end method

.method public abstract onShootModeChanged(Ljava/lang/String;)V
.end method

.method public abstract onSonyCameraOpen()V
.end method

.method public abstract onSonyCameraOpenFail(Ljava/io/IOException;)V
.end method

.method public abstract onSonyPicturePostTaken()V
.end method

.method public abstract onSonyPictureTaken([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.end method

.method public abstract onSonyTakePictureFail()V
.end method

.method public abstract onStillSizeChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onZoomPositionChanged(I)V
.end method

.method public abstract updateSonyTopBarView()V
.end method
