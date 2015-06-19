.class public Lco/vine/android/UploadsListFragment;
.super Lco/vine/android/BaseCursorListFragment;
.source "UploadsListFragment.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.field private static final DIALOG_CONFIRM_DELETE:I = 0x1
.field private static final TAG:Ljava/lang/String; = "UploadsListFragment"
.field private mBound:Z
.field private mConnection:Landroid/content/ServiceConnection;
.field private mIncomingMessenger:Landroid/os/Messenger;
.field private mPath:Ljava/lang/String;
.field private mProgressView:Lco/vine/android/recorder/ProgressView;
.field private mProgressViewWidth:I
.field private mReference:Ljava/lang/String;
.field private mRefreshIcon:Landroid/widget/ImageView;
.field private mServiceMessenger:Landroid/os/Messenger;
.field private mStatusMessage:Landroid/widget/TextView;
.field private mVersions:[Lco/vine/android/recorder/RecordSessionVersion;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseCursorListFragment;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/UploadsListFragment;->mProgressViewWidth:I
return-void
.end method
.method static synthetic access$102(Lco/vine/android/UploadsListFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
.registers 2
iput-object p1, p0, Lco/vine/android/UploadsListFragment;->mServiceMessenger:Landroid/os/Messenger;
return-object p1
.end method
.method static synthetic access$202(Lco/vine/android/UploadsListFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/UploadsListFragment;->mBound:Z
return p1
.end method
.method static synthetic access$300(Lco/vine/android/UploadsListFragment;)Landroid/os/Messenger;
.registers 2
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mIncomingMessenger:Landroid/os/Messenger;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/UploadsListFragment;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/UploadsListFragment;->sendMessage(Landroid/os/Message;)V
return-void
.end method
.method static synthetic access$500(Lco/vine/android/UploadsListFragment;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mStatusMessage:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/UploadsListFragment;)Lco/vine/android/recorder/ProgressView;
.registers 2
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/UploadsListFragment;)I
.registers 2
iget v0, p0, Lco/vine/android/UploadsListFragment;->mProgressViewWidth:I
return v0
.end method
.method static synthetic access$702(Lco/vine/android/UploadsListFragment;I)I
.registers 2
iput p1, p0, Lco/vine/android/UploadsListFragment;->mProgressViewWidth:I
return p1
.end method
.method static synthetic access$800(Lco/vine/android/UploadsListFragment;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/UploadsListFragment;->resetFailedUpload()V
return-void
.end method
.method static synthetic access$900(Lco/vine/android/UploadsListFragment;Landroid/database/Cursor;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/UploadsListFragment;->handleRetryPost(Landroid/database/Cursor;Z)V
return-void
.end method
.method private handleRetryPost(Landroid/database/Cursor;Z)V
.registers 14
const/4 v0, 0x1
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/UploadsListFragment;->mPath:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mPath:Ljava/lang/String;
invoke-static {v0, p1}, Lco/vine/android/api/VineUpload;->fromCursor(Ljava/lang/String;Landroid/database/Cursor;)Lco/vine/android/api/VineUpload;
move-result-object v10
if-nez v9, :cond_2f
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, v10, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
iget-object v2, v10, Lco/vine/android/api/VineUpload;->hash:Ljava/lang/String;
iget-object v3, v10, Lco/vine/android/api/VineUpload;->thumbnailPath:Ljava/lang/String;
iget-object v4, v10, Lco/vine/android/api/VineUpload;->reference:Ljava/lang/String;
const/4 v5, 0x0
const-wide/16 v6, -0x1
invoke-static/range {v0 .. v7}, Lco/vine/android/service/VineUploadService;->getUploadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)Landroid/content/Intent;
move-result-object v8
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:goto_2e
return-void
:cond_2f
iget-object v0, v10, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_4f
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, v10, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
iget-object v2, v10, Lco/vine/android/api/VineUpload;->thumbnailPath:Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x1
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Lco/vine/android/PostActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
move-result-object v8
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v8, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_2e
:cond_4f
iget-object v0, v10, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_59
if-eqz p2, :cond_6a
:cond_59
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v10, v1}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Lco/vine/android/api/VineUpload;Z)Landroid/content/Intent;
move-result-object v8
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_2e
:cond_6a
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/UploadsListFragment;->mPath:Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
iget-object v5, v10, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;
invoke-virtual/range {v0 .. v5}, Lco/vine/android/PendingRequestHelper;->onCaptchaRequired(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
goto :goto_2e
.end method
.method private resetFailedUpload()V
.registers 3
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mStatusMessage:Landroid/widget/TextView;
if-eqz v0, :cond_24
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mRefreshIcon:Landroid/widget/ImageView;
if-eqz v0, :cond_24
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
if-eqz v0, :cond_24
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mStatusMessage:Landroid/widget/TextView;
const v1, 0x7f0e025e
invoke-virtual {p0, v1}, Lco/vine/android/UploadsListFragment;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mRefreshIcon:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProgressView;->setProgressRatio(F)V
:cond_24
return-void
.end method
.method private sendMessage(Landroid/os/Message;)V
.registers 3
:try_start_0
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mServiceMessenger:Landroid/os/Messenger;
invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:goto_5
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method protected createPendingRequestHelper()Lco/vine/android/PendingRequestHelper;
.registers 2
new-instance v0, Lco/vine/android/UploadsListFragment$UploadListPendingRequestHelper;
invoke-direct {v0, p0}, Lco/vine/android/UploadsListFragment$UploadListPendingRequestHelper;-><init>(Lco/vine/android/UploadsListFragment;)V
return-object v0
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 11
const/4 v8, 0x0
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v5, p0, Lco/vine/android/UploadsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-nez v5, :cond_15
new-instance v5, Lco/vine/android/UploadsAdapter;
iget-object v6, p0, Lco/vine/android/UploadsListFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-direct {v5, v0, v6, v8}, Lco/vine/android/UploadsAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;I)V
iput-object v5, p0, Lco/vine/android/UploadsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
:try_start_15
:cond_15
invoke-static {v0}, Lco/vine/android/recorder/RecordSessionVersion;->getValuesWithManagers(Landroid/content/Context;)[Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v5
iput-object v5, p0, Lco/vine/android/UploadsListFragment;->mVersions:[Lco/vine/android/recorder/RecordSessionVersion;
:goto_1b
:try_end_1b
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_57
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v5
const v6, 0x7f03009e
iget-object v7, p0, Lco/vine/android/UploadsListFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
const v5, 0x7f0a004a
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const v5, 0x7f0e025b
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V
iget-object v4, p0, Lco/vine/android/UploadsListFragment;->mListView:Landroid/widget/ListView;
const/4 v5, 0x0
invoke-virtual {v4, v2, v5, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f090093
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v5
invoke-virtual {v4, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V
invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDividerHeight(I)V
invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v5, p0, Lco/vine/android/UploadsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
:catch_57
move-exception v1
const v5, 0x7f0e0231
invoke-static {v0, v5}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_1b
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lco/vine/android/UploadsListFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/PendingRequestHelper;->onActivityResult(IILandroid/content/Intent;)Z
move-result v0
if-nez v0, :cond_d
if-nez p2, :cond_d
invoke-direct {p0}, Lco/vine/android/UploadsListFragment;->resetFailedUpload()V
:cond_d
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/UploadsListFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/UploadsListFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lco/vine/android/UploadsListFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Messenger;
new-instance v1, Lco/vine/android/UploadsListFragment$UploadProgressHandler;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lco/vine/android/UploadsListFragment$UploadProgressHandler;-><init>(Lco/vine/android/UploadsListFragment;Lco/vine/android/UploadsListFragment$1;)V
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lco/vine/android/UploadsListFragment;->mIncomingMessenger:Landroid/os/Messenger;
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/UploadsListFragment;->mBound:Z
new-instance v0, Lco/vine/android/UploadsListFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/UploadsListFragment$1;-><init>(Lco/vine/android/UploadsListFragment;)V
iput-object v0, p0, Lco/vine/android/UploadsListFragment;->mConnection:Landroid/content/ServiceConnection;
const-string v1, " - Lco/vine/android/UploadsListFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 11
const/4 v1, 0x2
const-string v7, "status=? AND is_private=?"
new-array v5, v1, [Ljava/lang/String;
const/4 v0, 0x0
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v5, v0
const/4 v0, 0x1
const-string v1, "0"
aput-object v1, v5, v0
new-instance v0, Landroid/support/v4/content/CursorLoader;
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;
sget-object v3, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "status=? AND is_private=?"
const-string v6, "_id ASC"
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 8
packed-switch p2, :pswitch_data_32
:goto_3
:pswitch_3
return-void
:pswitch_4
packed-switch p3, :pswitch_data_38
goto :goto_3
:pswitch_8
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
:try_start_10
iget-object v2, p0, Lco/vine/android/UploadsListFragment;->mReference:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_1d
iget-object v2, p0, Lco/vine/android/UploadsListFragment;->mReference:Ljava/lang/String;
invoke-static {v0, v2}, Lco/vine/android/recorder/RecordSessionVersion;->deleteSessionWithName(Landroid/content/Context;Ljava/lang/String;)V
:goto_1d
:try_end_1d
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_1d} :catch_2b
:cond_1d
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lco/vine/android/UploadsListFragment;->mPath:Ljava/lang/String;
invoke-static {v0, v3}, Lco/vine/android/service/VineUploadService;->getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_3
:catch_2b
move-exception v1
const-string v2, "Failed to delete session."
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_1d
:pswitch_data_32
.packed-switch 0x1
:pswitch_4
.end packed-switch
:pswitch_data_38
.packed-switch -0x2
:pswitch_3
:pswitch_8
.end packed-switch
.end method
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/UploadsListFragment; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
iget-object v3, p0, Lco/vine/android/UploadsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
check-cast p1, Landroid/widget/ListView;
invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v3
sub-int v3, p3, v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z
move-result v3
if-eqz v3, :cond_44
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lco/vine/android/UploadsListFragment;->mPath:Ljava/lang/String;
const/16 v3, 0xb
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lco/vine/android/UploadsListFragment;->mReference:Ljava/lang/String;
invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v1
invoke-virtual {v1, p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V
const v3, 0x7f0e00af
invoke-virtual {v1, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v3, 0x7f0e0288
invoke-virtual {v1, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v3, 0x7f0e0057
invoke-virtual {v1, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v1, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
:goto_43
const-string v1, " - Lco/vine/android/UploadsListFragment; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
:cond_44
const/4 v2, 0x0
goto :goto_43
.end method
.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/UploadsListFragment; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v4, p0, Lco/vine/android/UploadsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v4}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v4
sub-int v3, p3, v4
if-nez v3, :cond_53
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v4
if-eqz v4, :cond_53
const/4 v4, 0x1
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lco/vine/android/UploadsListFragment;->mPath:Ljava/lang/String;
const v4, 0x7f0a00c6
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Lco/vine/android/recorder/ProgressView;
iput-object v4, p0, Lco/vine/android/UploadsListFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
const v4, 0x7f0a0229
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
const/16 v4, 0x8
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iput-object v1, p0, Lco/vine/android/UploadsListFragment;->mRefreshIcon:Landroid/widget/ImageView;
const v4, 0x7f0a0228
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
const v4, 0x7f0e0261
invoke-virtual {p0, v4}, Lco/vine/android/UploadsListFragment;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iput-object v2, p0, Lco/vine/android/UploadsListFragment;->mStatusMessage:Landroid/widget/TextView;
const/4 v4, 0x0
invoke-direct {p0, v0, v4}, Lco/vine/android/UploadsListFragment;->handleRetryPost(Landroid/database/Cursor;Z)V
:cond_53
const-string v1, " - Lco/vine/android/UploadsListFragment; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Lco/vine/android/BaseCursorListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lco/vine/android/UploadsListFragment;->hideProgress(I)V
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->isEmpty()Z
move-result v0
if-eqz v0, :cond_22
const/4 v0, 0x1
invoke-virtual {p0, v0, v1}, Lco/vine/android/UploadsListFragment;->showSadface(ZZ)V
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/service/VineUploadService;->getClearNotificationsIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:goto_21
return-void
:cond_22
invoke-virtual {p0, v1}, Lco/vine/android/UploadsListFragment;->showSadface(Z)V
goto :goto_21
.end method
.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p1, p2}, Lco/vine/android/UploadsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lco/vine/android/UploadsListFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onPause()V
iget-boolean v0, p0, Lco/vine/android/UploadsListFragment;->mBound:Z
if-eqz v0, :cond_23
const-string v0, "UploadsListFragment"
const-string v1, "Will unbind from VineUploadService now"
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
const/4 v1, 0x2
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/UploadsListFragment;->sendMessage(Landroid/os/Message;)V
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/UploadsListFragment;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/UploadsListFragment;->mBound:Z
:cond_23
const-string v1, " - Lco/vine/android/UploadsListFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lco/vine/android/UploadsListFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onResume()V
iget-object v1, p0, Lco/vine/android/UploadsListFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v1
if-nez v1, :cond_e
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->initLoader()V
:cond_e
iget-boolean v1, p0, Lco/vine/android/UploadsListFragment;->mBound:Z
if-nez v1, :cond_2e
const-string v1, "UploadsListFragment"
const-string v2, "Will bind to VineUploadService now"
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lco/vine/android/service/VineUploadService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0}, Lco/vine/android/UploadsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/UploadsListFragment;->mConnection:Landroid/content/ServiceConnection;
const/4 v3, 0x1
invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:cond_2e
const-string v1, " - Lco/vine/android/UploadsListFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method