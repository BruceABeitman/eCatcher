.class public final Lcom/google/b/b/bz;
.super Ljava/lang/Object;
.source "RemovalNotification.java"
.implements Ljava/util/Map$Entry;
.field private final a:Ljava/lang/Object;
.field private final b:Ljava/lang/Object;
.field private final c:Lcom/google/b/b/bs;
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/b/b/bs;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/b/b/bz;->a:Ljava/lang/Object;
iput-object p2, p0, Lcom/google/b/b/bz;->b:Ljava/lang/Object;
invoke-static {p3}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/bs;
iput-object v0, p0, Lcom/google/b/b/bz;->c:Lcom/google/b/b/bs;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Ljava/util/Map$Entry;
if-eqz v1, :cond_24
check-cast p1, Ljava/util/Map$Entry;
invoke-virtual {p0}, Lcom/google/b/b/bz;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/b/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual {p0}, Lcom/google/b/b/bz;->getValue()Ljava/lang/Object;
move-result-object v1
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/b/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_24
const/4 v0, 0x1
:cond_24
return v0
.end method
.method public final getKey()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/b/bz;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/b/bz;->b:Ljava/lang/Object;
return-object v0
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/google/b/b/bz;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0}, Lcom/google/b/b/bz;->getValue()Ljava/lang/Object;
move-result-object v2
if-nez v1, :cond_10
move v1, v0
:goto_c
if-nez v2, :cond_15
:goto_e
xor-int/2addr v0, v1
return v0
:cond_10
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_c
:cond_15
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_e
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
invoke-virtual {p0}, Lcom/google/b/b/bz;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/b/b/bz;->getValue()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method