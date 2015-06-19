.class final Lcom/bbm/ui/c/hr;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/c/hk;
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/hr; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->m(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/er;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->m(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/er;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/j/k;->k:Z
if-nez v0, :cond_4a
:cond_12
iget-object v1, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
iget-object v0, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->o(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/a/z;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/ew;
invoke-static {v1, v0}, Lcom/bbm/ui/c/hk;->b(Lcom/bbm/ui/c/hk;Lcom/bbm/util/ew;)Lcom/bbm/util/ew;
iget-object v0, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
new-instance v1, Lcom/bbm/util/er;
iget-object v2, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-static {v3}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
iget-object v5, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-static {v5}, Lcom/bbm/ui/c/hk;->n(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;
move-result-object v5
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/util/er;-><init>(Landroid/content/Context;Lcom/bbm/ui/activities/MainActivity;Landroid/app/Fragment;Lcom/bbm/util/ew;)V
invoke-static {v0, v1}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/er;)Lcom/bbm/util/er;
iget-object v0, p0, Lcom/bbm/ui/c/hr;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->m(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/er;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/er;->c()V
:cond_4a
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/c/hr; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method