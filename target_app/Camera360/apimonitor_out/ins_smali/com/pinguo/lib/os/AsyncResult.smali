.class public abstract Lcom/pinguo/lib/os/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract onError(Ljava/lang/Exception;)V
.end method
.method public onProgress(I)V
.registers 2
return-void
.end method
.method public abstract onSuccess(Ljava/lang/Object;)V
.end method