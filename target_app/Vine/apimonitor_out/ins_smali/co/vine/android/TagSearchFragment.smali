.class public Lco/vine/android/TagSearchFragment;
.super Lco/vine/android/BaseSearchFragment;
.source "TagSearchFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseSearchFragment;-><init>()V
return-void
.end method
.method public cleanSearchResults()V
.registers 3
iget-object v0, p0, Lco/vine/android/TagSearchFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lco/vine/android/TagSearchFragment$1;
invoke-direct {v1, p0}, Lco/vine/android/TagSearchFragment$1;-><init>(Lco/vine/android/TagSearchFragment;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method protected fetchContent(I)V
.registers 6
invoke-virtual {p0, p1}, Lco/vine/android/TagSearchFragment;->hasPendingRequest(I)Z
move-result v2
if-eqz v2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
packed-switch p1, :pswitch_data_22
const/4 v0, 0x1
:goto_b
iget-object v2, p0, Lco/vine/android/TagSearchFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v3, p0, Lco/vine/android/TagSearchFragment;->mEncodedQueryString:Ljava/lang/String;
invoke-virtual {v2, v3, v0}, Lco/vine/android/client/AppController;->searchTags(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_6
invoke-virtual {p0, p1}, Lco/vine/android/TagSearchFragment;->showProgress(I)V
invoke-virtual {p0, v1, p1}, Lco/vine/android/TagSearchFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;
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
const/4 v0, 0x3
return v0
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lco/vine/android/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/TagSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-nez v0, :cond_1d
sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$TagsQuery;->PROJECTION:[Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/TagSearchFragment;->mProjection:[Ljava/lang/String;
const-string v0, "_id ASC"
iput-object v0, p0, Lco/vine/android/TagSearchFragment;->mSortOrder:Ljava/lang/String;
new-instance v0, Lco/vine/android/TagsAdapter;
invoke-virtual {p0}, Lco/vine/android/TagSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/TagSearchFragment;->mAppController:Lco/vine/android/client/AppController;
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lco/vine/android/TagsAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;I)V
iput-object v0, p0, Lco/vine/android/TagSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
:cond_1d
iget-object v0, p0, Lco/vine/android/TagSearchFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/TagSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v0, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lco/vine/android/TagSearchFragment$TagSearchSessionListener;-><init>(Lco/vine/android/TagSearchFragment;Lco/vine/android/TagSearchFragment$1;)V
iput-object v0, p0, Lco/vine/android/TagSearchFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
return-void
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/CursorLoader;
invoke-virtual {p0}, Lco/vine/android/TagSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;
iget-object v3, p0, Lco/vine/android/TagSearchFragment;->mProjection:[Ljava/lang/String;
iget-object v6, p0, Lco/vine/android/TagSearchFragment;->mSortOrder:Ljava/lang/String;
move-object v5, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/TagSearchFragment; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
instance-of v3, v2, Lco/vine/android/widget/TagViewHolder;
if-eqz v3, :cond_1a
move-object v0, v2
check-cast v0, Lco/vine/android/widget/TagViewHolder;
invoke-virtual {p0}, Lco/vine/android/TagSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const-string v4, "tag"
iget-object v5, v0, Lco/vine/android/widget/TagViewHolder;->tagName:Ljava/lang/String;
invoke-static {v3, v4, v5}, Lco/vine/android/ExploreVideoListActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {p0, v1}, Lco/vine/android/TagSearchFragment;->startActivity(Landroid/content/Intent;)V
:cond_1a
const-string v1, " - Lco/vine/android/TagSearchFragment; onListItemClick"
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
invoke-virtual {p0, v0}, Lco/vine/android/TagSearchFragment;->hideProgress(I)V
return-void
.end method
.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p1, p2}, Lco/vine/android/TagSearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
return-void
.end method
.method protected onScrollLastItem(Landroid/database/Cursor;)V
.registers 4
const/4 v0, 0x4
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-nez v0, :cond_13
invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
move-result v0
const/16 v1, 0x190
if-gt v0, v1, :cond_13
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/TagSearchFragment;->fetchContent(I)V
:cond_13
return-void
.end method
.method public performSearch()V
.registers 2
invoke-virtual {p0}, Lco/vine/android/TagSearchFragment;->hideSearchHint()V
invoke-virtual {p0}, Lco/vine/android/TagSearchFragment;->cleanSearchResults()V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lco/vine/android/TagSearchFragment;->fetchContent(I)V
return-void
.end method