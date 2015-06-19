.class public interface abstract Lcom/glympse/android/rpc/GRpcProtocol;
.super Ljava/lang/Object;
.source "GRpcProtocol.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract addMethod(Lcom/glympse/android/rpc/GRpcMethod;)V
.end method
.method public abstract call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
.end method
.method public abstract handle(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Ljava/lang/String;Lcom/glympse/android/core/GArray;)Z
.end method
.method public abstract upgrade(D)Z
.end method