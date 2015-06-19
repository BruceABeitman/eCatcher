.class public Lco/vine/android/UserSearchFragment;
.super Lco/vine/android/BaseSearchFragment;
.source "UserSearchFragment.java"
.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "User Search Results"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseSearchFragment;-><init>()V
return-void
.end method
.method public cleanSearchResults()V
.registers 3
iget-object v0, p0, Lco/vine/android/UserSearchFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lco/vine/android/UserSearchFragment$1;
invoke-direct {v1, p0}, Lco/vine/android/UserSearchFragment$1;-><init>(Lco/vine/android/UserSearchFragment;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method protected fetchContent(I)V
.registers 6
invoke-virtual {p0, p1}, Lco/vine/android/UserSearchFragment;->hasPendingRequest(I)Z
move-result v2
if-eqz v2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
packed-switch p1, :pswitch_data_22
const/4 v0, 0x1
:goto_b
iget-object v2, p0, Lco/vine/android/UserSearchFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v3, p0, Lco/vine/android/UserSearchFragment;->mEncodedQueryString:Ljava/lang/String;
invoke-virtual {v2, v3, v0}, Lco/vine/android/client/AppController;->searchUsers(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_6
invoke-virtual {p0, p1}, Lco/vine/android/UserSearchFragment;->showProgress(I)V
invoke-virtual {p0, v1, p1}, Lco/vine/android/UserSearchFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;
goto :goto_6
:pswitch_1c
const/4 v0, 0x1
goto :goto_b
:pswitch_1e
const/4 v0, 0x2
goto :goto_b
:pswitch_20
const/4 v0, 0x3
goto :goto_b
:pswitch_data_22
.packed-switch 0x1
:pswitch_20
:pswitch_1e
:pswitch_1c
:pswitch_1e
.end packed-switch
.end method
.method public getMinimumSearchQueryLength()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 9
const/4 v5, 0x0
const/4 v3, 0x0
invoke-super {p0, p1}, Lco/vine/android/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-nez v0, :cond_20
sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mProjection:[Ljava/lang/String;
const-string v0, "_id ASC"
iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mSortOrder:Ljava/lang/String;
new-instance v0, Lco/vine/android/UsersAdapter;
invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/UserSearchFragment;->mAppController:Lco/vine/android/client/AppController;
move-object v4, p0
move v6, v3
invoke-direct/range {v0 .. v6}, Lco/vine/android/UsersAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V
iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
:cond_20
iget-object v0, p0, Lco/vine/android/UserSearchFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lco/vine/android/UserSearchFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V
new-instance v0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;
invoke-direct {v0, p0, v5}, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;-><init>(Lco/vine/android/UserSearchFragment;Lco/vine/android/UserSearchFragment$1;)V
iput-object v0, p0, Lco/vine/android/UserSearchFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
return-void
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/CursorLoader;
invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_USER_SEARCH_RESULTS:Landroid/net/Uri;
iget-object v3, p0, Lco/vine/android/UserSearchFragment;->mProjection:[Ljava/lang/String;
iget-object v6, p0, Lco/vine/android/UserSearchFragment;->mSortOrder:Ljava/lang/String;
move-object v5, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/UserSearchFragment; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-wide/16 v0, 0x0
cmp-long v0, p4, v0
if-lez v0, :cond_f
invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "User Search Results"
invoke-static {v0, p4, p5, v1}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V
:cond_f
const-string v1, " - Lco/vine/android/UserSearchFragment; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.registers 4
invoke-super {p0, p1, p2}, Lco/vine/android/BaseSearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lco/vine/android/UserSearchFragment;->hideProgress(I)V
return-void
.end method
.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p1, p2}, Lco/vine/android/UserSearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
return-void
.end method
.method protected onScrollLastItem(Landroid/database/Cursor;)V
.registers 4
const/16 v0, 0x11
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-nez v0, :cond_14
invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
move-result v0
const/16 v1, 0x190
if-gt v0, v1, :cond_14
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/UserSearchFragment;->fetchContent(I)V
:cond_14
return-void
.end method
.method public performSearch()V
.registers 2
invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->hideSearchHint()V
invoke-virtual {p0}, Lco/vine/android/UserSearchFragment;->cleanSearchResults()V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lco/vine/android/UserSearchFragment;->fetchContent(I)V
return-void
.end method