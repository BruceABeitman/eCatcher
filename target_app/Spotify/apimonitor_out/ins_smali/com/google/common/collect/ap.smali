.class abstract Lcom/google/common/collect/ap;
.super Lcom/google/common/collect/ao;
.source "SourceFile"
.implements Ljava/util/ListIterator;
.method constructor <init>(Ljava/util/ListIterator;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/common/collect/ao;-><init>(Ljava/util/Iterator;)V
return-void
.end method
.method public add(Ljava/lang/Object;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final hasPrevious()Z
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ap;->b:Ljava/util/Iterator;
invoke-static {v0}, Lcom/google/common/collect/i;->c(Ljava/util/Iterator;)Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z
move-result v0
return v0
.end method
.method public final nextIndex()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ap;->b:Ljava/util/Iterator;
invoke-static {v0}, Lcom/google/common/collect/i;->c(Ljava/util/Iterator;)Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I
move-result v0
return v0
.end method
.method public final previous()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ap;->b:Ljava/util/Iterator;
invoke-static {v0}, Lcom/google/common/collect/i;->c(Ljava/util/Iterator;)Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final previousIndex()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ap;->b:Ljava/util/Iterator;
invoke-static {v0}, Lcom/google/common/collect/i;->c(Ljava/util/Iterator;)Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I
move-result v0
return v0
.end method
.method public set(Ljava/lang/Object;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method