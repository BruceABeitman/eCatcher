.class final Lcom/bbm/ui/activities/ov;
.super Ljava/lang/Object;
.source "GroupListsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ov;->a:Lcom/bbm/ui/activities/GroupListsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ov; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "actionbar onClick"
const-class v1, Lcom/bbm/ui/activities/GroupListsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/ov;->a:Lcom/bbm/ui/activities/GroupListsActivity;
const-class v2, Lcom/bbm/ui/activities/GroupProfileActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/ov;->a:Lcom/bbm/ui/activities/GroupListsActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/ov;->a:Lcom/bbm/ui/activities/GroupListsActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupListsActivity;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/bbm/ui/activities/ov; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method