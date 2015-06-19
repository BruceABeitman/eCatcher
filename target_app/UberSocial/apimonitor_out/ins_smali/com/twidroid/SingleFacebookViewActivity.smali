.class public Lcom/twidroid/SingleFacebookViewActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"
.implements Lcom/twidroid/fragments/e;
.field public static final b:Ljava/lang/String; = "EXTRA_FACEBOOK_POST"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/SingleFacebookViewActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "EXTRA_FACEBOOK_POST"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/twidroid/SingleFacebookViewActivity;->setResult(ILandroid/content/Intent;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/SingleFacebookViewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030043
invoke-virtual {p0, v0}, Lcom/twidroid/SingleFacebookViewActivity;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/SingleFacebookViewActivity;->J:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c02f1
invoke-virtual {p0}, Lcom/twidroid/SingleFacebookViewActivity;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
invoke-virtual {p0}, Lcom/twidroid/SingleFacebookViewActivity;->a()Landroid/support/v7/app/ActionBar;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->c(Z)V
invoke-virtual {p0}, Lcom/twidroid/SingleFacebookViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
new-instance v1, Lcom/twidroid/fragments/d;
invoke-direct {v1}, Lcom/twidroid/fragments/d;-><init>()V
const v2, 0x7f0900ec
invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
invoke-virtual {p0}, Lcom/twidroid/SingleFacebookViewActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v2, "EXTRA_FACEBOOK_POST"
invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_4a
const-string v2, "EXTRA_FACEBOOK_POST"
invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/model/facebook/FacebookNewsModel;
invoke-virtual {v1, v0, p0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/model/facebook/FacebookNewsModel;Lcom/twidroid/fragments/e;)V
:cond_4a
const-string v1, " - Lcom/twidroid/SingleFacebookViewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method