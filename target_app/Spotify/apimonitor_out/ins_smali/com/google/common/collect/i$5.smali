.class final Lcom/google/common/collect/i$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final hasNext()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final next()Ljava/lang/Object;
.registers 2
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
.end method
.method public final remove()V
.registers 2
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method