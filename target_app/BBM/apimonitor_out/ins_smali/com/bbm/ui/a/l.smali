.class final Lcom/bbm/ui/a/l;
.super Ljava/lang/Object;
.source "ChannelPostCommentListAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/a/k;
.method constructor <init>(Lcom/bbm/ui/a/k;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/a/l;->a:Lcom/bbm/ui/a/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/a/l; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/a/l;->a:Lcom/bbm/ui/a/k;
invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;
const v1, 0x7f0a001c
invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/el;
iget-boolean v2, v1, Lcom/bbm/d/el;->c:Z
if-eqz v2, :cond_3f
invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3f
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/a/l;->a:Lcom/bbm/ui/a/k;
invoke-static {v2}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/bbm/ui/activities/ChannelDetailsActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "bbm_channel_uri"
invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/a/l;->a:Lcom/bbm/ui/a/k;
invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_3e
const-string v1, " - Lcom/bbm/ui/a/l; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3f
new-instance v2, Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/a/l;->a:Lcom/bbm/ui/a/k;
invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v0
const-class v3, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;
invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v0, "userUri"
iget-object v3, v1, Lcom/bbm/d/el;->o:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, v1, Lcom/bbm/d/el;->b:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_74
iget-object v0, p0, Lcom/bbm/ui/a/l;->a:Lcom/bbm/ui/a/k;
invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Landroid/app/Activity;)Landroid/graphics/Point;
move-result-object v0
iget v0, v0, Landroid/graphics/Point;->x:I
invoke-static {v3, v0}, Lcom/bbm/util/m;->a(Ljava/util/List;I)Lcom/bbm/util/m;
move-result-object v0
const-string v3, "imageUri"
iget-object v0, v0, Lcom/bbm/util/m;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_74
const-string v0, "userName"
iget-object v1, v1, Lcom/bbm/d/el;->f:Ljava/lang/String;
invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/a/l;->a:Lcom/bbm/ui/a/k;
invoke-static {v0}, Lcom/bbm/ui/a/k;->a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_3e
.end method