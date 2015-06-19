.class final Lcom/bbm/ui/activities/pg;
.super Ljava/lang/Object;
.source "GroupListsCommentActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/pg;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/pg; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/pg;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->a(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/EmoticonInputPanel;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
iget-object v0, p0, Lcom/bbm/ui/activities/pg;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/SendEditText;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/SendEditText;->setVisibility(I)V
const-string v1, " - Lcom/bbm/ui/activities/pg; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method