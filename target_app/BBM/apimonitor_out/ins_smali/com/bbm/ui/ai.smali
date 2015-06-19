.class final Lcom/bbm/ui/ai;
.super Lcom/bbm/j/u;
.source "ChatHeaderView.java"
.field final synthetic a:Lcom/bbm/ui/ae;
.method constructor <init>(Lcom/bbm/ui/ae;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ai;->a:Lcom/bbm/ui/ae;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ai;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->b(Lcom/bbm/ui/ae;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_14
const/4 v0, 0x0
:goto_13
return v0
:cond_14
iget-object v1, p0, Lcom/bbm/ui/ai;->a:Lcom/bbm/ui/ae;
invoke-virtual {v1, v0}, Lcom/bbm/ui/ae;->a(Ljava/lang/String;)V
const/4 v0, 0x1
goto :goto_13
.end method