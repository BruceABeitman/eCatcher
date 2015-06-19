.class final Lcom/bbm/ui/e/av;
.super Lcom/bbm/j/a;
.source "MessagesDelegateAdapter.java"
.field final synthetic a:Lcom/bbm/ui/e/au;
.method constructor <init>(Lcom/bbm/ui/e/au;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/av;->a:Lcom/bbm/ui/e/au;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/e/av;->a:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/ui/e/au;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/av;->a:Lcom/bbm/ui/e/au;
invoke-static {v1}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/ui/e/au;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;
move-result-object v0
iget-boolean v1, v0, Lcom/bbm/d/es;->i:Z
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/bbm/ui/e/av;->a:Lcom/bbm/ui/e/au;
invoke-static {v1}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/ui/e/au;)Lcom/bbm/d/a;
move-result-object v1
iget-object v0, v0, Lcom/bbm/d/es;->a:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v0
:goto_20
return-object v0
:cond_21
invoke-static {}, Lcom/bbm/ui/e/au;->a()Lcom/bbm/d/ec;
move-result-object v0
goto :goto_20
.end method