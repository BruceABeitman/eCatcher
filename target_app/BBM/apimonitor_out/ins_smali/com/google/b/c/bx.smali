.class final Lcom/google/b/c/bx;
.super Lcom/google/b/c/bv;
.source "ReverseOrdering.java"
.implements Ljava/io/Serializable;
.field final a:Lcom/google/b/c/bv;
.method constructor <init>(Lcom/google/b/c/bv;)V
.registers 3
invoke-direct {p0}, Lcom/google/b/c/bv;-><init>()V
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/bv;
iput-object v0, p0, Lcom/google/b/c/bx;->a:Lcom/google/b/c/bv;
return-void
.end method
.method public final a()Lcom/google/b/c/bv;
.registers 2
iget-object v0, p0, Lcom/google/b/c/bx;->a:Lcom/google/b/c/bv;
return-object v0
.end method
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
iget-object v0, p0, Lcom/google/b/c/bx;->a:Lcom/google/b/c/bv;
invoke-virtual {v0, p2, p1}, Lcom/google/b/c/bv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Lcom/google/b/c/bx;
if-eqz v0, :cond_13
check-cast p1, Lcom/google/b/c/bx;
iget-object v0, p0, Lcom/google/b/c/bx;->a:Lcom/google/b/c/bv;
iget-object v1, p1, Lcom/google/b/c/bx;->a:Lcom/google/b/c/bv;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
:cond_13
const/4 v0, 0x0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/b/c/bx;->a:Lcom/google/b/c/bv;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
neg-int v0, v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/google/b/c/bx;->a:Lcom/google/b/c/bv;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".reverse()"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method