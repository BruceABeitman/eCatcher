.class public interface abstract Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
.super Ljava/lang/Object;
.source "INearbyTransferWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NearbyTransferListener"
.end annotation


# virtual methods
.method public abstract onClientStatusChanged(Z)V
.end method

.method public abstract onLocalUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.end method

.method public abstract onRemoteUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.end method

.method public abstract onScanFailed()V
.end method

.method public abstract onScanResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onServerStatusChanged(Z)V
.end method
