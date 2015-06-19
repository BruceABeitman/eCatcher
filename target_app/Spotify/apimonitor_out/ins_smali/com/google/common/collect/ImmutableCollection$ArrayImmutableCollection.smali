.class  Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"
.field private final elements:[Ljava/lang/Object;
.method constructor <init>([Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V
iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;
return-void
.end method
.method final a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final b()Lcom/google/common/collect/aq;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;
invoke-static {v0}, Lcom/google/common/collect/i;->a([Ljava/lang/Object;)Lcom/google/common/collect/aq;
move-result-object v0
return-object v0
.end method
.method final f()Lcom/google/common/collect/ImmutableList;
.registers 4
iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;
array-length v0, v0
const/4 v1, 0x1
if-ne v0, v1, :cond_11
new-instance v0, Lcom/google/common/collect/SingletonImmutableList;
iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V
:goto_10
return-object v0
:cond_11
new-instance v0, Lcom/google/common/collect/RegularImmutableList;
iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;
invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V
goto :goto_10
.end method
.method public isEmpty()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public synthetic iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;
invoke-static {v0}, Lcom/google/common/collect/i;->a([Ljava/lang/Object;)Lcom/google/common/collect/aq;
move-result-object v0
return-object v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;->elements:[Ljava/lang/Object;
array-length v0, v0
return v0
.end method