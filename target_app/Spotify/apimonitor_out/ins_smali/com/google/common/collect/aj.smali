.class final Lcom/google/common/collect/aj;
.super Lcom/google/common/collect/b;
.source "SourceFile"
.field final a:Ljava/lang/Object;
.field  b:Ljava/lang/Object;
.field final synthetic c:Lcom/google/common/collect/MapMakerInternalMap;
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/MapMakerInternalMap;
invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V
iput-object p2, p0, Lcom/google/common/collect/aj;->a:Ljava/lang/Object;
iput-object p3, p0, Lcom/google/common/collect/aj;->b:Ljava/lang/Object;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Ljava/util/Map$Entry;
if-eqz v1, :cond_20
check-cast p1, Ljava/util/Map$Entry;
iget-object v1, p0, Lcom/google/common/collect/aj;->a:Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/google/common/collect/aj;->b:Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
const/4 v0, 0x1
:cond_20
return v0
.end method
.method public final getKey()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/aj;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/aj;->b:Ljava/lang/Object;
return-object v0
.end method
.method public final hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/common/collect/aj;->a:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/google/common/collect/aj;->b:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/common/collect/aj;->c:Lcom/google/common/collect/MapMakerInternalMap;
iget-object v1, p0, Lcom/google/common/collect/aj;->a:Ljava/lang/Object;
invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object p1, p0, Lcom/google/common/collect/aj;->b:Ljava/lang/Object;
return-object v0
.end method