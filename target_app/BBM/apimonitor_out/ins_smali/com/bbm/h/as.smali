.class final Lcom/bbm/h/as;
.super Ljava/lang/Object;
.source "InviteUtil.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:[Ljava/lang/String;
.field final synthetic b:Lcom/bbm/h/aq;
.method constructor <init>(Lcom/bbm/h/aq;[Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/h/as;->b:Lcom/bbm/h/aq;
iput-object p2, p0, Lcom/bbm/h/as;->a:[Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 6
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
new-instance v2, Lcom/bbm/h/ba;
iget-object v3, p0, Lcom/bbm/h/as;->b:Lcom/bbm/h/aq;
invoke-static {v3}, Lcom/bbm/h/aq;->d(Lcom/bbm/h/aq;)Landroid/content/Context;
move-result-object v3
iget-object v4, p0, Lcom/bbm/h/as;->a:[Ljava/lang/String;
invoke-direct {v2, v3, v4, v0}, Lcom/bbm/h/ba;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/bbm/d/gp;)V
invoke-interface {v1, v2}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
sget-object v1, Lcom/bbm/d/bu;->b:Lcom/bbm/d/bu;
invoke-static {v1}, Lcom/bbm/d/z;->a(Lcom/bbm/d/bu;)Lcom/bbm/d/bt;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const/4 v0, 0x1
goto :goto_11
.end method