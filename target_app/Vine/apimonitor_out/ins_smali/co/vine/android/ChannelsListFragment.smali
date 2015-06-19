.class public Lco/vine/android/ChannelsListFragment;
.super Lco/vine/android/BaseCursorListFragment;
.source "ChannelsListFragment.java"
.implements Landroid/view/View$OnClickListener;
.field public static final ARG_SELECTED_CHANNEL:Ljava/lang/String; = "selected_channel"
.field private mCallback:Lco/vine/android/ChannelsListActivity;
.field private mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;
.field private mFetched:Z
.field private mSelectedChannel:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseCursorListFragment;-><init>()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/ChannelsListFragment;)J
.registers 3
iget-wide v0, p0, Lco/vine/android/ChannelsListFragment;->mSelectedChannel:J
return-wide v0
.end method
.method private fetchContent(I)V
.registers 4
invoke-virtual {p0, p1}, Lco/vine/android/ChannelsListFragment;->hasPendingRequest(I)Z
move-result v1
if-eqz v1, :cond_7
:goto_6
return-void
:cond_7
packed-switch p1, :pswitch_data_1c
const/4 v0, 0x1
:goto_b
iget-object v1, p0, Lco/vine/android/ChannelsListFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1, v0}, Lco/vine/android/client/AppController;->fetchChannels(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1, p1}, Lco/vine/android/ChannelsListFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;
const/4 v1, 0x1
iput-boolean v1, p0, Lco/vine/android/ChannelsListFragment;->mFetched:Z
goto :goto_6
:pswitch_18
const/4 v0, 0x2
goto :goto_b
:pswitch_1a
const/4 v0, 0x3
goto :goto_b
:pswitch_data_1c
.packed-switch 0x1
:pswitch_1a
:pswitch_18
.end packed-switch
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onActivityCreated(Landroid/os/Bundle;)V
iget-object v1, p0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-nez v1, :cond_15
new-instance v1, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;
invoke-virtual {p0}, Lco/vine/android/ChannelsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lco/vine/android/ChannelsListFragment;->mAppController:Lco/vine/android/client/AppController;
const/4 v4, 0x0
invoke-direct {v1, p0, v2, v3, v4}, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;-><init>(Lco/vine/android/ChannelsListFragment;Landroid/content/Context;Lco/vine/android/client/AppController;I)V
iput-object v1, p0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
:cond_15
iget-object v0, p0, Lco/vine/android/ChannelsListFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {p0}, Lco/vine/android/ChannelsListFragment;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090026
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V
iget-object v1, p0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onAttach(Landroid/app/Activity;)V
move-object v0, p1
check-cast v0, Lco/vine/android/ChannelsListActivity;
iput-object v0, p0, Lco/vine/android/ChannelsListFragment;->mCallback:Lco/vine/android/ChannelsListActivity;
invoke-static {p1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v0
iput-object v0, p0, Lco/vine/android/ChannelsListFragment;->mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ChannelsListFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/ChannelsListFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lco/vine/android/ChannelsListFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v1, Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;
invoke-direct {v1, p0}, Lco/vine/android/ChannelsListFragment$ChannelsListSessionListener;-><init>(Lco/vine/android/ChannelsListFragment;)V
iput-object v1, p0, Lco/vine/android/ChannelsListFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
invoke-virtual {p0}, Lco/vine/android/ChannelsListFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "selected_channel"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Lco/vine/android/ChannelsListFragment;->mSelectedChannel:J
const-string v1, " - Lco/vine/android/ChannelsListFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/CursorLoader;
invoke-virtual {p0}, Lco/vine/android/ChannelsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lco/vine/android/provider/Vine$Channels;->CONTENT_URI:Landroid/net/Uri;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$ChannelsQuery;->PROJECTION:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ChannelsListFragment; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v4, p0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v4}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v3
if-eqz v3, :cond_22
invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z
move-result v4
if-eqz v4, :cond_22
const/4 v4, 0x1
invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const/4 v4, 0x2
invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v4, p0, Lco/vine/android/ChannelsListFragment;->mCallback:Lco/vine/android/ChannelsListActivity;
invoke-virtual {v4, v1, v2, v0}, Lco/vine/android/ChannelsListActivity;->onChannelSelected(JLjava/lang/String;)V
iget-object v4, p0, Lco/vine/android/ChannelsListFragment;->mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;
invoke-virtual {v4, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->markChannelLastUsedTimestamp(J)V
:cond_22
const-string v1, " - Lco/vine/android/ChannelsListFragment; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.registers 4
invoke-super {p0, p1, p2}, Lco/vine/android/BaseCursorListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
iget-boolean v0, p0, Lco/vine/android/ChannelsListFragment;->mFetched:Z
if-eqz v0, :cond_17
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lco/vine/android/ChannelsListFragment;->hideProgress(I)V
iget-object v0, p0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/ChannelsListFragment;->showSadface(Z)V
:cond_17
:goto_17
return-void
:cond_18
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/ChannelsListFragment;->showSadface(Z)V
goto :goto_17
.end method
.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p1, p2}, Lco/vine/android/ChannelsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lco/vine/android/ChannelsListFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onResume()V
iget-object v0, p0, Lco/vine/android/ChannelsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_e
invoke-virtual {p0}, Lco/vine/android/ChannelsListFragment;->initLoader()V
:cond_e
iget-boolean v0, p0, Lco/vine/android/ChannelsListFragment;->mFetched:Z
if-nez v0, :cond_16
const/4 v0, 0x3
invoke-direct {p0, v0}, Lco/vine/android/ChannelsListFragment;->fetchContent(I)V
:cond_16
const-string v1, " - Lco/vine/android/ChannelsListFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onScrollLastItem(Landroid/database/Cursor;)V
.registers 3
iget-boolean v0, p0, Lco/vine/android/ChannelsListFragment;->mRefreshable:Z
if-eqz v0, :cond_f
const/4 v0, 0x7
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-nez v0, :cond_f
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/ChannelsListFragment;->fetchContent(I)V
:cond_f
return-void
.end method