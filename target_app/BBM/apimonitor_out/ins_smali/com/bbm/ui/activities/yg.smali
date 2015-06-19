.class final Lcom/bbm/ui/activities/yg;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/yg;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/yg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/yg;->a:Lcom/bbm/ui/activities/NewChannelActivity;
const-class v2, Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "subcategory"
iget-object v2, p0, Lcom/bbm/ui/activities/yg;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelActivity;->g(Lcom/bbm/ui/activities/NewChannelActivity;)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "category"
iget-object v2, p0, Lcom/bbm/ui/activities/yg;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelActivity;->f(Lcom/bbm/ui/activities/NewChannelActivity;)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/yg;->a:Lcom/bbm/ui/activities/NewChannelActivity;
const/4 v2, 0x2
invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/NewChannelActivity;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/bbm/ui/activities/yg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method