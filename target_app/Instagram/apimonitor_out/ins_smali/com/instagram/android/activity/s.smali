.class final Lcom/instagram/android/activity/s;
.super Ljava/lang/Object;
.source "MainTabActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/activity/MainTabActivity;
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/activity/s; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;
invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/ui/widget/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/widget/c/a;->a()V
const-string v0, "NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
:goto_11
:cond_11
const-string v1, " - Lcom/instagram/android/activity/s; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;
sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;
invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;
sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;
invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/activity/s;->a:Lcom/instagram/android/activity/MainTabActivity;
sget-object v1, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;
invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->d(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
goto :goto_11
.end method