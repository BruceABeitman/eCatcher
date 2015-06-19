.class public interface abstract Lcom/glympse/android/core/GProximityProvider;
.super Ljava/lang/Object;
.source "GProximityProvider.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract detachRegions()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/core/GRegion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract locationChanged(Lcom/glympse/android/core/GLocation;)V
.end method

.method public abstract setProximityListener(Lcom/glympse/android/core/GProximityListener;)V
.end method

.method public abstract startMonitoring(Lcom/glympse/android/core/GArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/core/GRegion;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startMonitoring(Lcom/glympse/android/core/GRegion;)V
.end method

.method public abstract stopMonitoring(Lcom/glympse/android/core/GRegion;)V
.end method
