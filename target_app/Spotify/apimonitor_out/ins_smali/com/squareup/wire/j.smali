.class final Lcom/squareup/wire/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/ListIterator;
.field private final a:Ljava/util/ListIterator;
.method public constructor <init>(Ljava/util/ListIterator;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/wire/j;->a:Ljava/util/ListIterator;
return-void
.end method
.method public final add(Ljava/lang/Object;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final hasNext()Z
.registers 2
iget-object v0, p0, Lcom/squareup/wire/j;->a:Ljava/util/ListIterator;
invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z
move-result v0
return v0
.end method
.method public final hasPrevious()Z
.registers 2
iget-object v0, p0, Lcom/squareup/wire/j;->a:Ljava/util/ListIterator;
invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z
move-result v0
return v0
.end method
.method public final next()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/j;->a:Ljava/util/ListIterator;
invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final nextIndex()I
.registers 2
iget-object v0, p0, Lcom/squareup/wire/j;->a:Ljava/util/ListIterator;
invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I
move-result v0
return v0
.end method
.method public final previous()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/j;->a:Ljava/util/ListIterator;
invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final previousIndex()I
.registers 2
iget-object v0, p0, Lcom/squareup/wire/j;->a:Ljava/util/ListIterator;
invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I
move-result v0
return v0
.end method
.method public final remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final set(Ljava/lang/Object;)V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method