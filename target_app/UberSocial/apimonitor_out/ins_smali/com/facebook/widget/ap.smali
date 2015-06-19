.class  Lcom/facebook/widget/ap;
.super Lcom/facebook/widget/ao;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/widget/af;
.field private c:Ljava/lang/String;
.method constructor <init>(Lcom/facebook/widget/af;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/ap;->a:Lcom/facebook/widget/af;
invoke-direct {p0, p1}, Lcom/facebook/widget/ao;-><init>(Lcom/facebook/widget/af;)V
return-void
.end method
.method public a()Ljava/util/Collection;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
iget-object v2, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method  a(Landroid/os/Bundle;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_d
return-void
.end method
.method  a(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
if-eqz v0, :cond_10
if-eqz p1, :cond_10
iget-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public b()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
return-void
.end method
.method  b(Landroid/os/Bundle;Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_8
invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
:cond_8
return-void
.end method
.method  b(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
:goto_f
return-void
:cond_10
iput-object p1, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
goto :goto_f
.end method
.method  c()Z
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ap;->c:Ljava/lang/String;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method  d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method