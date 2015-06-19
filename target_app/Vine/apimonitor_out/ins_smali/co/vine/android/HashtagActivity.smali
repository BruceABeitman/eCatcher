.class public Lco/vine/android/HashtagActivity;
.super Lco/vine/android/BaseTimelineActivity;
.source "HashtagActivity.java"
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "hashtag"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseTimelineActivity;-><init>()V
return-void
.end method
.method public static start(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
new-instance v1, Landroid/content/Intent;
const-class v2, Lco/vine/android/HashtagActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "category"
const-string v3, "tag"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
const-string v2, "tag"
const/4 v3, 0x1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected getCurrentTimeLineFragment()Lco/vine/android/BaseTimelineFragment;
.registers 3
invoke-virtual {p0}, Lco/vine/android/HashtagActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
const-string v1, "hashtag"
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lco/vine/android/BaseTimelineFragment;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/HashtagActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
const-string v2, "hashtag"
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseTimelineFragment;
if-eqz v1, :cond_11
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
:cond_11
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseTimelineActivity;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lco/vine/android/HashtagActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x0
const/4 v8, 0x1
const v4, 0x7f030046
invoke-super {p0, p1, v4, v9}, Lco/vine/android/BaseTimelineActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
const/4 v6, 0x0
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
invoke-virtual {p0, v4, v5, v6, v7}, Lco/vine/android/HashtagActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lco/vine/android/HashtagActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {p0}, Lco/vine/android/HashtagActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_3e
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "#"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "tag"
invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
:cond_3e
if-nez p1, :cond_65
new-instance v2, Lco/vine/android/ExploreTimelineFragment;
invoke-direct {v2}, Lco/vine/android/ExploreTimelineFragment;-><init>()V
invoke-static {v3, v9}, Lco/vine/android/ExploreTimelineFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;
move-result-object v1
const-string v4, "refresh"
invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v2, v1}, Lco/vine/android/ExploreTimelineFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/HashtagActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v4
const v5, 0x7f0a0102
const-string v6, "hashtag"
invoke-virtual {v4, v5, v2, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_65
const-string v1, " - Lco/vine/android/HashtagActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/HashtagActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/HashtagActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const v1, 0x7f10000a
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
invoke-super {p0, p1}, Lco/vine/android/BaseTimelineActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
move-result v0
move v2, v0
const-string v1, " - Lco/vine/android/HashtagActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method