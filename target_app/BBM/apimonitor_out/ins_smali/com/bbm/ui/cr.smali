.class final Lcom/bbm/ui/cr;
.super Lcom/bbm/j/k;
.source "GroupedObservableListAdapter.java"
.field final synthetic a:Lcom/bbm/ui/ListHeaderView;
.field final synthetic b:I
.field final synthetic c:Ljava/util/List;
.field final synthetic d:Lcom/bbm/ui/cq;
.method constructor <init>(Lcom/bbm/ui/cq;Lcom/bbm/ui/ListHeaderView;ILjava/util/List;)V
.registers 6
iput-object p1, p0, Lcom/bbm/ui/cr;->d:Lcom/bbm/ui/cq;
iput-object p2, p0, Lcom/bbm/ui/cr;->a:Lcom/bbm/ui/ListHeaderView;
iput p3, p0, Lcom/bbm/ui/cr;->b:I
iput-object p4, p0, Lcom/bbm/ui/cr;->c:Ljava/util/List;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/cr;->d:Lcom/bbm/ui/cq;
iget-object v1, p0, Lcom/bbm/ui/cr;->a:Lcom/bbm/ui/ListHeaderView;
iget v2, p0, Lcom/bbm/ui/cr;->b:I
iget-object v3, p0, Lcom/bbm/ui/cr;->c:Ljava/util/List;
invoke-virtual {v0, v1, v2, v3}, Lcom/bbm/ui/cq;->a(Lcom/bbm/ui/ListHeaderView;ILjava/util/List;)V
return-void
.end method