.class public interface abstract Lcom/glympse/android/ws/GWebSocketListener;
.super Ljava/lang/Object;
.source "GWebSocketListener.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract connected(Lcom/glympse/android/ws/GWebSocket;)V
.end method
.method public abstract disconnected(Lcom/glympse/android/ws/GWebSocket;)V
.end method
.method public abstract failed(Lcom/glympse/android/ws/GWebSocket;I)V
.end method
.method public abstract messageReceived(Lcom/glympse/android/ws/GWebSocket;Ljava/lang/String;)V
.end method
.method public abstract messageReceived(Lcom/glympse/android/ws/GWebSocket;[B)V
.end method