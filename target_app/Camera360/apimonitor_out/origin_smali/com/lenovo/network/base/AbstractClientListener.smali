.class public abstract Lcom/lenovo/network/base/AbstractClientListener;
.super Ljava/lang/Object;
.source "AbstractClientListener.java"

# interfaces
.implements Lcom/lenovo/network/base/INetworkStatusListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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

.method public onServerStatusChanged(Z)V
    .registers 2

    return-void
.end method
