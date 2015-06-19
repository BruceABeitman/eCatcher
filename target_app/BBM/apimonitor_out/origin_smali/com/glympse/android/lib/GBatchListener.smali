.class public interface abstract Lcom/glympse/android/lib/GBatchListener;
.super Ljava/lang/Object;
.source "GBatchListener.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract batchCompleted(Lcom/glympse/android/hal/GVector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract batchFailed(Lcom/glympse/android/hal/GVector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sessionFailed(Ljava/lang/String;)V
.end method
