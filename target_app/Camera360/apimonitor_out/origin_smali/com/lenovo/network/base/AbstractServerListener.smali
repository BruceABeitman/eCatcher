.class public abstract Lcom/lenovo/network/base/AbstractServerListener;
.super Ljava/lang/Object;
.source "AbstractServerListener.java"

# interfaces
.implements Lcom/lenovo/network/base/INetworkStatusListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientStatusChanged(Z)V
    .registers 2

    return-void
.end method

.method public onScanFailed()V
    .registers 1

    return-void
.end method

.method public onScanResult(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/network/base/Device;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onServerStatusChanged(Z)V
.end method
