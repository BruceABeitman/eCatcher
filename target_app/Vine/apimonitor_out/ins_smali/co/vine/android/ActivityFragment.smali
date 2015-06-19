.class public Lco/vine/android/ActivityFragment;
.super Lco/vine/android/BaseArrayListFragment;
.source "ActivityFragment.java"
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/widget/OnTabChangedListener;
.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "Activity Feed"
.field private static final STATE_PRIVATE:Ljava/lang/String; = "state_private"
.field private static final TAG:Ljava/lang/String; = "ActivityFragment"
.field private mFetched:Z
.field private mPrivate:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseArrayListFragment;-><init>()V
return-void
.end method
.method static synthetic access$002(Lco/vine/android/ActivityFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/ActivityFragment;->mPrivate:Z
return p1
.end method
.method private fetchContent(I)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/ActivityFragment;->fetchContent(IZ)V
return-void
.end method
.method private fetchContent(IZ)V
.registers 10
const-wide/16 v2, 0x0
const/4 v1, 0x1
invoke-virtual {p0, p1}, Lco/vine/android/ActivityFragment;->hasPendingRequest(I)Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
iput-boolean v1, p0, Lco/vine/android/ActivityFragment;->mFetched:Z
if-nez p2, :cond_11
invoke-virtual {p0, p1}, Lco/vine/android/ActivityFragment;->showProgress(I)V
:cond_11
packed-switch p1, :pswitch_data_3e
:goto_14
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
iget v2, p0, Lco/vine/android/ActivityFragment;->mNextPage:I
iget-wide v3, p0, Lco/vine/android/ActivityFragment;->mAnchor:J
iget-boolean v5, p0, Lco/vine/android/ActivityFragment;->mPrivate:Z
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->isFocused()Z
move-result v6
invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->fetchActivity(Lco/vine/android/client/Session;IJZZ)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p1}, Lco/vine/android/ActivityFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0}, Lco/vine/android/client/AppController;->fetchActivityCounts()Ljava/lang/String;
goto :goto_9
:pswitch_33
iput v1, p0, Lco/vine/android/ActivityFragment;->mNextPage:I
iput-wide v2, p0, Lco/vine/android/ActivityFragment;->mAnchor:J
goto :goto_14
:pswitch_38
iput v1, p0, Lco/vine/android/ActivityFragment;->mNextPage:I
iput-wide v2, p0, Lco/vine/android/ActivityFragment;->mAnchor:J
goto :goto_14
nop
:pswitch_data_3e
.packed-switch 0x2
:pswitch_33
:pswitch_38
.end packed-switch
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getArguments()Landroid/os/Bundle;
move-result-object v1
const-string v2, "take_focus"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_2b
iget-boolean v1, p0, Lco/vine/android/ActivityFragment;->mFetched:Z
if-nez v1, :cond_2b
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/HomeTabActivity;
const/4 v1, 0x1
invoke-virtual {v0, v1, p0}, Lco/vine/android/HomeTabActivity;->showPage(ILandroid/support/v4/app/Fragment;)V
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v1
if-eqz v1, :cond_2b
const-string v1, "ActivityFragment"
const-string v2, "Activity tab took focus."
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_2b
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ActivityFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v0, Lco/vine/android/ActivityAdapter;
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v3
packed-switch v3, :pswitch_data_5c
:goto_c
:pswitch_c
const-string v1, " - Lco/vine/android/ActivityFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_d
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Long;
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v5
const-string v3, "Activity Feed"
invoke-static {v4, v5, v6, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V
goto :goto_c
:pswitch_21
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Long;
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v1
iget-object v3, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v3, Lco/vine/android/ActivityAdapter;
invoke-virtual {v3, v1, v2}, Lco/vine/android/ActivityAdapter;->isFollowing(J)Z
move-result v3
if-nez v3, :cond_48
invoke-virtual {v0, v1, v2}, Lco/vine/android/ActivityAdapter;->follow(J)V
iget-object v3, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v4, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v4
invoke-virtual {v3, v4, v1, v2, v5}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lco/vine/android/ActivityFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
goto :goto_c
:cond_48
invoke-virtual {v0, v1, v2}, Lco/vine/android/ActivityAdapter;->unfollow(J)V
iget-object v3, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v4, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v4
invoke-virtual {v3, v4, v1, v2, v5}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lco/vine/android/ActivityFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
goto :goto_c
nop
:pswitch_data_5c
.packed-switch 0x7f0a0063
:pswitch_d
:pswitch_c
:pswitch_c
:pswitch_21
:pswitch_c
:pswitch_d
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lco/vine/android/ActivityFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v1, Lco/vine/android/ActivityFragment$ActivityListener;
invoke-direct {v1, p0}, Lco/vine/android/ActivityFragment$ActivityListener;-><init>(Lco/vine/android/ActivityFragment;)V
iput-object v1, p0, Lco/vine/android/ActivityFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
if-eqz p1, :cond_1d
const-string v1, "state_private"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1c
const-string v1, "state_private"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/ActivityFragment;->mPrivate:Z
:cond_1c
:goto_1c
const-string v1, " - Lco/vine/android/ActivityFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "settings_private"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/ActivityFragment;->mPrivate:Z
goto :goto_1c
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 14
const/4 v9, 0x0
const/4 v8, 0x0
const v0, 0x7f030060
invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/ActivityFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v7
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDividerHeight(I)V
new-instance v0, Lco/vine/android/ActivityAdapter;
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/ActivityFragment;->mListView:Landroid/widget/ListView;
iget-object v3, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
move-object v4, p0
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lco/vine/android/ActivityAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;Landroid/view/View$OnClickListener;)V
iput-object v0, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v0, v0, Lco/vine/android/HomeTabActivity;
if-eqz v0, :cond_54
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03009d
invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v6
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mListView:Landroid/widget/ListView;
check-cast v0, Lco/vine/android/widget/PinnedHeaderListView;
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b0084
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {v0, v6, v1}, Lco/vine/android/widget/PinnedHeaderListView;->setRefreshHeader(Landroid/view/View;I)V
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v0, v6, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
:cond_54
return-object v7
.end method
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ActivityFragment; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const-wide/16 v2, 0x0
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lco/vine/android/widget/ActivityViewHolder;
if-eqz v0, :cond_28
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/widget/ActivityViewHolder;
iget-boolean v0, v6, Lco/vine/android/widget/ActivityViewHolder;->clickable:Z
if-eqz v0, :cond_28
iget v0, v6, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I
if-ne v0, v5, :cond_29
iget-wide v0, v6, Lco/vine/android/widget/ActivityViewHolder;->postId:J
cmp-long v0, v0, v2
if-lez v0, :cond_29
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-wide v1, v6, Lco/vine/android/widget/ActivityViewHolder;->postId:J
invoke-static {v0, v1, v2}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V
:cond_28
:goto_28
const-string v1, " - Lco/vine/android/ActivityFragment; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_29
iget v0, v6, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I
if-nez v0, :cond_3f
iget-wide v0, v6, Lco/vine/android/widget/ActivityViewHolder;->userId:J
cmp-long v0, v0, v2
if-lez v0, :cond_3f
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-wide v1, v6, Lco/vine/android/widget/ActivityViewHolder;->userId:J
const-string v3, "Activity Feed"
invoke-static {v0, v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V
goto :goto_28
:cond_3f
iget v0, v6, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I
const/4 v1, 0x2
if-ne v0, v1, :cond_56
iget-wide v0, v6, Lco/vine/android/widget/ActivityViewHolder;->notificationId:J
cmp-long v0, v0, v2
if-lez v0, :cond_56
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-wide v1, v6, Lco/vine/android/widget/ActivityViewHolder;->notificationId:J
iget-wide v3, v6, Lco/vine/android/widget/ActivityViewHolder;->anchor:J
invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/UsersActivity;->launchUserListForNotification(Landroid/content/Context;JJ)V
goto :goto_28
:cond_56
iget v0, v6, Lco/vine/android/widget/ActivityViewHolder;->listItemClickType:I
const/4 v1, 0x3
if-ne v0, v1, :cond_28
iget-wide v0, v6, Lco/vine/android/widget/ActivityViewHolder;->postId:J
cmp-long v0, v0, v2
if-lez v0, :cond_28
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-wide v1, v6, Lco/vine/android/widget/ActivityViewHolder;->postId:J
iget-object v3, p0, Lco/vine/android/ActivityFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v3
invoke-static/range {v0 .. v5}, Lco/vine/android/CommentsActivity;->start(Landroid/content/Context;JJZ)V
goto :goto_28
.end method
.method public onMoveAway(I)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onMoveAway(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/ActivityFragment;->mFocused:Z
return-void
.end method
.method public onMoveTo(I)V
.registers 6
const/4 v3, 0x1
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onMoveTo(I)V
iput-boolean v3, p0, Lco/vine/android/ActivityFragment;->mFocused:Z
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "settings_private"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/ActivityFragment;->mPrivate:Z
iget-object v1, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
if-eqz v1, :cond_2d
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->hasPendingRequest()Z
move-result v1
if-nez v1, :cond_2d
iget-object v1, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z
move-result v1
if-eqz v1, :cond_2e
const/4 v1, 0x3
invoke-direct {p0, v1}, Lco/vine/android/ActivityFragment;->fetchContent(I)V
:goto_2d
:cond_2d
return-void
:cond_2e
const/4 v1, 0x2
invoke-direct {p0, v1, v3}, Lco/vine/android/ActivityFragment;->fetchContent(IZ)V
goto :goto_2d
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lco/vine/android/ActivityFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onResume()V
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_13
iget-boolean v0, p0, Lco/vine/android/ActivityFragment;->mFetched:Z
if-nez v0, :cond_13
const/4 v0, 0x3
invoke-direct {p0, v0}, Lco/vine/android/ActivityFragment;->fetchContent(I)V
:cond_13
const-string v1, " - Lco/vine/android/ActivityFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/ActivityFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "state_private"
iget-boolean v1, p0, Lco/vine/android/ActivityFragment;->mPrivate:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lco/vine/android/ActivityFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onScrollLastItem()V
.registers 3
iget-boolean v0, p0, Lco/vine/android/ActivityFragment;->mRefreshable:Z
if-eqz v0, :cond_16
iget v0, p0, Lco/vine/android/ActivityFragment;->mNextPage:I
if-lez v0, :cond_16
iget-object v0, p0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I
move-result v0
const/16 v1, 0x190
if-gt v0, v1, :cond_16
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/ActivityFragment;->fetchContent(I)V
:cond_16
return-void
.end method
.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
.registers 10
const/4 v5, 0x1
packed-switch p2, :pswitch_data_68
:pswitch_4
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_76
:goto_b
return-void
:pswitch_c
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast p3, Ljava/lang/Long;
invoke-virtual {p3}, Ljava/lang/Long;->longValue()J
move-result-wide v1
const-string v3, "Activity Feed"
invoke-static {v0, v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V
goto :goto_b
:pswitch_1c
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast p3, Ljava/lang/String;
invoke-static {v0, p3}, Lco/vine/android/HashtagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_b
:pswitch_26
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
move-object v0, p3
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
const/4 v2, 0x0
aget-object v0, v0, v2
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v2
check-cast p3, [Ljava/lang/Object;
check-cast p3, [Ljava/lang/Object;
aget-object v0, p3, v5
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-static {v1, v2, v3, v4, v5}, Lco/vine/android/UsersActivity;->launchUserListForNotification(Landroid/content/Context;JJ)V
goto :goto_b
:pswitch_48
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast p3, Ljava/lang/Long;
invoke-virtual {p3}, Ljava/lang/Long;->longValue()J
move-result-wide v1
const-wide/16 v3, 0x0
invoke-static/range {v0 .. v5}, Lco/vine/android/CommentsActivity;->start(Landroid/content/Context;JJZ)V
goto :goto_b
:pswitch_58
invoke-virtual {p0}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast p3, Ljava/lang/Long;
invoke-virtual {p3}, Ljava/lang/Long;->longValue()J
move-result-wide v1
const-string v3, "Activity Feed"
invoke-static {v0, v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V
goto :goto_b
:pswitch_data_76
.packed-switch 0x7f0a005e
:pswitch_58
.end packed-switch
:pswitch_data_68
.packed-switch 0x1
:pswitch_c
:pswitch_4
:pswitch_1c
:pswitch_26
:pswitch_48
.end packed-switch
.end method
.method protected refresh()V
.registers 2
const/4 v0, 0x2
invoke-direct {p0, v0}, Lco/vine/android/ActivityFragment;->fetchContent(I)V
return-void
.end method