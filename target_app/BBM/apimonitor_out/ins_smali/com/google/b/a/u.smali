.class public final Lcom/google/b/a/u;
.super Ljava/lang/Object;
.source "Suppliers.java"
.implements Lcom/google/b/a/s;
.implements Ljava/io/Serializable;
.field final a:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/b/a/u;->a:Ljava/lang/Object;
return-void
.end method
.method public final a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/a/u;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/b/a/u;
if-eqz v0, :cond_f
check-cast p1, Lcom/google/b/a/u;
iget-object v0, p0, Lcom/google/b/a/u;->a:Ljava/lang/Object;
iget-object v1, p1, Lcom/google/b/a/u;->a:Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/google/b/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/b/a/u;->a:Ljava/lang/Object;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Suppliers.ofInstance("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/b/a/u;->a:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method