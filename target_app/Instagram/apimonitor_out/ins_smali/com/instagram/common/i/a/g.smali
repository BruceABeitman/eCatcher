.class final Lcom/instagram/common/i/a/g;
.super Lcom/instagram/common/i/a/e;
.source "Present.java"
.field private final a:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/common/i/a/e;-><init>()V
iput-object p1, p0, Lcom/instagram/common/i/a/g;->a:Ljava/lang/Object;
return-void
.end method
.method public final a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final b()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/instagram/common/i/a/g;->a:Ljava/lang/Object;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/instagram/common/i/a/g;
if-eqz v0, :cond_f
check-cast p1, Lcom/instagram/common/i/a/g;
iget-object v0, p0, Lcom/instagram/common/i/a/g;->a:Ljava/lang/Object;
iget-object v1, p1, Lcom/instagram/common/i/a/g;->a:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public final hashCode()I
.registers 3
const v0, 0x598df91c
iget-object v1, p0, Lcom/instagram/common/i/a/g;->a:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Optional.of("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/common/i/a/g;->a:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method