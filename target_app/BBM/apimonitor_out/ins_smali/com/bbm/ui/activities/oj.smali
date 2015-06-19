.class final Lcom/bbm/ui/activities/oj;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/oj;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/oj; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/y;
iget-boolean v1, v0, Lcom/bbm/g/y;->i:Z
if-nez v1, :cond_11
iget-object v1, p0, Lcom/bbm/ui/activities/oj;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/ui/activities/GroupListItemsActivity;Ljava/lang/String;)V
:cond_11
const-string v1, " - Lcom/bbm/ui/activities/oj; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method