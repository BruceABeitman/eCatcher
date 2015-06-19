.class final Lcom/bbm/ui/activities/ks;
.super Ljava/lang/Object;
.source "GroupAdminAddActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ks;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ks; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mHeaderActionBar Positive Button Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ks;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_11
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/ks;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->b(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Lcom/bbm/g/am;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/ks;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/bbm/g/an;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/cb;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_11
:cond_2f
iget-object v0, p0, Lcom/bbm/ui/activities/ks;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/ks; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method