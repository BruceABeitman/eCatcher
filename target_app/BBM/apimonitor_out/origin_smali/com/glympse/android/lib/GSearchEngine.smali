.class public interface abstract Lcom/glympse/android/lib/GSearchEngine;
.super Ljava/lang/Object;
.source "GSearchEngine.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract cancel(Lcom/glympse/android/core/GCommon;)V
.end method

.method public abstract completed(Lcom/glympse/android/core/GCommon;Lcom/glympse/android/core/GArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GCommon;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GSearchResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Lcom/glympse/android/core/GLatLng;)Lcom/glympse/android/core/GCommon;
.end method

.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method

.method public abstract stop()V
.end method
