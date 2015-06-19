.class public Lco/vine/android/ProfileActivity;
.super Lco/vine/android/BaseTimelineActivity;
.source "ProfileActivity.java"
.field private static final EXTRA_FOLLOW_EVENT_SOURCE:Ljava/lang/String; = "event_source"
.field private static final EXTRA_SHOW_PROFILE_ACTIONS:Ljava/lang/String; = "show_profile_actions"
.field private static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"
.field private static final EXTRA_VANITY_URL:Ljava/lang/String; = "vanity_url"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseTimelineActivity;-><init>()V
return-void
.end method
.method public static start(Landroid/content/Context;JLjava/lang/String;)V
.registers 5
const/4 v0, 0x1
invoke-static {p0, p1, p2, p3, v0}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;Z)V
return-void
.end method
.method public static start(Landroid/content/Context;JLjava/lang/String;Z)V
.registers 7
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/ProfileActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "user_id"
invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "event_source"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "show_profile_actions"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static start(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/ProfileActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "vanity_url"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
const-string v1, "event_source"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected getCurrentTimeLineFragment()Lco/vine/android/BaseTimelineFragment;
.registers 3
invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
const-string v1, "profile"
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lco/vine/android/BaseTimelineFragment;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
const-string v2, "profile"
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
.registers 9
const-string v1, " + Lco/vine/android/ProfileActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
const v2, 0x7f030046
invoke-super {p0, p1, v2, v6}, Lco/vine/android/BaseTimelineActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual {p0, v6}, Lco/vine/android/ProfileActivity;->setRequestedOrientation(I)V
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
const v4, 0x7f0e019c
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {p0, v2, v3, v4, v5}, Lco/vine/android/ProfileActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
if-nez p1, :cond_4c
new-instance v0, Lco/vine/android/ProfileFragment;
invoke-direct {v0}, Lco/vine/android/ProfileFragment;-><init>()V
const-string v2, "refresh"
invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v2, "take_focus"
invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-static {v1, v6}, Lco/vine/android/BaseArrayListFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v0, v2}, Lco/vine/android/ProfileFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
const v3, 0x7f0a0102
const-string v4, "profile"
invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_4c
const-string v1, " - Lco/vine/android/ProfileActivity; onCreate"
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
const-string v0, " + Lco/vine/android/ProfileActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/ProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const v1, 0x7f10000a
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
invoke-super {p0, p1}, Lco/vine/android/BaseTimelineActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
move-result v0
move v2, v0
const-string v1, " - Lco/vine/android/ProfileActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method