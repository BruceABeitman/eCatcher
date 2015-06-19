.class final Lcom/bbm/ui/c/cg;
.super Lcom/bbm/j/k;
.source "DiscoverChannelsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/cd;
.method constructor <init>(Lcom/bbm/ui/c/cd;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/cg;->a:Lcom/bbm/ui/c/cd;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/c/cg;->a:Lcom/bbm/ui/c/cd;
iget-object v1, p0, Lcom/bbm/ui/c/cg;->a:Lcom/bbm/ui/c/cd;
invoke-static {v1}, Lcom/bbm/ui/c/cd;->d(Lcom/bbm/ui/c/cd;)Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/d/a;->K()Lcom/bbm/j/w;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/c/cd;->a(Lcom/bbm/ui/c/cd;Lcom/bbm/j/w;)Lcom/bbm/j/w;
iget-object v0, p0, Lcom/bbm/ui/c/cg;->a:Lcom/bbm/ui/c/cd;
invoke-static {v0}, Lcom/bbm/ui/c/cd;->b(Lcom/bbm/ui/c/cd;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/bbm/ui/c/cg;->a:Lcom/bbm/ui/c/cd;
invoke-static {v0}, Lcom/bbm/ui/c/cd;->e(Lcom/bbm/ui/c/cd;)V
:cond_20
return-void
.end method