.class final Lcom/bbm/ui/activities/abo;
.super Ljava/lang/Object;
.source "ProfileActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/abo; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const-string v0, "mOnClickListener Clicked"
const-class v1, Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;)Landroid/widget/ImageView;
move-result-object v0
if-ne p1, v0, :cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0, v3}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
const-string v1, ""
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Ljava/lang/String;)V
const-string v0, "revert nickname clicked"
const-class v1, Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
:cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->b(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
if-ne p1, v0, :cond_69
iget-object v0, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->c(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_69
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
const-class v2, Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "extra_is_avatar"
invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "extra_avatar_user_uri"
iget-object v2, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->c(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/d/gp;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "avatar clicked"
const-class v2, Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/bbm/ui/activities/abo;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ProfileActivity;->startActivity(Landroid/content/Intent;)V
:cond_69
const-string v1, " - Lcom/bbm/ui/activities/abo; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method