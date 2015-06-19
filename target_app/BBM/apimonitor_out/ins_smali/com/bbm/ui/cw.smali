.class final Lcom/bbm/ui/cw;
.super Ljava/lang/Object;
.source "IncrementalListAdapter.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/ct;
.method constructor <init>(Lcom/bbm/ui/ct;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/cw;->a:Lcom/bbm/ui/ct;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cw;->a:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->m(Lcom/bbm/ui/ct;)Z
iget-object v0, p0, Lcom/bbm/ui/cw;->a:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->e(Lcom/bbm/ui/ct;)Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/bbm/ui/cw;->a:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->f()V
goto :goto_d
.end method