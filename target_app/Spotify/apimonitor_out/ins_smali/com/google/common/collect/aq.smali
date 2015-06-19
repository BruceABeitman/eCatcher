.class public abstract Lcom/google/common/collect/aq;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method