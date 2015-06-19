.class public interface abstract Lcom/lenovo/channel/base/IShareReceiveListener;
.super Ljava/lang/Object;
.source "IShareReceiveListener.java"


# virtual methods
.method public abstract onProgress(Lcom/lenovo/channel/base/ShareRecord;JJ)V
.end method

.method public abstract onReceived(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResult(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;Z)V
.end method
