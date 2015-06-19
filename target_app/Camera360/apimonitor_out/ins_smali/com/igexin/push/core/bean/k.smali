.class public Lcom/igexin/push/core/bean/k;
.super Lcom/igexin/push/core/bean/BaseAction;
.field private a:Ljava/lang/String;
.field private b:Z
.field private c:Z
.field private d:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/k;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/k;->a:Ljava/lang/String;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/k;->b:Z
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/core/bean/k;->d:Ljava/lang/String;
return-object v0
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/bean/k;->d:Ljava/lang/String;
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/igexin/push/core/bean/k;->c:Z
return-void
.end method
.method public c()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/igexin/push/core/bean/k;->a:Ljava/lang/String;
iget-boolean v1, p0, Lcom/igexin/push/core/bean/k;->b:Z
if-eqz v1, :cond_29
const-string/jumbo v1, "?"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-lez v1, :cond_59
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "&cid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_29
:goto_29
iget-boolean v1, p0, Lcom/igexin/push/core/bean/k;->c:Z
if-eqz v1, :cond_58
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->k()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_58
const-string/jumbo v2, "?"
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-lez v2, :cond_74
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "&nettype="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_58
:goto_58
return-object v0
:cond_59
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "?cid="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/g;->u:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_29
:cond_74
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "?nettype="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_58
.end method