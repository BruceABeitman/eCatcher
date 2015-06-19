.class final Lcom/bbm/ui/e/ay;
.super Ljava/lang/Object;
.source "MessagesDelegateAdapter.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/e/au;
.method constructor <init>(Lcom/bbm/ui/e/au;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/ay;->a:Lcom/bbm/ui/e/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/ay;->a:Lcom/bbm/ui/e/au;
invoke-static {v0}, Lcom/bbm/ui/e/au;->e(Lcom/bbm/ui/e/au;)Z
iget-object v0, p0, Lcom/bbm/ui/e/ay;->a:Lcom/bbm/ui/e/au;
invoke-virtual {v0}, Lcom/bbm/ui/e/au;->notifyDataSetChanged()V
return-void
.end method