.class final Lcom/bbm/ui/e/ax;
.super Ljava/lang/Object;
.source "MessagesDelegateAdapter.java"
.implements Lcom/bbm/ui/e/bg;
.field final synthetic a:Lcom/bbm/ui/e/au;
.method constructor <init>(Lcom/bbm/ui/e/au;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/ax;->a:Lcom/bbm/ui/e/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/d/fg;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/e/ax;->a:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->d(Lcom/bbm/ui/e/au;)Lcom/bbm/ui/e/bg;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/e/ax;->a:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->d(Lcom/bbm/ui/e/au;)Lcom/bbm/ui/e/bg;
move-result-object v0
invoke-interface {v0, p1}, Lcom/bbm/ui/e/bg;->a(Lcom/bbm/d/fg;)V
:cond_11
return-void
.end method
.method public final a(Lcom/bbm/d/fg;J)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/e/ax;->a:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->d(Lcom/bbm/ui/e/au;)Lcom/bbm/ui/e/bg;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/e/ax;->a:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->d(Lcom/bbm/ui/e/au;)Lcom/bbm/ui/e/bg;
move-result-object v0
invoke-interface {v0, p1, p2, p3}, Lcom/bbm/ui/e/bg;->a(Lcom/bbm/d/fg;J)V
:cond_11
return-void
.end method