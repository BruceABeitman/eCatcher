.class public interface abstract Lcom/lenovo/network/base/INetworkStatusListener;
.super Ljava/lang/Object;
.source "INetworkStatusListener.java"


# virtual methods
.method public abstract onClientStatusChanged(Z)V
.end method

.method public abstract onScanFailed()V
.end method

.method public abstract onScanResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/network/base/Device;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onServerStatusChanged(Z)V
.end method
