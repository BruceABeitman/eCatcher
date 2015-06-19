.class final Lcom/bbm/ui/dz;
.super Lcom/bbm/j/k;
.source "MonitoredAdapter.java"
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Ljava/lang/Object;
.field final synthetic c:Lcom/bbm/ui/dy;
.method constructor <init>(Lcom/bbm/ui/dy;Landroid/view/View;Ljava/lang/Object;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/dz;->c:Lcom/bbm/ui/dy;
iput-object p2, p0, Lcom/bbm/ui/dz;->a:Landroid/view/View;
iput-object p3, p0, Lcom/bbm/ui/dz;->b:Ljava/lang/Object;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/dz;->c:Lcom/bbm/ui/dy;
iget-object v1, p0, Lcom/bbm/ui/dz;->a:Landroid/view/View;
iget-object v2, p0, Lcom/bbm/ui/dz;->b:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/dy;->a(Landroid/view/View;Ljava/lang/Object;)V
return-void
.end method