.class final Lcom/bbm/ui/activities/ok;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ok;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ok; onItemLongClick "
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
if-eqz v0, :cond_1c
iget-object v1, v0, Lcom/bbm/g/y;->s:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_1c
iget-object v1, p0, Lcom/bbm/ui/activities/ok;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/ok;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-static {v1, v2, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/ui/activities/GroupListItemsActivity;Lcom/bbm/ui/c/fm;Lcom/bbm/g/y;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ok;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->o()V
:cond_1c
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/ok; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method