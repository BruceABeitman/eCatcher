.class public interface abstract Lcom/lenovo/channel/base/IShareSendListener;
.super Ljava/lang/Object;
.source "IShareSendListener.java"


# virtual methods
.method public abstract onProgress(Lcom/lenovo/channel/base/ShareRecord;JJ)V
.end method

.method public abstract onResult(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
.end method

.method public abstract onSent(Ljava/util/Collection;)V
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

.method public abstract onStarted(Lcom/lenovo/channel/base/ShareRecord;J)V
.end method
