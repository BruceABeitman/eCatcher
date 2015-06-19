.class public Lco/vine/android/ExploreVideoListActivity;
.super Lco/vine/android/BaseTimelineActivity;
.source "ExploreVideoListActivity.java"
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "explore_video_list"
.field private static final QUERY_TITLE:Ljava/lang/String; = "title"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseTimelineActivity;-><init>()V
return-void
.end method
.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.registers 7
new-instance v1, Landroid/content/Intent;
const-class v0, Lco/vine/android/ExploreVideoListActivity;
invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "vine://"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-eqz p2, :cond_3c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "/"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2b
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v0
return-object v0
:cond_3c
const-string v0, ""
goto :goto_2b
.end method
.method public static start(Landroid/content/Context;Landroid/net/Uri;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/ExploreVideoListActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected getCurrentTimeLineFragment()Lco/vine/android/BaseTimelineFragment;
.registers 3
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
const-string v1, "explore_video_list"
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lco/vine/android/BaseTimelineFragment;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
const-string v2, "explore_video_list"
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseTimelineFragment;
if-eqz v1, :cond_11
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
:cond_11
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseTimelineActivity;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lco/vine/android/ExploreVideoListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x1
const v5, 0x7f030046
invoke-super {p0, p1, v5, v9}, Lco/vine/android/BaseTimelineActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
if-nez v1, :cond_1d
new-instance v5, Ljava/lang/IllegalAccessError;
const-string v6, "You can\'t access video list without specifying a url."
invoke-direct {v5, v6}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V
throw v5
:cond_1d
invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
const/4 v7, 0x0
invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
invoke-virtual {p0, v5, v6, v7, v8}, Lco/vine/android/ExploreVideoListActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
const-string v5, "tag"
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_87
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "#"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
:goto_57
if-nez p1, :cond_86
new-instance v2, Lco/vine/android/ExploreTimelineFragment;
invoke-direct {v2}, Lco/vine/android/ExploreTimelineFragment;-><init>()V
const-string v5, "refresh"
invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v6
invoke-static {v3, v9, v5, v6, v1}, Lco/vine/android/ExploreTimelineFragment;->prepareArguments(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v2, v5}, Lco/vine/android/ExploreTimelineFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v5
const v6, 0x7f0a0102
const-string v7, "explore_video_list"
invoke-virtual {v5, v6, v2, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v5
invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_86
:goto_86
const-string v1, " - Lco/vine/android/ExploreVideoListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_87
const-string v5, "trending-people"
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_9a
const v5, 0x7f0e0166
invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
goto :goto_57
:cond_9a
const-string v5, "popular-now"
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_ad
const v5, 0x7f0e0178
invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
goto :goto_57
:cond_ad
const-string v5, "timelines"
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_dd
const-string v5, "title"
invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_d1
const/16 v5, 0x2b
const/16 v6, 0x20
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
goto :goto_57
:cond_d1
const v5, 0x7f0e023e
invoke-virtual {p0, v5}, Lco/vine/android/ExploreVideoListActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
goto/16 :goto_57
:cond_dd
const-string v5, "All post is not supported at this moment, it\'s just here to tease you. "
const/4 v6, 0x0
invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->finish()V
goto :goto_86
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ExploreVideoListActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/ExploreVideoListActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
const v1, 0x7f10000a
invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
invoke-super {p0, p1}, Lco/vine/android/BaseTimelineActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
move-result v0
move v2, v0
const-string v1, " - Lco/vine/android/ExploreVideoListActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method