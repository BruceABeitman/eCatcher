.class final Lcom/bbm/ui/ed;
.super Lcom/bbm/j/k;
.source "NFCInviteRequest.java"
.field final synthetic a:Lcom/bbm/ui/eb;
.method constructor <init>(Lcom/bbm/ui/eb;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
invoke-static {v0}, Lcom/bbm/ui/eb;->b(Lcom/bbm/ui/eb;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/eb;->a(Lcom/bbm/ui/eb;Ljava/lang/String;)Ljava/lang/String;
:cond_1d
iget-object v0, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
invoke-static {v0}, Lcom/bbm/ui/eb;->c(Lcom/bbm/ui/eb;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7a
iget-object v0, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
invoke-static {v0}, Lcom/bbm/ui/eb;->b(Lcom/bbm/ui/eb;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_7a
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
invoke-static {v1}, Lcom/bbm/ui/eb;->c(Lcom/bbm/ui/eb;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/bbm/d/z;->e(Ljava/lang/String;)Lcom/bbm/d/bs;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v1, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
const-string v2, ""
invoke-static {v1, v2}, Lcom/bbm/ui/eb;->b(Lcom/bbm/ui/eb;Ljava/lang/String;)Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
invoke-static {v1}, Lcom/bbm/ui/eb;->d(Lcom/bbm/ui/eb;)[B
iget-object v1, p0, Lcom/bbm/ui/ed;->a:Lcom/bbm/ui/eb;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/ui/eb;->a(Lcom/bbm/ui/eb;Ljava/lang/String;)Ljava/lang/String;
invoke-static {}, Lcom/bbm/ui/eb;->b()Lcom/bbm/d/bu;
move-result-object v1
invoke-static {v1}, Lcom/bbm/d/z;->a(Lcom/bbm/d/bu;)Lcom/bbm/d/bt;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_7a
return-void
.end method