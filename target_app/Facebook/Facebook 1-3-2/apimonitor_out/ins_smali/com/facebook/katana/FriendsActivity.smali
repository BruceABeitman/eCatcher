.class public Lcom/facebook/katana/FriendsActivity;
.super Landroid/app/ListActivity;
.source "FriendsActivity.java"
.implements Lcom/facebook/katana/UsersTabProgressSource;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field public static final PROGRESS_FLAG_FRIENDS_QUERY:I = 0x1
.field public static final PROGRESS_FLAG_FRIENDS_SYNC:I = 0x2
.field private static final SAVED_STATE_LAST_QUERY:Ljava/lang/String; = "query"
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mCurrentQuery:Ljava/lang/String;
.field private mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
.field private mProgress:I
.field private mProgressListener:Lcom/facebook/katana/TabProgressListener;
.field private mQueryHandler:Lcom/facebook/katana/FriendsActivity$QueryHandler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/FriendsActivity;IZ)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/katana/FriendsActivity;->showProgress(IZ)V
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method static synthetic access$3(Lcom/facebook/katana/FriendsActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mCurrentQuery:Ljava/lang/String;
return-object v0
.end method
.method private goToProfile(J)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfile(Landroid/content/Context;J)V
return-void
.end method
.method private setupEmptyView()V
.registers 4
const v2, 0x7f0b0013
invoke-virtual {p0, v2}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f0b0015
invoke-virtual {p0, v2}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f08005b
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const v2, 0x7f08005a
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
iget v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgress:I
or-int/2addr v1, p1
iput v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgress:I
:goto_10
iget v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgress:I
if-eqz v1, :cond_38
const/4 v1, 0x1
move v0, v1
:goto_16
if-eqz v0, :cond_3a
invoke-virtual {p0, v5}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
:goto_26
iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v1, :cond_2f
iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
invoke-interface {v1, v0}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V
:cond_2f
return-void
:cond_30
iget v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgress:I
xor-int/lit8 v2, p1, -0x1
and-int/2addr v1, v2
iput v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgress:I
goto :goto_10
:cond_38
move v0, v3
goto :goto_16
:cond_3a
invoke-virtual {p0, v5}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/facebook/katana/FriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_26
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/facebook/katana/FriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030013
invoke-virtual {p0, v0}, Lcom/facebook/katana/FriendsActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_18
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_17
const-string v1, " - Lcom/facebook/katana/FriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
if-eqz p1, :cond_5b
const-string v0, "query"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mCurrentQuery:Ljava/lang/String;
:goto_22
new-instance v0, Lcom/facebook/katana/FriendsAdapter;
iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v2
invoke-direct {v0, p0, v3, v1, v2}, Lcom/facebook/katana/FriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Lcom/facebook/katana/binding/UserImagesCache;)V
iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/facebook/katana/FriendsActivity;->setupEmptyView()V
new-instance v0, Lcom/facebook/katana/FriendsActivity$QueryHandler;
invoke-direct {v0, p0, p0}, Lcom/facebook/katana/FriendsActivity$QueryHandler;-><init>(Lcom/facebook/katana/FriendsActivity;Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mQueryHandler:Lcom/facebook/katana/FriendsActivity$QueryHandler;
new-instance v0, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;
invoke-direct {v0, p0, v3}, Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;-><init>(Lcom/facebook/katana/FriendsActivity;Lcom/facebook/katana/FriendsActivity$FriendsAppSessionListener;)V
iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {p0}, Lcom/facebook/katana/FriendsActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
goto :goto_17
:cond_5b
const-string v0, ""
iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mCurrentQuery:Ljava/lang/String;
goto :goto_22
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FriendsActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
invoke-virtual {v1, p3}, Lcom/facebook/katana/FriendsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
invoke-direct {p0, v1, v2}, Lcom/facebook/katana/FriendsActivity;->goToProfile(J)V
const-string v1, " - Lcom/facebook/katana/FriendsActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/FriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/ListActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/FriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 9
const-string v1, " + Lcom/facebook/katana/FriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const/4 v1, 0x1
invoke-super {p0}, Landroid/app/ListActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_13
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:cond_12
:goto_12
const-string v1, " - Lcom/facebook/katana/FriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/FriendsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/FriendsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_12
invoke-direct {p0, v1, v1}, Lcom/facebook/katana/FriendsActivity;->showProgress(IZ)V
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mQueryHandler:Lcom/facebook/katana/FriendsActivity$QueryHandler;
sget-object v3, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;
sget-object v4, Lcom/facebook/katana/FriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;
const-string v5, "display_name IS NOT NULL"
move-object v6, v2
move-object v7, v2
invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/FriendsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method public onSearchRequested()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public search(Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/FriendsActivity;->mCurrentQuery:Ljava/lang/String;
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mFriendsAdapter:Lcom/facebook/katana/FriendsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/FriendsAdapter;->getFilter()Landroid/widget/Filter;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/FriendsActivity;->mCurrentQuery:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/FriendsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/katana/FriendsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget v1, p0, Lcom/facebook/katana/FriendsActivity;->mProgress:I
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