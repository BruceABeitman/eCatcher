.class public Lcom/facebook/katana/MailboxThreadsActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "MailboxThreadsActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/CheckboxAdapterListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.field private static final COMPOSE_MESSAGE_ID:I = 0x3
.field private static final DELETE_THREAD_ID:I = 0x68
.field private static final DESELECT_ALL_ID:I = 0x5
.field public static final EXTRA_FOLDER:Ljava/lang/String; = "extra_folder"
.field private static final MARK_MESSAGE_AS_READ_ID:I = 0x67
.field private static final MARK_MESSAGE_AS_UNREAD_ID:I = 0x66
.field private static final MAX_MARK_ITEMS:I = 0x14
.field private static final MAX_THREAD_COUNT:I = 0x64
.field private static final PAGE_SIZE:I = 0x14
.field private static final PROGRESS_DELETE_THREADS_DIALOG:I = 0x2
.field private static final PROGRESS_DELETE_THREAD_DIALOG:I = 0x1
.field private static final REFRESH_ID:I = 0x2
.field private static final SELECT_ALL_ID:I = 0x4
.field private static final VIEW_MESSAGES_ID:I = 0x65
.field private mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mDeleteThreadReqId:Ljava/lang/String;
.field private mDeleteThreadsReqId:Ljava/lang/String;
.field private mFirstCell:I
.field private mFolder:I
.field private mLoading:Z
.field private mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
.field private mQueryHandler:Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;
.field private mReceivedGetThreadsResponse:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mLoading:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mReceivedGetThreadsResponse:Z
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mLoading:Z
return-void
.end method
.method static synthetic access$11(Lcom/facebook/katana/MailboxThreadsActivity;Landroid/database/Cursor;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MailboxThreadsActivity;->handleQueryComplete(Landroid/database/Cursor;)V
return-void
.end method
.method static synthetic access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
return-object v0
.end method
.method static synthetic access$13(Lcom/facebook/katana/MailboxThreadsActivity;)I
.registers 2
iget v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
return v0
.end method
.method static synthetic access$14(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
return-void
.end method
.method static synthetic access$15(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mReceivedGetThreadsResponse:Z
return-void
.end method
.method static synthetic access$16(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MailboxThreadsActivity;->showButtonBar(Z)V
return-void
.end method
.method static synthetic access$17(Lcom/facebook/katana/MailboxThreadsActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$18(Lcom/facebook/katana/MailboxThreadsActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadsReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$19(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method private checkToLoadMore(I)V
.registers 8
const/16 v2, 0x64
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCount()I
move-result v0
if-ne p1, v0, :cond_2a
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isMailboxSyncPending(I)Z
move-result v0
if-nez v0, :cond_2a
add-int/lit8 v0, p1, 0x14
if-le v0, v2, :cond_2b
sub-int v4, v2, p1
:goto_1a
if-lez v4, :cond_2a
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
const/4 v5, 0x0
move-object v1, p0
move v3, p1
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->mailboxSync(Landroid/content/Context;IIIZ)Ljava/lang/String;
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
:cond_2a
return-void
:cond_2b
const/16 v4, 0x14
goto :goto_1a
.end method
.method private handleQueryComplete(Landroid/database/Cursor;)V
.registers 9
const/4 v6, 0x1
const/4 v3, 0x0
invoke-virtual {p0, p1}, Lcom/facebook/katana/MailboxThreadsActivity;->startManagingCursor(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v0, p1}, Lcom/facebook/katana/MailboxThreadsAdapter;->changeCursor(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isMailboxSyncPending(I)Z
move-result v0
if-nez v0, :cond_33
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCount()I
move-result v0
if-eqz v0, :cond_20
iget-boolean v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mReceivedGetThreadsResponse:Z
if-nez v0, :cond_2f
:cond_20
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
const/16 v4, 0x14
move-object v1, p0
move v5, v3
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->mailboxSync(Landroid/content/Context;IIIZ)Ljava/lang/String;
invoke-direct {p0, v6}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
:goto_2e
return-void
:cond_2f
invoke-direct {p0, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
goto :goto_2e
:cond_33
invoke-direct {p0, v6}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
goto :goto_2e
.end method
.method private setupEmptyView()V
.registers 3
const v0, 0x7f0b0013
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f080097
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0b0015
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
const v0, 0x7f080091
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private showButtonBar(Z)V
.registers 7
const/16 v4, 0x8
const v2, 0x7f0b006d
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewStub;
if-eqz v1, :cond_3d
invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
const v2, 0x7f0b0068
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/facebook/katana/MailboxThreadsActivity$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/MailboxThreadsActivity$1;-><init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b0069
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/facebook/katana/MailboxThreadsActivity$2;
invoke-direct {v3, p0}, Lcom/facebook/katana/MailboxThreadsActivity$2;-><init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b006a
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/facebook/katana/MailboxThreadsActivity$3;
invoke-direct {v3, p0}, Lcom/facebook/katana/MailboxThreadsActivity$3;-><init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_3d
const v2, 0x7f0b006e
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz p1, :cond_5b
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v2
if-ne v2, v4, :cond_5b
const v2, 0x7f040001
invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:goto_5a
:cond_5a
return-void
:cond_5b
if-nez p1, :cond_5a
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_5a
const/high16 v2, 0x7f04
invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_5a
.end method
.method private showMessages(Landroid/database/Cursor;)V
.registers 8
const/4 v4, 0x1
invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
new-instance v0, Landroid/content/Intent;
const-class v4, Lcom/facebook/katana/MailboxMessagesActivity;
invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget v4, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-static {v4}, Lcom/facebook/katana/provider/MailboxProvider;->getMessagesTidFolderUri(I)Landroid/net/Uri;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v4, "extra_folder"
iget v5, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private showProgress(Z)V
.registers 7
const v4, 0x7f0b0014
const v3, 0x7f0b0013
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
invoke-interface {v0, p1}, Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;->onShowProgress(Z)V
:cond_12
if-eqz p1, :cond_23
invoke-virtual {p0, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v4}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_22
return-void
:cond_23
invoke-virtual {p0, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v4}, Lcom/facebook/katana/MailboxThreadsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_22
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
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v6, 0x1
:try_start_2
invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v2
check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
:try_end_8
.catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_8} :catch_1b
iget-object v4, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v4, v5}, Lcom/facebook/katana/MailboxThreadsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v4
packed-switch v4, :pswitch_data_5a
:goto_19
move v4, v7
:goto_1a
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
:catch_1b
move-exception v4
move-object v1, v4
move v4, v7
goto :goto_1a
:pswitch_1f
invoke-direct {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->showMessages(Landroid/database/Cursor;)V
move v4, v6
goto :goto_1a
:pswitch_24
new-array v3, v6, [J
invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
aput-wide v4, v3, v7
iget-object v4, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v5, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v4, p0, v5, v3, v7}, Lcom/facebook/katana/binding/AppSession;->mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;
goto :goto_19
:pswitch_34
new-array v3, v6, [J
invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
aput-wide v4, v3, v7
iget-object v4, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v5, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v4, p0, v5, v3, v6}, Lcom/facebook/katana/binding/AppSession;->mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;
goto :goto_19
:pswitch_44
new-array v3, v6, [J
invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
aput-wide v4, v3, v7
iget-object v4, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v5, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v4, p0, v3, v5}, Lcom/facebook/katana/binding/AppSession;->mailboxDeleteThread(Landroid/content/Context;[JI)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadReqId:Ljava/lang/String;
invoke-virtual {p0, v6}, Lcom/facebook/katana/MailboxThreadsActivity;->showDialog(I)V
goto :goto_19
:pswitch_data_5a
.packed-switch 0x65
:pswitch_1f
:pswitch_24
:pswitch_34
:pswitch_44
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/facebook/katana/MailboxThreadsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030026
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_18
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_17
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "extra_folder"
const/4 v3, 0x0
invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsActivity;->getListView()Landroid/widget/ListView;
move-result-object v7
new-instance v0, Lcom/facebook/katana/MailboxThreadsAdapter;
iget v3, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v4
new-instance v6, Lcom/facebook/katana/BaseUserSelectionListener;
invoke-direct {v6, p0}, Lcom/facebook/katana/BaseUserSelectionListener;-><init>(Landroid/content/Context;)V
move-object v1, p0
move-object v5, p0
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/MailboxThreadsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/CheckboxAdapterListener;Lcom/facebook/katana/UserSelectionListener;)V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
new-instance v0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;
invoke-direct {v0, p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;-><init>(Lcom/facebook/katana/MailboxThreadsActivity;Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;)V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
new-instance v0, Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;
invoke-direct {v0, p0, p0}, Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;-><init>(Lcom/facebook/katana/MailboxThreadsActivity;Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mQueryHandler:Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;
invoke-direct {p0}, Lcom/facebook/katana/MailboxThreadsActivity;->setupEmptyView()V
goto :goto_17
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
:try_start_1
move-object v0, p3
check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
move-object v3, v0
:try_end_5
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_3d
iget-object v5, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/MailboxThreadsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/database/Cursor;
const/4 v5, 0x7
invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v5
if-lez v5, :cond_3f
const/4 v5, 0x1
move v4, v5
:goto_18
const/4 v5, 0x3
invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
const/16 v5, 0x65
const v6, 0x7f0800a3
invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
if-eqz v4, :cond_41
const/16 v5, 0x67
:goto_2c
if-eqz v4, :cond_44
const v6, 0x7f080093
:goto_31
invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
const/16 v5, 0x68
const v6, 0x7f08008a
invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:goto_3c
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_3d
move-exception v2
goto :goto_3c
:cond_3f
move v4, v7
goto :goto_18
:cond_41
const/16 v5, 0x66
goto :goto_2c
:cond_44
const v6, 0x7f080094
goto :goto_31
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
packed-switch p1, :pswitch_data_3c
const/4 v1, 0x0
:goto_6
return-object v1
:pswitch_7
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v1, 0x7f08008c
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxThreadsActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v1, v0
goto :goto_6
:pswitch_21
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v1, 0x7f08008d
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxThreadsActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v1, v0
goto :goto_6
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_7
:pswitch_21
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/4 v0, 0x2
const v1, 0x7f08009a
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020081
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x3
const v1, 0x7f080089
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02007a
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x4
const v1, 0x7f08009d
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020082
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x5
const v1, 0x7f08008e
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02007b
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v1, p3}, Lcom/facebook/katana/MailboxThreadsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-direct {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->showMessages(Landroid/database/Cursor;)V
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onItemClick"
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
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
const/16 v0, 0x14
if-le p4, v0, :cond_16
const v0, 0x7f080092
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
move v0, v2
:goto_15
return v0
:cond_16
if-lez p4, :cond_1e
move v0, v1
:goto_19
invoke-direct {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->showButtonBar(Z)V
move v0, v1
goto :goto_15
:cond_1e
move v0, v2
goto :goto_19
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v1, 0x14
const/4 v3, 0x0
const/4 v5, 0x1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_5c
:goto_b
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_10
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCount()I
move-result v7
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
if-nez v7, :cond_25
move v4, v1
:goto_1d
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->mailboxSync(Landroid/content/Context;IIIZ)Ljava/lang/String;
invoke-direct {p0, v5}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
goto :goto_b
:cond_25
move v4, v7
goto :goto_1d
:pswitch_27
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/MailboxThreadsAdapter;->getCount()I
move-result v0
if-le v0, v1, :cond_3e
const v0, 0x7f080092
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_b
:cond_3e
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/MailboxThreadsAdapter;->checkAll()V
invoke-direct {p0, v5}, Lcom/facebook/katana/MailboxThreadsActivity;->showButtonBar(Z)V
goto :goto_b
:pswitch_47
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/MailboxThreadsAdapter;->uncheckAll()V
invoke-direct {p0, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->showButtonBar(Z)V
goto :goto_b
:pswitch_50
new-instance v6, Landroid/content/Intent;
const-class v0, Lcom/facebook/katana/MessageComposeActivity;
invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v6}, Lcom/facebook/katana/MailboxThreadsActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_b
nop
:pswitch_data_5c
.packed-switch 0x2
:pswitch_10
:pswitch_50
:pswitch_27
:pswitch_47
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/MailboxThreadsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->isMailboxSyncPending(I)Z
move-result v1
if-eqz v1, :cond_38
move v1, v4
:goto_15
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
const/4 v0, 0x4
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v1}, Lcom/facebook/katana/MailboxThreadsAdapter;->areAllThreadsChecked()Z
move-result v1
if-eqz v1, :cond_3a
move v1, v4
:goto_26
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-virtual {v1}, Lcom/facebook/katana/MailboxThreadsAdapter;->areAnyThreadsChecked()Z
move-result v1
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
return v3
:cond_38
move v1, v3
goto :goto_15
:cond_3a
move v1, v3
goto :goto_26
.end method
.method public onResume()V
.registers 9
const-string v1, " + Lcom/facebook/katana/MailboxThreadsActivity; onResume"
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
iput-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_13
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_12
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadReqId:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadReqId:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxThreadsActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadReqId:Ljava/lang/String;
:cond_26
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadsReqId:Ljava/lang/String;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadsReqId:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadsReqId:Ljava/lang/String;
:cond_3a
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mQueryHandler:Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;
invoke-virtual {p0}, Lcom/facebook/katana/MailboxThreadsActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v3
sget-object v4, Lcom/facebook/katana/MailboxThreadsAdapter$ThreadsQuery;->PROJECTION:[Ljava/lang/String;
move-object v5, v2
move-object v6, v2
move-object v7, v2
invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFirstCell:I
if-eq p2, v0, :cond_a
add-int v0, p2, p3
invoke-direct {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->checkToLoadMore(I)V
:goto_9
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_a
iput p2, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFirstCell:I
goto :goto_9
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxThreadsActivity; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/facebook/katana/MailboxThreadsActivity; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public setProgressListener(Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;)V
.registers 5
const/4 v2, 0x0
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v1, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isMailboxSyncPending(I)Z
move-result v0
if-nez v0, :cond_15
iget-boolean v0, p0, Lcom/facebook/katana/MailboxThreadsActivity;->mLoading:Z
if-eqz v0, :cond_1a
:cond_15
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
:goto_19
return-void
:cond_1a
invoke-direct {p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
goto :goto_19
:cond_1e
invoke-direct {p0, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
goto :goto_19
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