.class final Lcom/bbm/ui/e/az;
.super Lcom/bbm/j/a;
.source "MessagesDelegateAdapter.java"
.field final synthetic a:Lcom/bbm/ui/e/au;
.method constructor <init>(Lcom/bbm/ui/e/au;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/az;->a:Lcom/bbm/ui/e/au;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/e/az;->a:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->b(Lcom/bbm/ui/e/au;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/az;->a:Lcom/bbm/ui/e/au;
invoke-static {v1}, Lcom/bbm/ui/e/au;->a(Lcom/bbm/ui/e/au;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/d/es;->k:Z
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method