.class final Lcom/bbm/ui/activities/qr;
.super Lcom/bbm/j/k;
.source "GroupLobbyActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/qn;
.method constructor <init>(Lcom/bbm/ui/activities/qn;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 8
const v6, 0x7f0e03fc
const v5, 0x7f0e02f5
const/4 v4, 0x0
const/4 v3, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
iget-object v1, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v1}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v2}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
move-result-object v2
iget-object v2, v2, Lcom/bbm/g/a;->v:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;Lcom/bbm/j/r;)Lcom/bbm/j/r;
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->d(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-le v0, v3, :cond_92
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/g/a;->j:Z
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
iget-object v1, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v1}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/a;->r:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const v1, 0x7f0e02f7
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->e(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const v1, 0x7f0e03de
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->c(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/qn;->a(I)V
:goto_5d
return-void
:cond_5e
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
iget-object v1, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-virtual {v1}, Lcom/bbm/ui/activities/qn;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v3, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v3}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/a;->r:Ljava/lang/String;
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const v1, 0x7f0e02f6
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->e(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/qn;->a(I)V
goto :goto_5d
:cond_92
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
iget-object v1, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-virtual {v1}, Lcom/bbm/ui/activities/qn;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v3, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v3}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/a;->r:Ljava/lang/String;
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const v1, 0x7f0e02f1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->a(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qr;->a:Lcom/bbm/ui/activities/qn;
const v1, 0x7f0e02f8
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/qn;->e(I)V
goto :goto_5d
.end method