.class final Lcom/bbm/ui/c/fo;
.super Ljava/lang/Object;
.source "SlideMenuFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/c/fm;
.method constructor <init>(Lcom/bbm/ui/c/fm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/fo; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->b(Lcom/bbm/ui/c/fm;)Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->b(Lcom/bbm/ui/c/fm;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v1, p3, v0
if-ltz v1, :cond_49
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->c(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/c/fr;->getCount()I
move-result v0
if-ge v1, v0, :cond_49
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->c(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fr;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/ui/c/fr;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0}, Lcom/bbm/ui/slidingmenu/a;->g()Z
move-result v0
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->d(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fq;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->c(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fr;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/ui/c/fr;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/slidingmenu/a;
invoke-interface {v2, v0, v1}, Lcom/bbm/ui/c/fq;->a(Lcom/bbm/ui/slidingmenu/a;I)V
:cond_49
:goto_49
const-string v1, " - Lcom/bbm/ui/c/fo; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_4a
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->e(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fq;
move-result-object v0
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->e(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fq;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/c/fo;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0}, Lcom/bbm/ui/c/fm;->c(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fr;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/ui/c/fr;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/slidingmenu/a;
invoke-interface {v2, v0, v1}, Lcom/bbm/ui/c/fq;->a(Lcom/bbm/ui/slidingmenu/a;I)V
goto :goto_49
.end method