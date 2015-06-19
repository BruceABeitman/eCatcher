.class final Lcom/bbm/ui/c/fe;
.super Ljava/lang/Object;
.source "PeopleYouKnowFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/c/ey;
.method constructor <init>(Lcom/bbm/ui/c/ey;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/fe;->a:Lcom/bbm/ui/c/ey;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/fe; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/c/c;->c()V
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/j;
iget-object v1, p0, Lcom/bbm/ui/c/fe;->a:Lcom/bbm/ui/c/ey;
invoke-static {v1}, Lcom/bbm/ui/c/ey;->j(Lcom/bbm/ui/c/ey;)Z
iget-object v1, p0, Lcom/bbm/ui/c/fe;->a:Lcom/bbm/ui/c/ey;
invoke-static {v1}, Lcom/bbm/ui/c/ey;->f(Lcom/bbm/ui/c/ey;)Lcom/bbm/h/aq;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/h/aq;->a(Lcom/bbm/iceberg/j;)V
const-string v1, " - Lcom/bbm/ui/c/fe; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method