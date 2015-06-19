.class final Lcom/instagram/android/activity/n;
.super Ljava/lang/Object;
.source "MainTabActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/activity/t;
.field final synthetic b:Lcom/instagram/android/activity/MainTabActivity;
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/activity/n;->b:Lcom/instagram/android/activity/MainTabActivity;
iput-object p2, p0, Lcom/instagram/android/activity/n;->a:Lcom/instagram/android/activity/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/activity/n; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/activity/n;->b:Lcom/instagram/android/activity/MainTabActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Landroid/support/v4/app/k;
iget-object v1, p0, Lcom/instagram/android/activity/n;->b:Lcom/instagram/android/activity/MainTabActivity;
iget-object v2, p0, Lcom/instagram/android/activity/n;->a:Lcom/instagram/android/activity/t;
invoke-static {v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Z
move-result v1
if-eqz v1, :cond_1c
invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v0
if-lez v0, :cond_29
:cond_1c
iget-object v0, p0, Lcom/instagram/android/activity/n;->b:Lcom/instagram/android/activity/MainTabActivity;
iget-object v1, p0, Lcom/instagram/android/activity/n;->b:Lcom/instagram/android/activity/MainTabActivity;
invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->f(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/t;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/activity/n;->a:Lcom/instagram/android/activity/t;
invoke-static {v0, v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;Lcom/instagram/android/activity/t;)V
:cond_29
const-string v1, " - Lcom/instagram/android/activity/n; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method