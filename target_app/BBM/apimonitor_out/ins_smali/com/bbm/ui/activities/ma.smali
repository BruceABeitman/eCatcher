.class final Lcom/bbm/ui/activities/ma;
.super Ljava/lang/Object;
.source "GroupChatListActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/k;
.field final synthetic b:Lcom/bbm/ui/activities/lz;
.method constructor <init>(Lcom/bbm/ui/activities/lz;Lcom/bbm/ui/b/k;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ma;->b:Lcom/bbm/ui/activities/lz;
iput-object p2, p0, Lcom/bbm/ui/activities/ma;->a:Lcom/bbm/ui/b/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ma; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ma;->a:Lcom/bbm/ui/b/k;
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/activities/ma;->a:Lcom/bbm/ui/b/k;
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->c()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/mb;
iget-object v2, p0, Lcom/bbm/ui/activities/ma;->b:Lcom/bbm/ui/activities/lz;
iget-object v2, v2, Lcom/bbm/ui/activities/lz;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
iget-object v3, p0, Lcom/bbm/ui/activities/ma;->b:Lcom/bbm/ui/activities/lz;
iget-object v3, v3, Lcom/bbm/ui/activities/lz;->a:Lcom/bbm/ui/activities/GroupChatListActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-direct {v1, v2, v3, v0}, Lcom/bbm/ui/activities/mb;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/bbm/ui/activities/mb;->c()V
const-string v1, " - Lcom/bbm/ui/activities/ma; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method