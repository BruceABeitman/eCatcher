.class public Lcom/glympse/android/rdbg/RDbgFactory;
.super Ljava/lang/Object;
.source "RDbgFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRemoteDebugger()Lcom/glympse/android/rdbg/GRemoteDebugger;
    .registers 1

    new-instance v0, Lcom/glympse/android/rdbg/k;

    invoke-direct {v0}, Lcom/glympse/android/rdbg/k;-><init>()V

    return-object v0
.end method
