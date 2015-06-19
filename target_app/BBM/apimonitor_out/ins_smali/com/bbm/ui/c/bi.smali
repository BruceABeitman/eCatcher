.class final Lcom/bbm/ui/c/bi;
.super Lcom/bbm/j/a;
.source "ChatsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/at;
.method constructor <init>(Lcom/bbm/ui/c/at;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/bi;->a:Lcom/bbm/ui/c/at;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/bi;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->i(Lcom/bbm/ui/c/at;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-gtz v0, :cond_38
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->D()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-gtz v0, :cond_38
iget-object v0, p0, Lcom/bbm/ui/c/bi;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->c(Lcom/bbm/ui/c/at;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-lez v0, :cond_3e
:cond_38
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_3d
return-object v0
:cond_3e
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_3d
.end method