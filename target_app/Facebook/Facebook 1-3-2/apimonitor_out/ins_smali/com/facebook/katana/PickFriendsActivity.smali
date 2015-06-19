.class public Lcom/facebook/katana/PickFriendsActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "PickFriendsActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/CheckboxAdapterListener;
.field public static final INITIAL_FRIENDS:Ljava/lang/String; = "com.facebook.katana.PickFriendsActivity.initial_friends"
.field public static final RESULT_FRIENDS:Ljava/lang/String; = "com.facebook.katana.PickFriendsActivity.result_friends"
.field private mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mQueryHandler:Lcom/facebook/katana/PickFriendsActivity$QueryHandler;
.field private mRecipientsSummaryTextView:Landroid/widget/TextView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/PickFriendsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/PickFriendsActivity;->showProgress(Z)V
return-void
.end method
.method static synthetic access$11(Lcom/facebook/katana/PickFriendsActivity;Landroid/database/Cursor;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/PickFriendsActivity;->handleQueryComplete(Landroid/database/Cursor;)V
return-void
.end method
.method static synthetic access$12(Lcom/facebook/katana/PickFriendsActivity;)Lcom/facebook/katana/PickFriendsAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
return-object v0
.end method
.method private handleQueryComplete(Landroid/database/Cursor;)V
.registers 4
const/4 v1, 0x1
invoke-virtual {p0, p1}, Lcom/facebook/katana/PickFriendsActivity;->startManagingCursor(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v0, p1}, Lcom/facebook/katana/PickFriendsAdapter;->changeCursor(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->isFriendsSyncPending()Z
move-result v0
if-nez v0, :cond_27
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/PickFriendsAdapter;->getCount()I
move-result v0
if-nez v0, :cond_22
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/AppSession;->syncFriends(Landroid/content/Context;)Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/facebook/katana/PickFriendsActivity;->showProgress(Z)V
:goto_21
return-void
:cond_22
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->showProgress(Z)V
goto :goto_21
:cond_27
invoke-direct {p0, v1}, Lcom/facebook/katana/PickFriendsActivity;->showProgress(Z)V
goto :goto_21
.end method
.method private setupEmptyView()V
.registers 3
const v0, 0x7f0b0013
invoke-virtual {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f08005b
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0b0015
invoke-virtual {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
const v0, 0x7f08005a
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private showButtonBar(Z)V
.registers 7
const/16 v4, 0x8
const v2, 0x7f0b008d
invoke-virtual {p0, v2}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewStub;
if-eqz v1, :cond_2e
invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
const v2, 0x7f0b0083
invoke-virtual {p0, v2}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/facebook/katana/PickFriendsActivity$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/PickFriendsActivity$1;-><init>(Lcom/facebook/katana/PickFriendsActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b0012
invoke-virtual {p0, v2}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/facebook/katana/PickFriendsActivity$2;
invoke-direct {v3, p0}, Lcom/facebook/katana/PickFriendsActivity$2;-><init>(Lcom/facebook/katana/PickFriendsActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_2e
const v2, 0x7f0b008e
invoke-virtual {p0, v2}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz p1, :cond_4c
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v2
if-ne v2, v4, :cond_4c
const v2, 0x7f040001
invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:goto_4b
:cond_4b
return-void
:cond_4c
if-nez p1, :cond_4b
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_4b
const/high16 v2, 0x7f04
invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_4b
.end method
.method private showProgress(Z)V
.registers 7
const v0, 0x7f0b00b2
const v4, 0x7f0b0014
const v3, 0x7f0b0013
const/16 v2, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_24
invoke-virtual {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v3}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v4}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_23
return-void
:cond_24
invoke-virtual {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v3}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v4}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_23
.end method
.method private updateSummaryText()V
.registers 7
const/4 v3, 0x1
iget-object v2, p0, Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v2}, Lcom/facebook/katana/PickFriendsAdapter;->getMarkedFriends()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
if-ne v3, v0, :cond_1a
const v2, 0x7f0800c0
invoke-virtual {p0, v2}, Lcom/facebook/katana/PickFriendsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
:goto_14
iget-object v2, p0, Lcom/facebook/katana/PickFriendsActivity;->mRecipientsSummaryTextView:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_1a
const v2, 0x7f0800ae
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/PickFriendsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_14
.end method
.method public bridge synthetic facebookOnBackPressed()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->facebookOnBackPressed()Z
move-result v0
return v0
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->finish()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/facebook/katana/PickFriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030036
invoke-virtual {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_18
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_17
const-string v1, " - Lcom/facebook/katana/PickFriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
const v0, 0x7f0b00b4
invoke-virtual {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/ImageButton;
const/16 v0, 0x8
invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
invoke-virtual {p0}, Lcom/facebook/katana/PickFriendsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.facebook.katana.PickFriendsActivity.initial_friends"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v5
new-instance v0, Lcom/facebook/katana/PickFriendsAdapter;
iget-object v1, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v3
move-object v1, p0
move-object v4, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/PickFriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/CheckboxAdapterListener;Ljava/util/List;)V
iput-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/PickFriendsActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/facebook/katana/PickFriendsActivity;->setupEmptyView()V
new-instance v0, Lcom/facebook/katana/PickFriendsActivity$QueryHandler;
invoke-direct {v0, p0, p0}, Lcom/facebook/katana/PickFriendsActivity$QueryHandler;-><init>(Lcom/facebook/katana/PickFriendsActivity;Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mQueryHandler:Lcom/facebook/katana/PickFriendsActivity$QueryHandler;
new-instance v0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;
invoke-direct {v0, p0, v2}, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;-><init>(Lcom/facebook/katana/PickFriendsActivity;Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;)V
iput-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {p0}, Lcom/facebook/katana/PickFriendsActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v0, 0x7f0b008c
invoke-virtual {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mRecipientsSummaryTextView:Landroid/widget/TextView;
invoke-direct {p0}, Lcom/facebook/katana/PickFriendsActivity;->updateSummaryText()V
goto :goto_17
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PickFriendsActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-virtual {v0, p3}, Lcom/facebook/katana/PickFriendsAdapter;->flipMarked(I)V
invoke-direct {p0}, Lcom/facebook/katana/PickFriendsActivity;->updateSummaryText()V
const-string v1, " - Lcom/facebook/katana/PickFriendsActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public onMarkChanged(JZI)Z
.registers 7
const/4 v1, 0x1
if-nez p3, :cond_a
if-gtz p4, :cond_a
const/4 v0, 0x0
:goto_6
invoke-direct {p0, v0}, Lcom/facebook/katana/PickFriendsActivity;->showButtonBar(Z)V
return v1
:cond_a
move v0, v1
goto :goto_6
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/PickFriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/PickFriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 9
const-string v1, " + Lcom/facebook/katana/PickFriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_13
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_12
const-string v1, " - Lcom/facebook/katana/PickFriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/PickFriendsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
invoke-direct {p0, v1}, Lcom/facebook/katana/PickFriendsActivity;->showProgress(Z)V
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity;->mQueryHandler:Lcom/facebook/katana/PickFriendsActivity$QueryHandler;
sget-object v3, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;
sget-object v4, Lcom/facebook/katana/PickFriendsAdapter$FriendsQuery;->PROJECTION:[Ljava/lang/String;
move-object v5, v2
move-object v6, v2
move-object v7, v2
invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/PickFriendsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method