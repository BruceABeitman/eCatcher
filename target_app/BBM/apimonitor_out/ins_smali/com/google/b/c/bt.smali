.class final Lcom/google/b/c/bt;
.super Lcom/google/b/c/a;
.source "MapMakerInternalMap.java"
.field final a:Ljava/lang/Object;
.field  b:Ljava/lang/Object;
.field final synthetic c:Lcom/google/b/c/aa;
.method constructor <init>(Lcom/google/b/c/aa;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/google/b/c/bt;->c:Lcom/google/b/c/aa;
invoke-direct {p0}, Lcom/google/b/c/a;-><init>()V
iput-object p2, p0, Lcom/google/b/c/bt;->a:Ljava/lang/Object;
iput-object p3, p0, Lcom/google/b/c/bt;->b:Ljava/lang/Object;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Ljava/util/Map$Entry;
if-eqz v1, :cond_20
check-cast p1, Ljava/util/Map$Entry;
iget-object v1, p0, Lcom/google/b/c/bt;->a:Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/google/b/c/bt;->b:Ljava/lang/Object;
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
iget-object v0, p0, Lcom/google/b/c/bt;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bt;->b:Ljava/lang/Object;
return-object v0
.end method
.method public final hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/b/c/bt;->a:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/google/b/c/bt;->b:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/b/c/bt;->c:Lcom/google/b/c/aa;
iget-object v1, p0, Lcom/google/b/c/bt;->a:Ljava/lang/Object;
invoke-virtual {v0, v1, p1}, Lcom/google/b/c/aa;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object p1, p0, Lcom/google/b/c/bt;->b:Ljava/lang/Object;
return-object v0
.end method