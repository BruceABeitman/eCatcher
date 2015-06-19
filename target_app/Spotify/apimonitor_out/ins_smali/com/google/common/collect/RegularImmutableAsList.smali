.class  Lcom/google/common/collect/RegularImmutableAsList;
.super Lcom/google/common/collect/ImmutableAsList;
.source "SourceFile"
.field private final delegate:Lcom/google/common/collect/ImmutableCollection;
.field private final delegateList:Lcom/google/common/collect/ImmutableList;
.method private constructor <init>(Lcom/google/common/collect/ImmutableCollection;Lcom/google/common/collect/ImmutableList;)V
.registers 3
invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V
iput-object p1, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegate:Lcom/google/common/collect/ImmutableCollection;
iput-object p2, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
return-void
.end method
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V
.registers 4
invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;Lcom/google/common/collect/ImmutableList;)V
return-void
.end method
.method public final a(I)Lcom/google/common/collect/ar;
.registers 3
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/ar;
move-result-object v0
return-object v0
.end method
.method final d()Lcom/google/common/collect/ImmutableCollection;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegate:Lcom/google/common/collect/ImmutableCollection;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public get(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I
move-result v0
return v0
.end method
.method public indexOf(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public lastIndexOf(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public synthetic listIterator(I)Ljava/util/ListIterator;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableAsList;->a(I)Lcom/google/common/collect/ar;
move-result-object v0
return-object v0
.end method
.method public toArray()[Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->toArray()[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableAsList;->delegateList:Lcom/google/common/collect/ImmutableList;
invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method