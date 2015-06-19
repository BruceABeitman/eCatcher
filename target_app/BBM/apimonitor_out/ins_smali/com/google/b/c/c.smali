.class public final Lcom/google/b/c/c;
.super Lcom/google/b/c/bv;
.source "ByFunctionOrdering.java"
.implements Ljava/io/Serializable;
.field final a:Lcom/google/b/a/f;
.field final b:Lcom/google/b/c/bv;
.method public constructor <init>(Lcom/google/b/a/f;Lcom/google/b/c/bv;)V
.registers 4
invoke-direct {p0}, Lcom/google/b/c/bv;-><init>()V
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/a/f;
iput-object v0, p0, Lcom/google/b/c/c;->a:Lcom/google/b/a/f;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/bv;
iput-object v0, p0, Lcom/google/b/c/c;->b:Lcom/google/b/c/bv;
return-void
.end method
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
iget-object v0, p0, Lcom/google/b/c/c;->b:Lcom/google/b/c/bv;
iget-object v1, p0, Lcom/google/b/c/c;->a:Lcom/google/b/a/f;
invoke-interface {v1, p1}, Lcom/google/b/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Lcom/google/b/c/c;->a:Lcom/google/b/a/f;
invoke-interface {v2, p2}, Lcom/google/b/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/c/bv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
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
instance-of v2, p1, Lcom/google/b/c/c;
if-eqz v2, :cond_21
check-cast p1, Lcom/google/b/c/c;
iget-object v2, p0, Lcom/google/b/c/c;->a:Lcom/google/b/a/f;
iget-object v3, p1, Lcom/google/b/c/c;->a:Lcom/google/b/a/f;
invoke-interface {v2, v3}, Lcom/google/b/a/f;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
iget-object v2, p0, Lcom/google/b/c/c;->b:Lcom/google/b/c/bv;
iget-object v3, p1, Lcom/google/b/c/c;->b:Lcom/google/b/c/bv;
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
iget-object v2, p0, Lcom/google/b/c/c;->a:Lcom/google/b/a/f;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/google/b/c/c;->b:Lcom/google/b/c/bv;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/google/b/c/c;->b:Lcom/google/b/c/bv;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".onResultOf("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/b/c/c;->a:Lcom/google/b/a/f;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method