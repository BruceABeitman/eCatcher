.class public interface abstract Lcom/glympse/android/rpc/GRpcComponent;
.super Ljava/lang/Object;
.source "GRpcComponent.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract attachGateway(Lcom/glympse/android/rpc/GMessageGateway;)V
.end method

.method public abstract connected(Lcom/glympse/android/rpc/GConnection;)V
.end method

.method public abstract dataReceived(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;)V
.end method

.method public abstract disconnected(Lcom/glympse/android/rpc/GConnection;)V
.end method

.method public abstract getConnection(Ljava/lang/String;)Lcom/glympse/android/rpc/GConnection;
.end method

.method public abstract getObjectCache(Lcom/glympse/android/rpc/GConnection;)Lcom/glympse/android/lib/GMemoryCache;
.end method

.method public abstract invoke(Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/rpc/GConnection;",
            "Ljava/lang/String;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract invoke(Ljava/lang/String;Lcom/glympse/android/core/GArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract peerUnavailable()V
.end method

.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract stop()V
.end method
