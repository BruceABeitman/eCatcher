.class  Lcom/twidroid/activity/UberSocialBaseActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$17;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialBaseActivity$17; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v8, 0x0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$17;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->finish()V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$17;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-class v2, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$17;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-string v1, "alarm"
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
const/4 v1, 0x3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
const-wide/16 v4, 0x3e8
add-long/2addr v2, v4
iget-object v4, p0, Lcom/twidroid/activity/UberSocialBaseActivity$17;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v4}, Lcom/twidroid/activity/UberSocialBaseActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v4
new-instance v5, Landroid/content/Intent;
iget-object v6, p0, Lcom/twidroid/activity/UberSocialBaseActivity$17;->a:Lcom/twidroid/activity/UberSocialBaseActivity;
const-class v7, Lcom/twidroid/TwidroidClient;
invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
invoke-static {v8}, Ljava/lang/System;->exit(I)V
const-string v1, " - Lcom/twidroid/activity/UberSocialBaseActivity$17; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method