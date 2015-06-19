.class public Lco/vine/android/ImageActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "ImageActivity.java"
.field public static final EXTRA_IMAGE_URL:Ljava/lang/String; = "image_url"
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "image_fragment"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method public static start(Landroid/content/Context;Ljava/lang/String;I)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/ImageActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "image_url"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "title"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lco/vine/android/ImageActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v6, 0x1
const v3, 0x7f030046
invoke-super {p0, p1, v3, v6}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual {p0, v6}, Lco/vine/android/ImageActivity;->setRequestedOrientation(I)V
invoke-virtual {p0}, Lco/vine/android/ImageActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v3, "title"
invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
if-nez v2, :cond_1f
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "An ActionBar title resourceId must be provided when starting this Activity."
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1f
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {p0, v3, v4, v2, v5}, Lco/vine/android/ImageActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
if-nez p1, :cond_55
new-instance v0, Lco/vine/android/ImageFragment;
invoke-direct {v0}, Lco/vine/android/ImageFragment;-><init>()V
const-string v3, "take_focus"
invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-static {v1, v7}, Lco/vine/android/BaseCursorListFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v0, v3}, Lco/vine/android/ImageFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/ImageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
const v4, 0x7f0a0102
const-string v5, "image_fragment"
invoke-virtual {v3, v4, v0, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_55
const-string v1, " - Lco/vine/android/ImageActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method