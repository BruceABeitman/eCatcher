.class public interface abstract Lcom/glympse/android/api/GEventSink;
.super Ljava/lang/Object;
.source "GEventSink.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# virtual methods
.method public abstract addListener(Lcom/glympse/android/api/GEventListener;)Z
.end method

.method public abstract associateContext(JLjava/lang/Object;)V
.end method

.method public abstract clearContext(J)V
.end method

.method public abstract deriveContext(Lcom/glympse/android/api/GEventSink;)V
.end method

.method public abstract getContext(J)Ljava/lang/Object;
.end method

.method public abstract getContextKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListeners()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasContext(J)Z
.end method

.method public abstract removeListener(Lcom/glympse/android/api/GEventListener;)Z
.end method
