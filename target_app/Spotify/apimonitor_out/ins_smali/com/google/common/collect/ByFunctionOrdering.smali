.class final Lcom/google/common/collect/ByFunctionOrdering;
.super Lcom/google/common/collect/am;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field final function:Lcom/google/common/base/b;
.field final ordering:Lcom/google/common/collect/am;
.method constructor <init>(Lcom/google/common/base/b;Lcom/google/common/collect/am;)V
.registers 4
invoke-direct {p0}, Lcom/google/common/collect/am;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/common/base/b;
iput-object v0, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/b;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/common/collect/am;
iput-object v0, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/am;
return-void
.end method
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
iget-object v0, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/am;
iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/b;
invoke-interface {v1, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/b;
invoke-interface {v2, p2}, Lcom/google/common/base/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/am;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/common/collect/ByFunctionOrdering;
if-eqz v2, :cond_21
check-cast p1, Lcom/google/common/collect/ByFunctionOrdering;
iget-object v2, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/b;
iget-object v3, p1, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/b;
invoke-interface {v2, v3}, Lcom/google/common/base/b;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
iget-object v2, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/am;
iget-object v3, p1, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/am;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_1f
move v0, v1
goto :goto_4
:cond_21
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/b;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/am;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->ordering:Lcom/google/common/collect/am;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".onResultOf("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/common/collect/ByFunctionOrdering;->function:Lcom/google/common/base/b;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method