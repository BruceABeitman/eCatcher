.class final Lcom/bbm/ui/activities/aam;
.super Ljava/lang/Object;
.source "OwnProfileActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/OwnProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aam;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aam; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mAvatarView Clicked"
const-class v1, Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aam;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/aam;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
const-class v3, Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/bbm/ui/activities/aam; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method