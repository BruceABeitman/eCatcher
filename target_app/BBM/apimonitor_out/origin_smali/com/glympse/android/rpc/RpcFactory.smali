.class public Lcom/glympse/android/rpc/RpcFactory;
.super Ljava/lang/Object;
.source "RpcFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnection(Ljava/lang/String;J)Lcom/glympse/android/rpc/GConnection;
    .registers 4

    new-instance v0, Lcom/glympse/android/rpc/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/glympse/android/rpc/b;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static createConsumer()Lcom/glympse/android/rpc/GRpcComponent;
    .registers 1

    new-instance v0, Lcom/glympse/android/rpc/ba;

    invoke-direct {v0}, Lcom/glympse/android/rpc/ba;-><init>()V

    return-object v0
.end method

.method public static createProvider()Lcom/glympse/android/rpc/GRpcComponent;
    .registers 1

    new-instance v0, Lcom/glympse/android/rpc/bc;

    invoke-direct {v0}, Lcom/glympse/android/rpc/bc;-><init>()V

    return-object v0
.end method
