.class public Lco/vine/android/ReshareActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "ReshareActivity.java"
.field public static final EXTRA_NETWORK:Ljava/lang/String; = "network"
.field public static final NETWORK_FACEBOOK:Ljava/lang/String; = "facebook"
.field public static final NETWORK_TWITTER:Ljava/lang/String; = "twitter"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method public static getReshareIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/ReshareActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
const-string v1, "network"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "twitter"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
const-string v1, "title"
const v2, 0x7f0e0211
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
:cond_1f
:goto_1f
return-object v0
:cond_20
const-string v1, "facebook"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
const-string v1, "title"
const v2, 0x7f0e0210
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
goto :goto_1f
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/ReshareActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
const-string v2, "reshare"
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/ReshareFragment;
if-eqz v1, :cond_12
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
:goto_11
return-void
:cond_12
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseControllerActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_11
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lco/vine/android/ReshareActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v3, 0x1
const v6, 0x7f030046
invoke-super {p0, p1, v6, v3}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual {p0, v3}, Lco/vine/android/ReshareActivity;->setRequestedOrientation(I)V
invoke-virtual {p0}, Lco/vine/android/ReshareActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v6, "title"
invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
if-lez v2, :cond_50
:goto_1c
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
if-lez v2, :cond_52
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
:goto_26
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {p0, v6, v4, v3, v5}, Lco/vine/android/ReshareActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
if-nez p1, :cond_4f
new-instance v0, Lco/vine/android/ReshareFragment;
invoke-direct {v0}, Lco/vine/android/ReshareFragment;-><init>()V
invoke-static {v1}, Lco/vine/android/ReshareFragment;->prepareArguments(Landroid/content/Intent;)Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v0, v3}, Lco/vine/android/ReshareFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/ReshareActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
const v4, 0x7f0a0102
const-string v5, "reshare"
invoke-virtual {v3, v4, v0, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_4f
const-string v1, " - Lco/vine/android/ReshareActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_50
move v3, v4
goto :goto_1c
:cond_52
move-object v3, v5
goto :goto_26
.end method