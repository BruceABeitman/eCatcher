.class public abstract Lcom/google/b/c/h;
.super Lcom/google/b/c/f;
.source "ForwardingListIterator.java"
.implements Ljava/util/ListIterator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/b/c/f;-><init>()V
return-void
.end method
.method public abstract a()Ljava/util/ListIterator;
.end method
.method public add(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
return-void
.end method
.method public synthetic b()Ljava/util/Iterator;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
return-object v0
.end method
.method public synthetic c()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
return-object v0
.end method
.method public hasPrevious()Z
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z
move-result v0
return v0
.end method
.method public nextIndex()I
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I
move-result v0
return v0
.end method
.method public previous()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public previousIndex()I
.registers 2
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I
move-result v0
return v0
.end method
.method public set(Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
return-void
.end method