.class public abstract Lcom/google/b/c/f;
.super Lcom/google/b/c/i;
.source "ForwardingIterator.java"
.implements Ljava/util/Iterator;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/b/c/i;-><init>()V
return-void
.end method
.method public abstract b()Ljava/util/Iterator;
.end method
.method public synthetic c()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/f;->b()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public hasNext()Z
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/f;->b()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
return v0
.end method
.method public next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/f;->b()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public remove()V
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/f;->b()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
return-void
.end method