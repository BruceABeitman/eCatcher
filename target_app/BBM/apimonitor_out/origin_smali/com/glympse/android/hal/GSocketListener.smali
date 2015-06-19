.class public interface abstract Lcom/glympse/android/hal/GSocketListener;
.super Ljava/lang/Object;
.source "GSocketListener.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract connected(Lcom/glympse/android/hal/GSocket;)V
.end method

.method public abstract disconnected(Lcom/glympse/android/hal/GSocket;)V
.end method

.method public abstract failed(Lcom/glympse/android/hal/GSocket;)V
.end method

.method public abstract messageReceived(Lcom/glympse/android/hal/GSocket;[BI)V
.end method
