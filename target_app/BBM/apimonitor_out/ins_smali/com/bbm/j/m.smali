.class final Lcom/bbm/j/m;
.super Ljava/lang/Object;
.source "ObservableMonitor.java"
.implements Lcom/bbm/j/h;
.field final synthetic a:Lcom/bbm/j/k;
.method constructor <init>(Lcom/bbm/j/k;)V
.registers 2
iput-object p1, p0, Lcom/bbm/j/m;->a:Lcom/bbm/j/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 6
iget-object v0, p0, Lcom/bbm/j/m;->a:Lcom/bbm/j/k;
iget-boolean v1, v0, Lcom/bbm/j/k;->j:Z
if-nez v1, :cond_18
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/j/k;->j:Z
iget-wide v1, v0, Lcom/bbm/j/k;->l:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-nez v1, :cond_19
iget-object v1, v0, Lcom/bbm/j/k;->h:Lcom/bbm/util/dc;
iget-object v0, v0, Lcom/bbm/j/k;->i:Ljava/lang/Runnable;
invoke-interface {v1, v0}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
:goto_18
:cond_18
return-void
:cond_19
iget-object v1, v0, Lcom/bbm/j/k;->h:Lcom/bbm/util/dc;
iget-object v2, v0, Lcom/bbm/j/k;->i:Ljava/lang/Runnable;
iget-wide v3, v0, Lcom/bbm/j/k;->l:J
invoke-interface {v1, v2, v3, v4}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;J)V
goto :goto_18
.end method