.class final Lcom/google/common/collect/SingletonImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"
.field final transient a:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
return-void
.end method
.method public final a(II)Lcom/google/common/collect/ImmutableList;
.registers 4
const/4 v0, 0x1
invoke-static {p1, p2, v0}, Lcom/google/common/base/i;->a(III)V
if-ne p1, p2, :cond_8
sget-object p0, Lcom/google/common/collect/EmptyImmutableList;->a:Lcom/google/common/collect/EmptyImmutableList;
:cond_8
return-object p0
.end method
.method final a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final b()Lcom/google/common/collect/aq;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
invoke-static {v0}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;)Lcom/google/common/collect/aq;
move-result-object v0
return-object v0
.end method
.method public final contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Ljava/util/List;
if-eqz v2, :cond_1f
check-cast p1, Ljava/util/List;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
if-ne v2, v0, :cond_1d
iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_1d
move v0, v1
goto :goto_4
:cond_1f
move v0, v1
goto :goto_4
.end method
.method public final get(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x1
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(II)I
iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
add-int/lit8 v0, v0, 0x1f
return v0
.end method
.method public final indexOf(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, -0x1
goto :goto_9
.end method
.method public final isEmpty()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final synthetic iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
invoke-static {v0}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;)Lcom/google/common/collect/aq;
move-result-object v0
return-object v0
.end method
.method public final lastIndexOf(Ljava/lang/Object;)I
.registers 3
invoke-virtual {p0, p1}, Lcom/google/common/collect/SingletonImmutableList;->indexOf(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final size()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final synthetic subList(II)Ljava/util/List;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/SingletonImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;
move-result-object v0
return-object v0
.end method
.method public final toArray()[Ljava/lang/Object;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
aput-object v2, v0, v1
return-object v0
.end method
.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 4
const/4 v1, 0x1
array-length v0, p1
if-nez v0, :cond_e
invoke-static {p1, v1}, Lcom/google/common/collect/al;->a([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object p1
:goto_8
:cond_8
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
aput-object v1, p1, v0
return-object p1
:cond_e
array-length v0, p1
if-le v0, v1, :cond_8
const/4 v0, 0x0
aput-object v0, p1, v1
goto :goto_8
.end method
.method public final toString()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->a:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, 0x2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const/16 v2, 0x5b
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method