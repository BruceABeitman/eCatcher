.class final Lcom/google/b/b/bl;
.super Ljava/lang/Object;
.source "LocalCache.java"
.implements Ljava/util/Map$Entry;
.field final a:Ljava/lang/Object;
.field  b:Ljava/lang/Object;
.field final synthetic c:Lcom/google/b/b/n;
.method constructor <init>(Lcom/google/b/b/n;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/google/b/b/bl;->c:Lcom/google/b/b/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/b/b/bl;->a:Ljava/lang/Object;
iput-object p3, p0, Lcom/google/b/b/bl;->b:Ljava/lang/Object;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Ljava/util/Map$Entry;
if-eqz v1, :cond_20
check-cast p1, Ljava/util/Map$Entry;
iget-object v1, p0, Lcom/google/b/b/bl;->a:Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/google/b/b/bl;->b:Ljava/lang/Object;
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
iget-object v0, p0, Lcom/google/b/b/bl;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/b/bl;->b:Ljava/lang/Object;
return-object v0
.end method
.method public final hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/b/b/bl;->a:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/google/b/b/bl;->b:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/google/b/b/bl;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/b/b/bl;->getValue()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method