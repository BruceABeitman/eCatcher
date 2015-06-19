.class final Lcom/bbm/ui/e/ba;
.super Lcom/bbm/j/k;
.source "MessagesDelegateAdapter.java"
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/bbm/ui/e/au;
.method constructor <init>(Lcom/bbm/ui/e/au;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/e/ba;->b:Lcom/bbm/ui/e/au;
iput-object p2, p0, Lcom/bbm/ui/e/ba;->a:Landroid/view/View;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
iget-object v0, p0, Lcom/bbm/ui/e/ba;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/e/bj;
iget-object v1, v0, Lcom/bbm/ui/e/bj;->b:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/ui/e/i;
iget-object v2, p0, Lcom/bbm/ui/e/ba;->b:Lcom/bbm/ui/e/au;
iget-object v3, v1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-boolean v4, v1, Lcom/bbm/ui/e/i;->b:Z
invoke-virtual {v2, v3, v4}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/d/fg;Z)I
move-result v2
iget v3, v0, Lcom/bbm/ui/e/bj;->f:I
if-eq v3, v2, :cond_60
iget-object v1, p0, Lcom/bbm/ui/e/ba;->b:Lcom/bbm/ui/e/au;
invoke-static {v1}, Lcom/bbm/ui/e/au;->i(Lcom/bbm/ui/e/au;)Z
move-result v1
if-eqz v1, :cond_4a
const-string v1, "Incorrect item type found!"
new-array v2, v5, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v1, "MessagesDelegateAdapter"
new-array v2, v6, [Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "===>"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v0, v0, Lcom/bbm/ui/e/bj;->f:I
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v5
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_49
:cond_49
return-void
:cond_4a
iget-boolean v1, v0, Lcom/bbm/ui/e/bj;->g:Z
if-nez v1, :cond_49
iput-boolean v6, v0, Lcom/bbm/ui/e/bj;->g:Z
iget-object v0, p0, Lcom/bbm/ui/e/ba;->b:Lcom/bbm/ui/e/au;
iget-boolean v1, v0, Lcom/bbm/ui/e/au;->m:Z
if-nez v1, :cond_49
iput-boolean v6, v0, Lcom/bbm/ui/e/au;->m:Z
iget-object v1, v0, Lcom/bbm/ui/e/au;->n:Landroid/os/Handler;
iget-object v0, v0, Lcom/bbm/ui/e/au;->o:Ljava/lang/Runnable;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_49
:cond_60
iput-boolean v5, v0, Lcom/bbm/ui/e/bj;->g:Z
iget-object v2, v0, Lcom/bbm/ui/e/bj;->a:Lcom/bbm/ui/e/at;
if-eqz v2, :cond_49
iget-object v2, v0, Lcom/bbm/ui/e/bj;->a:Lcom/bbm/ui/e/at;
iget-object v0, p0, Lcom/bbm/ui/e/ba;->b:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->j(Lcom/bbm/ui/e/au;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-interface {v2, v1, v0}, Lcom/bbm/ui/e/at;->a(Lcom/bbm/ui/e/i;Z)V
goto :goto_49
.end method