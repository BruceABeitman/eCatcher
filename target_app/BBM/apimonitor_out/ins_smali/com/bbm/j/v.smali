.class final Lcom/bbm/j/v;
.super Lcom/bbm/j/u;
.source "SingleshotMonitor.java"
.field final synthetic a:Lcom/bbm/j/s;
.method constructor <init>(Lcom/bbm/j/s;)V
.registers 2
iput-object p1, p0, Lcom/bbm/j/v;->a:Lcom/bbm/j/s;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 2
iget-object v0, p0, Lcom/bbm/j/v;->a:Lcom/bbm/j/s;
invoke-interface {v0}, Lcom/bbm/j/s;->a()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lcom/bbm/j/u;->m:Ljava/util/Set;
invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method