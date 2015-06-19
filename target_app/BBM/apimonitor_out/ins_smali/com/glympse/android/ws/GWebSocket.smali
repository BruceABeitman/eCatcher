.class public interface abstract Lcom/glympse/android/ws/GWebSocket;
.super Ljava/lang/Object;
.source "GWebSocket.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract close()V
.end method
.method public abstract open(Ljava/lang/String;Lcom/glympse/android/ws/GWebSocketListener;)V
.end method
.method public abstract send(Ljava/lang/String;)V
.end method
.method public abstract send([B)V
.end method
.method public abstract setDataHandler(Lcom/glympse/android/core/GHandler;)V
.end method
.method public abstract setStateHandler(Lcom/glympse/android/core/GHandler;)V
.end method
.method public abstract validateUtf8(Z)V
.end method