.class  Lcom/facebook/widget/ai;
.super Lcom/facebook/widget/ao;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/widget/af;
.field private c:Ljava/util/Set;
.method constructor <init>(Lcom/facebook/widget/af;)V
.registers 3
iput-object p1, p0, Lcom/facebook/widget/ai;->a:Lcom/facebook/widget/af;
invoke-direct {p0, p1}, Lcom/facebook/widget/ao;-><init>(Lcom/facebook/widget/af;)V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
return-void
.end method
.method public a()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
return-object v0
.end method
.method  a(Landroid/os/Bundle;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v0
if-nez v0, :cond_13
const-string v0, ","
iget-object v1, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_13
return-void
.end method
.method  a(Ljava/lang/String;)Z
.registers 3
if-eqz p1, :cond_c
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
return-void
.end method
.method  b(Landroid/os/Bundle;Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_18
invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_18
const-string v1, ","
invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->clear()V
iget-object v1, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
:cond_18
return-void
.end method
.method  b(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_f
.end method
.method  c()Z
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ai;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v0
return v0
.end method
.method  d()Z
.registers 2
const/4 v0, 0x1
return v0
.end method