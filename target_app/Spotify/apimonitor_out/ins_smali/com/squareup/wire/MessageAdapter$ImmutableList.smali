.class  Lcom/squareup/wire/MessageAdapter$ImmutableList;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.field private final list:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
return-void
.end method
.method private constructor <init>(Ljava/util/List;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
return-void
.end method
.method static synthetic a(Lcom/squareup/wire/MessageAdapter$ImmutableList;Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public add(ILjava/lang/Object;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public add(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public addAll(ILjava/util/Collection;)Z
.registers 4
.parameter
.end parameter
.parameter
.end parameter
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public addAll(Ljava/util/Collection;)Z
.registers 3
.parameter
.end parameter
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public clear()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public clone()Ljava/lang/Object;
.registers 3
new-instance v0, Lcom/squareup/wire/MessageAdapter$ImmutableList;
iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter$ImmutableList;-><init>(Ljava/util/List;)V
return-object v0
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public containsAll(Ljava/util/Collection;)Z
.registers 3
.parameter
.end parameter
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/squareup/wire/MessageAdapter$ImmutableList;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
check-cast p1, Lcom/squareup/wire/MessageAdapter$ImmutableList;
iget-object v1, p1, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_e
.end method
.method public get(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
return v0
.end method
.method public indexOf(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/squareup/wire/i;
iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-direct {v0, v1}, Lcom/squareup/wire/i;-><init>(Ljava/util/Iterator;)V
return-object v0
.end method
.method public lastIndexOf(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public listIterator()Ljava/util/ListIterator;
.registers 3
new-instance v0, Lcom/squareup/wire/j;
iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
move-result-object v1
invoke-direct {v0, v1}, Lcom/squareup/wire/j;-><init>(Ljava/util/ListIterator;)V
return-object v0
.end method
.method public listIterator(I)Ljava/util/ListIterator;
.registers 4
new-instance v0, Lcom/squareup/wire/j;
iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;
move-result-object v1
invoke-direct {v0, v1}, Lcom/squareup/wire/j;-><init>(Ljava/util/ListIterator;)V
return-object v0
.end method
.method public remove(I)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public removeAll(Ljava/util/Collection;)Z
.registers 3
.parameter
.end parameter
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public retainAll(Ljava/util/Collection;)Z
.registers 3
.parameter
.end parameter
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public set(ILjava/lang/Object;)Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public subList(II)Ljava/util/List;
.registers 5
new-instance v0, Lcom/squareup/wire/MessageAdapter$ImmutableList;
iget-object v1, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter$ImmutableList;-><init>(Ljava/util/List;)V
return-object v0
.end method
.method public toArray()[Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 3
.parameter
.end parameter
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/MessageAdapter$ImmutableList;->list:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method