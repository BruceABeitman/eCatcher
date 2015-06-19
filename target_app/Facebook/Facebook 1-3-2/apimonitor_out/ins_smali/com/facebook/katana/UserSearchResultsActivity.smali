.class public Lcom/facebook/katana/UserSearchResultsActivity;
.super Landroid/app/ListActivity;
.source "UserSearchResultsActivity.java"
.implements Lcom/facebook/katana/UsersTabProgressSource;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.field public static final PROGRESS_FLAG_SEARCH:I = 0x2
.field public static final PROGRESS_FLAG_SEARCH_QUERY:I = 0x1
.field private static final SAVED_STATE_LAST_QUERY:Ljava/lang/String; = "query"
.field private static final SAVED_STATE_TOTAL_COUNT:Ljava/lang/String; = "total"
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mCurrentQuery:Ljava/lang/String;
.field private mCurrentQueryId:Ljava/lang/String;
.field private mFirstCell:I
.field private mProgress:I
.field private mProgressListener:Lcom/facebook/katana/TabProgressListener;
.field private mQueryHandler:Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;
.field private mTotalSearchResults:I
.field private mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/UserSearchResultsActivity;IZ)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/katana/UserSearchResultsActivity;->showProgress(IZ)V
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/UserSearchResultsActivity;)Lcom/facebook/katana/UserSearchResultsAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/UserSearchResultsActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQueryId:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/facebook/katana/UserSearchResultsActivity;I)V
.registers 2
iput p1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mTotalSearchResults:I
return-void
.end method
.method private goToProfile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
invoke-static {p0, p1, p2}, Lcom/facebook/katana/ProfileTabHostActivity;->intentForProfile(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v0
const-string v1, "extra_user_first_name"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "extra_user_last_name"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "extra_user_display_name"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "extra_image_url"
invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "extra_user_type"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/UserSearchResultsActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private setupEmptyView()V
.registers 4
const v2, 0x7f0b0013
invoke-virtual {p0, v2}, Lcom/facebook/katana/UserSearchResultsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f0b0015
invoke-virtual {p0, v2}, Lcom/facebook/katana/UserSearchResultsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f08005c
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const v2, 0x7f08005f
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private showProgress(IZ)V
.registers 10
const v6, 0x7f0b0014
const v5, 0x7f0b0013
const/16 v4, 0x8
const/4 v3, 0x0
if-eqz p2, :cond_30
iget v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgress:I
or-int/2addr v1, p1
iput v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgress:I
:goto_10
iget v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgress:I
if-eqz v1, :cond_38
const/4 v1, 0x1
move v0, v1
:goto_16
if-eqz v0, :cond_3a
invoke-virtual {p0, v5}, Lcom/facebook/katana/UserSearchResultsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/facebook/katana/UserSearchResultsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
:goto_26
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v1, :cond_2f
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
invoke-interface {v1, v0}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V
:cond_2f
return-void
:cond_30
iget v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgress:I
xor-int/lit8 v2, p1, -0x1
and-int/2addr v1, v2
iput v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgress:I
goto :goto_10
:cond_38
move v0, v3
goto :goto_16
:cond_3a
invoke-virtual {p0, v5}, Lcom/facebook/katana/UserSearchResultsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/facebook/katana/UserSearchResultsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_26
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/facebook/katana/UserSearchResultsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030013
invoke-virtual {p0, v0}, Lcom/facebook/katana/UserSearchResultsActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_18
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_17
const-string v1, " - Lcom/facebook/katana/UserSearchResultsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
if-eqz p1, :cond_6a
const-string v0, "total"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mTotalSearchResults:I
const-string v0, "query"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
:goto_2a
new-instance v0, Lcom/facebook/katana/UserSearchResultsAdapter;
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;
move-result-object v1
invoke-direct {v0, p0, v2, v1}, Lcom/facebook/katana/UserSearchResultsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/UserSearchResultsActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/facebook/katana/UserSearchResultsActivity;->setupEmptyView()V
new-instance v0, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;
invoke-direct {v0, p0, p0}, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;-><init>(Lcom/facebook/katana/UserSearchResultsActivity;Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mQueryHandler:Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mQueryHandler:Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;
const/4 v1, 0x1
sget-object v3, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri;
move-object v4, v2
move-object v5, v2
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
new-instance v0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;
invoke-direct {v0, p0, v2}, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;-><init>(Lcom/facebook/katana/UserSearchResultsActivity;Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;)V
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {p0}, Lcom/facebook/katana/UserSearchResultsActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/UserSearchResultsActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
goto :goto_17
:cond_6a
const-string v0, ""
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
goto :goto_2a
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/UserSearchResultsActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x2
const/4 v1, 0x1
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-virtual {v0, p3}, Lcom/facebook/katana/UserSearchResultsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/database/Cursor;
invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
move-result v0
if-ge p3, v0, :cond_2c
invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v0, 0x3
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v0, 0x4
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v0, 0x5
invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/UserSearchResultsActivity;->goToProfile(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
:goto_2b
const-string v1, " - Lcom/facebook/katana/UserSearchResultsActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2c
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_2b
invoke-direct {p0, v3, v1}, Lcom/facebook/katana/UserSearchResultsActivity;->showProgress(IZ)V
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
move-result v2
const/16 v3, 0x14
invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->usersSearch(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQueryId:Ljava/lang/String;
goto :goto_2b
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/UserSearchResultsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/ListActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/UserSearchResultsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 9
const-string v1, " + Lcom/facebook/katana/UserSearchResultsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0}, Landroid/app/ListActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_13
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:cond_12
:goto_12
const-string v1, " - Lcom/facebook/katana/UserSearchResultsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/UserSearchResultsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_12
invoke-direct {p0, v1, v1}, Lcom/facebook/katana/UserSearchResultsActivity;->showProgress(IZ)V
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mQueryHandler:Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;
sget-object v3, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri;
sget-object v4, Lcom/facebook/katana/UserSearchResultsAdapter$SearchResultsQuery;->PROJECTION:[Ljava/lang/String;
move-object v5, v2
move-object v6, v2
move-object v7, v2
invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/UserSearchResultsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/katana/UserSearchResultsActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "total"
iget v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mTotalSearchResults:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "query"
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/facebook/katana/UserSearchResultsActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/UserSearchResultsActivity; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mFirstCell:I
if-eq p2, v1, :cond_2c
add-int v0, p2, p3
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-virtual {v1}, Lcom/facebook/katana/UserSearchResultsAdapter;->getCount()I
move-result v1
if-ne v0, v1, :cond_2b
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
if-eqz v1, :cond_2b
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2b
const/4 v1, 0x2
const/4 v2, 0x1
invoke-direct {p0, v1, v2}, Lcom/facebook/katana/UserSearchResultsActivity;->showProgress(IZ)V
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
const/16 v3, 0x14
invoke-virtual {v1, p0, v2, v0, v3}, Lcom/facebook/katana/binding/AppSession;->usersSearch(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQueryId:Ljava/lang/String;
:cond_2b
:goto_2b
const-string v1, " - Lcom/facebook/katana/UserSearchResultsActivity; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2c
iput p2, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mFirstCell:I
goto :goto_2b
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/UserSearchResultsActivity; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/facebook/katana/UserSearchResultsActivity; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSearchRequested()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public search(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1c
iput-object p1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
const/4 v0, 0x2
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/facebook/katana/UserSearchResultsActivity;->showProgress(IZ)V
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQuery:Ljava/lang/String;
const/4 v2, 0x0
const/16 v3, 0x14
invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->usersSearch(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQueryId:Ljava/lang/String;
:cond_1c
return-void
.end method
.method public setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget v1, p0, Lcom/facebook/katana/UserSearchResultsActivity;->mProgress:I
if-eqz v1, :cond_11
const/4 v1, 0x1
:goto_d
invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V
:cond_10
return-void
:cond_11
const/4 v1, 0x0
goto :goto_d
.end method