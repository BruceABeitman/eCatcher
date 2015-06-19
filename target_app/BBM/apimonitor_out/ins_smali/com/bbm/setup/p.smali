.class final Lcom/bbm/setup/p;
.super Ljava/lang/Object;
.source "PykInviteFriendsActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/setup/PykInviteFriendsActivity;
.method constructor <init>(Lcom/bbm/setup/PykInviteFriendsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/setup/p; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/j;
invoke-virtual {v0}, Lcom/bbm/iceberg/j;->a()Z
move-result v1
if-eqz v1, :cond_2f
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/c/c;->c()V
iget-object v1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;
iget-object v2, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;
const v3, 0x7f0e0681
invoke-virtual {v2, v3}, Lcom/bbm/setup/PykInviteFriendsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;
invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/h/aq;->a(Lcom/bbm/iceberg/j;)V
:goto_2e
const-string v1, " - Lcom/bbm/setup/p; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2f
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v1
iget v2, v1, Lcom/bbm/c/c;->al:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->al:I
iget-object v1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;
invoke-static {v1, v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Lcom/bbm/iceberg/j;)V
goto :goto_2e
.end method