.class final Lcom/bbm/j/n;
.super Ljava/lang/Object;
.source "ObservableMonitor.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/j/k;
.method constructor <init>(Lcom/bbm/j/k;)V
.registers 2
iput-object p1, p0, Lcom/bbm/j/n;->a:Lcom/bbm/j/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/j/n;->a:Lcom/bbm/j/k;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/j/k;->j:Z
invoke-virtual {v0}, Lcom/bbm/j/k;->e_()V
return-void
.end method