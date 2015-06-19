.class public Lcom/facebook/katana/MailboxMessagesActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "MailboxMessagesActivity.java"
.field private static final DELETE_ID:I = 0x4
.field public static final EXTRA_FOLDER:Ljava/lang/String; = "extra_folder"
.field private static final MARK_AS_READ_ID:I = 0x2
.field private static final MARK_AS_UNREAD_ID:I = 0x3
.field private static final PROGRESS_DELETE_THREAD_DIALOG:I = 0x2
.field private static final PROGRESS_REPLY_DIALOG:I = 0x1
.field private static final SCROLLED_STATE_KEY:Ljava/lang/String; = "scrolledToBottom"
.field private static final VIEW_URL_0_ID:I = 0xb
.field private static final VIEW_URL_1_ID:I = 0xc
.field private static final VIEW_URL_2_ID:I = 0xd
.field private mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mCurrentThreadId:J
.field private mDeleteThreadReqId:Ljava/lang/String;
.field private mFolder:I
.field private mQueryHandler:Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;
.field private mScrolledToBottom:Z
.field private mThreadsCursor:Landroid/database/Cursor;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mScrolledToBottom:Z
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/MailboxMessagesActivity;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
return-wide v0
.end method
.method static synthetic access$11(Lcom/facebook/katana/MailboxMessagesActivity;)I
.registers 2
iget v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
return v0
.end method
.method static synthetic access$12(Lcom/facebook/katana/MailboxMessagesActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MailboxMessagesActivity;->showProgress(Z)V
return-void
.end method
.method static synthetic access$13(ILjava/lang/Exception;)Z
.registers 3
invoke-static {p0, p1}, Lcom/facebook/katana/MailboxMessagesActivity;->responseIsPositive(ILjava/lang/Exception;)Z
move-result v0
return v0
.end method
.method static synthetic access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
return-object v0
.end method
.method static synthetic access$15(Lcom/facebook/katana/MailboxMessagesActivity;)Z
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->moveToCurrentThread()Z
move-result v0
return v0
.end method
.method static synthetic access$16(Lcom/facebook/katana/MailboxMessagesActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mDeleteThreadReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$17(Lcom/facebook/katana/MailboxMessagesActivity;J)V
.registers 3
iput-wide p1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
return-void
.end method
.method static synthetic access$18(Lcom/facebook/katana/MailboxMessagesActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->switchToThread()V
return-void
.end method
.method static synthetic access$19(Lcom/facebook/katana/MailboxMessagesActivity;)Lcom/facebook/katana/MailboxMessagesAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
return-object v0
.end method
.method static synthetic access$20(Lcom/facebook/katana/MailboxMessagesActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->handleReply()V
return-void
.end method
.method static synthetic access$9(Lcom/facebook/katana/MailboxMessagesActivity;Landroid/database/Cursor;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/MailboxMessagesActivity;->handleQueryComplete(Landroid/database/Cursor;)V
return-void
.end method
.method private handleQueryComplete(Landroid/database/Cursor;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
invoke-virtual {p0, p1}, Lcom/facebook/katana/MailboxMessagesActivity;->startManagingCursor(Landroid/database/Cursor;)V
invoke-direct {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->moveToCurrentThread()Z
const v0, 0x7f0b0061
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
invoke-interface {v1}, Landroid/database/Cursor;->isFirst()Z
move-result v1
if-eqz v1, :cond_43
move v1, v2
:goto_1a
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
const v0, 0x7f0b0062
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z
move-result v1
if-eqz v1, :cond_45
move v1, v2
:goto_2d
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
const/4 v1, 0x4
if-eq v0, v1, :cond_3f
const v0, 0x7f0b0063
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:cond_3f
invoke-direct {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->switchToThread()V
return-void
:cond_43
move v1, v3
goto :goto_1a
:cond_45
move v1, v3
goto :goto_2d
.end method
.method private handleReply()V
.registers 6
const v2, 0x7f0b0064
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_26
iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v3, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
invoke-virtual {v2, p0, v3, v4, v1}, Lcom/facebook/katana/binding/AppSession;->mailboxReply(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
const/4 v2, 0x1
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->showDialog(I)V
:cond_26
return-void
.end method
.method private moveToCurrentThread()Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_17
:cond_9
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
const/4 v2, 0x0
invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
iget-wide v3, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
cmp-long v1, v1, v3
if-nez v1, :cond_30
const/4 v0, 0x1
:cond_17
:goto_17
if-nez v0, :cond_2f
const-string v1, "moveToCurrentThread"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Thread id not found: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v3, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_2f
return v0
:cond_30
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-nez v1, :cond_9
goto :goto_17
.end method
.method private static responseIsPositive(ILjava/lang/Exception;)Z
.registers 3
const/16 v0, 0xc8
if-ne v0, p0, :cond_8
if-nez p1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private setupEmptyView()V
.registers 3
const v0, 0x7f0b0013
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f080097
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0b0015
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
const v0, 0x7f080091
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private showProgress(Z)V
.registers 9
const v6, 0x7f0b0014
const v5, 0x7f0b0013
const/4 v4, 0x1
const/16 v3, 0x8
const/4 v2, 0x0
const v0, 0x7f0b00b2
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz p1, :cond_28
move v1, v2
:goto_14
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
if-eqz p1, :cond_2a
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:goto_27
:cond_27
return-void
:cond_28
move v1, v3
goto :goto_14
:cond_2a
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v6}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-boolean v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mScrolledToBottom:Z
if-nez v0, :cond_27
invoke-virtual {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
invoke-virtual {v1}, Lcom/facebook/katana/MailboxMessagesAdapter;->getCount()I
move-result v1
sub-int/2addr v1, v4
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
iput-boolean v4, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mScrolledToBottom:Z
goto :goto_27
.end method
.method private switchToThread()V
.registers 14
const/4 v3, 0x0
const/4 v12, 0x0
const/4 v11, 0x1
const v0, 0x7f0b005f
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/TextView;
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
const/4 v1, 0x2
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v10
if-lez v10, :cond_8f
sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
:goto_23
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
const/4 v1, 0x3
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_95
const v0, 0x7f080086
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->getString(I)Ljava/lang/String;
move-result-object v7
:goto_37
const v0, 0x7f0b0060
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
invoke-static {v0}, Lcom/facebook/katana/provider/MailboxProvider;->getMessagesTidFolderUri(I)Landroid/net/Uri;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v4, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/facebook/katana/MailboxMessagesAdapter$MessageQuery;->PROJECTION:[Ljava/lang/String;
move-object v0, p0
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/MailboxMessagesActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
invoke-virtual {v0, v6}, Lcom/facebook/katana/MailboxMessagesAdapter;->changeCursor(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
iget-wide v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isMailboxGetMessagesPending(IJ)Z
move-result v0
if-nez v0, :cond_a7
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/MailboxMessagesAdapter;->getCount()I
move-result v0
if-nez v0, :cond_a3
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
iget-wide v3, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
if-lez v10, :cond_a1
move v5, v11
:goto_87
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->mailboxGetThreadMessages(Landroid/content/Context;IJZ)Ljava/lang/String;
invoke-direct {p0, v11}, Lcom/facebook/katana/MailboxMessagesActivity;->showProgress(Z)V
:goto_8e
return-void
:cond_8f
sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
goto :goto_23
:cond_95
const v0, 0x7f080087
new-array v1, v11, [Ljava/lang/Object;
aput-object v8, v1, v12
invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
goto :goto_37
:cond_a1
move v5, v12
goto :goto_87
:cond_a3
invoke-direct {p0, v12}, Lcom/facebook/katana/MailboxMessagesActivity;->showProgress(Z)V
goto :goto_8e
:cond_a7
invoke-direct {p0, v11}, Lcom/facebook/katana/MailboxMessagesActivity;->showProgress(Z)V
goto :goto_8e
.end method
.method public facebookOnBackPressed()Z
.registers 4
const v2, 0x7f0b0064
invoke-virtual {p0, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z
move-result v2
if-eqz v2, :cond_14
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
const/4 v1, 0x1
:goto_13
return v1
:cond_14
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->facebookOnBackPressed()Z
move-result v1
goto :goto_13
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->finish()V
return-void
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxMessagesActivity; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_20
:goto_7
const/4 v1, 0x1
move v2, v1
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_9
invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:pswitch_data_20
.packed-switch 0xb
:pswitch_9
:pswitch_9
:pswitch_9
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lcom/facebook/katana/MailboxMessagesActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x0
const/4 v8, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V
const v5, 0x7f030023
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->setContentView(I)V
if-eqz p1, :cond_15
const-string v5, "scrolledToBottom"
invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mScrolledToBottom:Z
:cond_15
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v5
iput-object v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v5, :cond_23
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_22
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
invoke-virtual {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
const-string v6, "extra_folder"
invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v5
iput v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
invoke-virtual {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v5
const/4 v6, 0x3
invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v5
iput-wide v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
new-instance v5, Lcom/facebook/katana/MailboxMessagesAdapter;
iget-object v6, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v6}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v6
new-instance v7, Lcom/facebook/katana/BaseUserSelectionListener;
invoke-direct {v7, p0}, Lcom/facebook/katana/BaseUserSelectionListener;-><init>(Landroid/content/Context;)V
invoke-direct {v5, p0, v9, v6, v7}, Lcom/facebook/katana/MailboxMessagesAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/UserSelectionListener;)V
iput-object v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->getListView()Landroid/widget/ListView;
move-result-object v5
iget-object v6, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
const v5, 0x7f0b0064
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/EditText;
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$1;
invoke-direct {v5, p0}, Lcom/facebook/katana/MailboxMessagesActivity$1;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$2;
invoke-direct {v5, p0}, Lcom/facebook/katana/MailboxMessagesActivity$2;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
const v5, 0x7f0b0061
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$3;
invoke-direct {v5, p0}, Lcom/facebook/katana/MailboxMessagesActivity$3;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V
const v5, 0x7f0b0062
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$4;
invoke-direct {v5, p0}, Lcom/facebook/katana/MailboxMessagesActivity$4;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V
const v5, 0x7f0b0063
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
const/16 v6, 0x8
invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
const v5, 0x7f0b0066
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$5;
invoke-direct {v5, p0}, Lcom/facebook/katana/MailboxMessagesActivity$5;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v5, 0x7f0b0067
invoke-virtual {p0, v5}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$6;
invoke-direct {v5, p0}, Lcom/facebook/katana/MailboxMessagesActivity$6;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;
invoke-direct {v5, p0, p0}, Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;Landroid/content/Context;)V
iput-object v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mQueryHandler:Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;
new-instance v5, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;
invoke-direct {v5, p0, v9}, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;)V
iput-object v5, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-direct {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->setupEmptyView()V
invoke-virtual {p0}, Lcom/facebook/katana/MailboxMessagesActivity;->getListView()Landroid/widget/ListView;
move-result-object v5
invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
goto/16 :goto_22
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 16
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxMessagesActivity; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v11, 0x3
const/4 v10, 0x0
:try_start_2
move-object v0, p3
check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
move-object v5, v0
:try_end_6
.catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_6} :catch_2b
iget-object v8, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
iget v9, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v8, v9}, Lcom/facebook/katana/MailboxMessagesAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/database/Cursor;
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string v8, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"
const/4 v9, 0x0
invoke-static {v1, v8, v9, v7, v11}, Lcom/facebook/katana/util/StringUtils;->parseExpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
const/4 v4, 0x0
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_24
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_2d
:goto_2a
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_2b
move-exception v3
goto :goto_2a
:cond_2d
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
packed-switch v4, :pswitch_data_4c
:goto_36
add-int/lit8 v4, v4, 0x1
goto :goto_24
:pswitch_39
const/16 v9, 0xb
invoke-interface {p1, v10, v9, v10, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_36
:pswitch_3f
const/16 v9, 0xc
invoke-interface {p1, v10, v9, v10, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_36
:pswitch_45
const/16 v9, 0xd
invoke-interface {p1, v10, v9, v10, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_36
nop
:pswitch_data_4c
.packed-switch 0x0
:pswitch_39
:pswitch_3f
:pswitch_45
.end packed-switch
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
const v1, 0x7f08009f
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->getText(I)Ljava/lang/CharSequence;
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
const v1, 0x7f08008c
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->getText(I)Ljava/lang/CharSequence;
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
const-string v0, " + Lcom/facebook/katana/MailboxMessagesActivity; onCreateOptionsMenu "
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
const v1, 0x7f080093
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02007e
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x3
const v1, 0x7f080094
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02007f
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x4
const v1, 0x7f08008a
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x108003c
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
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
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MailboxMessagesActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/4 v3, 0x0
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_40
:goto_9
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
move v2, v1
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_e
new-array v0, v4, [J
iget-wide v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
aput-wide v1, v0, v3
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
invoke-virtual {v1, p0, v2, v0, v4}, Lcom/facebook/katana/binding/AppSession;->mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;
goto :goto_9
:pswitch_1c
new-array v0, v4, [J
iget-wide v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
aput-wide v1, v0, v3
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
invoke-virtual {v1, p0, v2, v0, v3}, Lcom/facebook/katana/binding/AppSession;->mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;
goto :goto_9
:pswitch_2a
new-array v0, v4, [J
iget-wide v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
aput-wide v1, v0, v3
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
invoke-virtual {v1, p0, v0, v2}, Lcom/facebook/katana/binding/AppSession;->mailboxDeleteThread(Landroid/content/Context;[JI)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mDeleteThreadReqId:Ljava/lang/String;
const/4 v1, 0x2
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->showDialog(I)V
goto :goto_9
nop
:pswitch_data_40
.packed-switch 0x2
:pswitch_e
:pswitch_1c
:pswitch_2a
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/MailboxMessagesActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 8
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
if-eqz v2, :cond_2a
iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v2
if-nez v2, :cond_26
move v0, v4
:goto_13
invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v2
if-eqz v0, :cond_28
:goto_19
invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
const/4 v2, 0x3
invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v2
invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
const/4 v1, 0x1
:goto_25
return v1
:cond_26
move v0, v3
goto :goto_13
:cond_28
move v3, v4
goto :goto_19
:cond_2a
const/4 v1, 0x0
goto :goto_25
.end method
.method public onResume()V
.registers 9
const-string v1, " + Lcom/facebook/katana/MailboxMessagesActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_12
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_11
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mDeleteThreadReqId:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mDeleteThreadReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxMessagesActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mDeleteThreadReqId:Ljava/lang/String;
:cond_26
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mQueryHandler:Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;
const/4 v1, 0x1
iget v3, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
invoke-static {v3}, Lcom/facebook/katana/provider/MailboxProvider;->getThreadsFolderUri(I)Landroid/net/Uri;
move-result-object v3
sget-object v4, Lcom/facebook/katana/MailboxMessagesActivity$ThreadsQuery;->PROJECTION:[Ljava/lang/String;
move-object v5, v2
move-object v6, v2
move-object v7, v2
invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/katana/MailboxMessagesActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "scrolledToBottom"
iget-boolean v1, p0, Lcom/facebook/katana/MailboxMessagesActivity;->mScrolledToBottom:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lcom/facebook/katana/MailboxMessagesActivity; onSaveInstanceState"
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