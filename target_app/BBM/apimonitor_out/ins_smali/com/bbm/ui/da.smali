.class final Lcom/bbm/ui/da;
.super Ljava/lang/Object;
.source "IncrementalListAdapter.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/cz;
.method constructor <init>(Lcom/bbm/ui/cz;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/da;->a:Lcom/bbm/ui/cz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/da;->a:Lcom/bbm/ui/cz;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/ui/cz;->b:Z
iget-object v0, p0, Lcom/bbm/ui/da;->a:Lcom/bbm/ui/cz;
iget-object v0, v0, Lcom/bbm/ui/cz;->g:Lcom/bbm/ui/ct;
invoke-static {v0}, Lcom/bbm/ui/ct;->e(Lcom/bbm/ui/ct;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/bbm/ui/da;->a:Lcom/bbm/ui/cz;
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Lcom/bbm/ui/cz;->a(F)V
iget-object v0, p0, Lcom/bbm/ui/da;->a:Lcom/bbm/ui/cz;
iget-object v0, v0, Lcom/bbm/ui/cz;->f:Lcom/google/b/a/l;
invoke-static {v0}, Lcom/bbm/ui/cz;->b(Lcom/google/b/a/l;)Lcom/bbm/ui/cy;
move-result-object v0
const-wide/16 v1, -0x1
iput-wide v1, v0, Lcom/bbm/ui/cy;->c:J
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/bbm/ui/da;->a:Lcom/bbm/ui/cz;
invoke-static {v0}, Lcom/bbm/ui/cz;->a(Lcom/bbm/ui/cz;)V
goto :goto_22
.end method