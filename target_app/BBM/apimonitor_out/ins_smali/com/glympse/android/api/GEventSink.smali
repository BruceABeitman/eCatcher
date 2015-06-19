.class public interface abstract Lcom/glympse/android/api/GEventSink;
.super Ljava/lang/Object;
.source "GEventSink.java"
.implements Lcom/glympse/android/api/GEventListener;
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
.end method
.method public abstract getListeners()Lcom/glympse/android/core/GArray;
.end method
.method public abstract hasContext(J)Z
.end method
.method public abstract removeListener(Lcom/glympse/android/api/GEventListener;)Z
.end method