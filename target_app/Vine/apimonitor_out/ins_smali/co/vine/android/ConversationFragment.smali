.class public Lco/vine/android/ConversationFragment;
.super Lco/vine/android/BaseCursorListFragment;
.source "ConversationFragment.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lco/vine/android/widget/TypefacesEditText$KeyboardListener;
.field public static final ARG_AM_FOLLOWING:Ljava/lang/String; = "am_following_recipient"
.field public static final ARG_CONVERSATION_ROW_ID:Ljava/lang/String; = "conversation_row_id"
.field public static final ARG_ENCODER_VERSION:Ljava/lang/String; = "arg_encoder_version"
.field private static final COLLAPSE_DURATION_MS:J = 0x12cL
.field private static final MAX_CHARS:I = 0x1a4
.field public static final REQUEST_POST_OPTIONS:I = 0x2
.field public static final REQUEST_RECORD_REPLY:I = 0x7c7
.field private static final SCROLL_TO_BOTTOM_MESSAGE_COUNT_THRESHOLD:I = 0x1
.field private static final STATE_FETCHED:Ljava/lang/String; = "fetched"
.field private static final TAG:Ljava/lang/String; = "ConversationFrag"
.field private mAmFollowing:Z
.field private mBound:Z
.field private mCallback:Lco/vine/android/ConversationActivity;
.field private mChatPresenceContainer:Landroid/view/ViewGroup;
.field private mChatPresenceEllipsis:Landroid/widget/ImageView;
.field private mChatPresenceFooter:Landroid/view/ViewGroup;
.field private mColorMap:Landroid/support/v4/util/LongSparseArray;
.field private mComposeContainer:Landroid/view/View;
.field private mConnection:Landroid/content/ServiceConnection;
.field private mContentResolver:Landroid/content/ContentResolver;
.field private mConversationAdapter:Lco/vine/android/ConversationAdapter;
.field private mConversationId:J
.field private mConversationRowId:J
.field private mEdit:Lco/vine/android/widget/TypefacesEditText;
.field private mFetchWasInitial:Z
.field private mFetchWasLoadMore:Z
.field private mFetched:Z
.field private mFullRecordIntent:Landroid/content/Intent;
.field private mIncomingHandler:Landroid/os/Handler;
.field private mIsSending:Z
.field private mLastTopItemId:J
.field private mLastTopItemPixelOffset:I
.field private final mLaunchFullRecordRunnable:Ljava/lang/Runnable;
.field private final mLaunchRecorderListener:Landroid/view/View$OnClickListener;
.field private mLoadMoreHeaderContent:Landroid/view/View;
.field private mLoadMoreProgress:Landroid/view/View;
.field private mLocalUnreadCount:I
.field private final mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
.field private mMyColor:I
.field private mMyUserRowId:J
.field private mNewMessageBarContainer:Landroid/view/View;
.field private mNewMessageBarText:Landroid/widget/TextView;
.field private mProgressView:Lco/vine/android/recorder/ProgressView;
.field private mProgressViewWidth:I
.field private mRecipientColor:I
.field private mRecipientUsername:Ljava/lang/String;
.field private mRecordButton:Landroid/widget/ImageView;
.field private mRecorderManager:Lco/vine/android/InlineRecorderManager;
.field private mRecordingEnabled:Z
.field private mSendButton:Landroid/widget/ImageView;
.field private mTextInputContainer:Landroid/widget/RelativeLayout;
.field private mTextInputToggle:Landroid/view/View;
.field private mUploadProgressContainer:Landroid/view/ViewGroup;
.field private mUploadServiceMessenger:Landroid/os/Messenger;
.field private mUploadThumbnail:Landroid/widget/ImageView;
.field private mVersion:Lco/vine/android/recorder/RecordSessionVersion;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lco/vine/android/BaseCursorListFragment;-><init>()V
iput-boolean v0, p0, Lco/vine/android/ConversationFragment;->mFetched:Z
iput-boolean v0, p0, Lco/vine/android/ConversationFragment;->mFetchWasLoadMore:Z
iput v0, p0, Lco/vine/android/ConversationFragment;->mProgressViewWidth:I
iput v0, p0, Lco/vine/android/ConversationFragment;->mMyColor:I
iput v0, p0, Lco/vine/android/ConversationFragment;->mRecipientColor:I
iput-boolean v0, p0, Lco/vine/android/ConversationFragment;->mFetchWasInitial:Z
new-instance v0, Lco/vine/android/ConversationFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/ConversationFragment$1;-><init>(Lco/vine/android/ConversationFragment;)V
iput-object v0, p0, Lco/vine/android/ConversationFragment;->mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
new-instance v0, Lco/vine/android/ConversationFragment$6;
invoke-direct {v0, p0}, Lco/vine/android/ConversationFragment$6;-><init>(Lco/vine/android/ConversationFragment;)V
iput-object v0, p0, Lco/vine/android/ConversationFragment;->mLaunchRecorderListener:Landroid/view/View$OnClickListener;
new-instance v0, Lco/vine/android/ConversationFragment$7;
invoke-direct {v0, p0}, Lco/vine/android/ConversationFragment$7;-><init>(Lco/vine/android/ConversationFragment;)V
iput-object v0, p0, Lco/vine/android/ConversationFragment;->mLaunchFullRecordRunnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$1000(Lco/vine/android/ConversationFragment;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mUploadThumbnail:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$102(Lco/vine/android/ConversationFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
.registers 2
iput-object p1, p0, Lco/vine/android/ConversationFragment;->mUploadServiceMessenger:Landroid/os/Messenger;
return-object p1
.end method
.method static synthetic access$1100(Lco/vine/android/ConversationFragment;)I
.registers 2
iget v0, p0, Lco/vine/android/ConversationFragment;->mProgressViewWidth:I
return v0
.end method
.method static synthetic access$1102(Lco/vine/android/ConversationFragment;I)I
.registers 2
iput p1, p0, Lco/vine/android/ConversationFragment;->mProgressViewWidth:I
return p1
.end method
.method static synthetic access$1200(Lco/vine/android/ConversationFragment;)Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mFullRecordIntent:Landroid/content/Intent;
return-object v0
.end method
.method static synthetic access$1300(Lco/vine/android/ConversationFragment;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/ConversationFragment;->mFetched:Z
return v0
.end method
.method static synthetic access$1400(Lco/vine/android/ConversationFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1502(Lco/vine/android/ConversationFragment;J)J
.registers 3
iput-wide p1, p0, Lco/vine/android/ConversationFragment;->mConversationId:J
return-wide p1
.end method
.method static synthetic access$202(Lco/vine/android/ConversationFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/ConversationFragment;->mBound:Z
return p1
.end method
.method static synthetic access$300(Lco/vine/android/ConversationFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mIncomingHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/ConversationFragment;Landroid/os/Handler;)V
.registers 2
invoke-direct {p0, p1}, Lco/vine/android/ConversationFragment;->subscribe(Landroid/os/Handler;)V
return-void
.end method
.method static synthetic access$600(Lco/vine/android/ConversationFragment;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/ConversationFragment;->toggleInput()V
return-void
.end method
.method static synthetic access$700(Lco/vine/android/ConversationFragment;)J
.registers 3
iget-wide v0, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
return-wide v0
.end method
.method static synthetic access$800(Lco/vine/android/ConversationFragment;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mUploadProgressContainer:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic access$900(Lco/vine/android/ConversationFragment;)Lco/vine/android/recorder/ProgressView;
.registers 2
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
return-object v0
.end method
.method static synthetic access$902(Lco/vine/android/ConversationFragment;Lco/vine/android/recorder/ProgressView;)Lco/vine/android/recorder/ProgressView;
.registers 2
iput-object p1, p0, Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
return-object p1
.end method
.method private fetchContent(I)V
.registers 15
const/4 v6, 0x3
const-wide/16 v3, 0x0
const/4 v2, 0x0
const/4 v1, 0x1
iget-wide v7, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
cmp-long v0, v7, v3
if-lez v0, :cond_14
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->hasPendingRequest()Z
move-result v0
if-nez v0, :cond_14
packed-switch p1, :pswitch_data_3c
:pswitch_14
:cond_14
:goto_14
return-void
:pswitch_15
iput-boolean v1, p0, Lco/vine/android/ConversationFragment;->mFetched:Z
invoke-virtual {p0, v6}, Lco/vine/android/ConversationFragment;->showProgress(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mAppController:Lco/vine/android/client/AppController;
iget-wide v5, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
move v7, v2
invoke-virtual/range {v0 .. v7}, Lco/vine/android/client/AppController;->fetchConversation(IZJJZ)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/ConversationFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
goto :goto_14
:pswitch_27
iput-boolean v1, p0, Lco/vine/android/ConversationFragment;->mFetchWasLoadMore:Z
invoke-virtual {p0, v1}, Lco/vine/android/ConversationFragment;->showProgress(I)V
iget-object v5, p0, Lco/vine/android/ConversationFragment;->mAppController:Lco/vine/android/client/AppController;
iget-wide v10, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
move v7, v1
move-wide v8, v3
move v12, v2
invoke-virtual/range {v5 .. v12}, Lco/vine/android/client/AppController;->fetchConversation(IZJJZ)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/ConversationFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
goto :goto_14
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_27
:pswitch_14
:pswitch_15
.end packed-switch
.end method
.method private getMessageBundle()Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "conversation_row_id"
iget-wide v2, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object v0
.end method
.method private hideTypingContainer()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mEdit:Lco/vine/android/widget/TypefacesEditText;
invoke-virtual {v0}, Lco/vine/android/widget/TypefacesEditText;->clearFocus()V
iget v0, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
if-lez v0, :cond_e
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->toggleNewMessageBar(Z)V
:cond_e
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mTextInputContainer:Landroid/widget/RelativeLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mComposeContainer:Landroid/view/View;
new-instance v1, Landroid/graphics/drawable/ColorDrawable;
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getMyColor()I
move-result v2
invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-static {v0, v1}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mRecordButton:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mTextInputToggle:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private saveTopItemInfo()V
.registers 5
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCount()I
move-result v1
if-nez v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J
move-result-wide v1
iput-wide v1, p0, Lco/vine/android/ConversationFragment;->mLastTopItemId:J
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v2
iget-object v3, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v3
add-int/2addr v2, v3
invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_8
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v1
iput v1, p0, Lco/vine/android/ConversationFragment;->mLastTopItemPixelOffset:I
goto :goto_8
.end method
.method private scrollToBottom(ZZ)V
.registers 7
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCount()I
move-result v2
invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v3
add-int v0, v2, v3
if-eqz p1, :cond_19
invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v2
sub-int v2, v0, v2
const/4 v3, 0x2
if-ge v2, v3, :cond_21
:cond_19
new-instance v2, Lco/vine/android/ConversationFragment$4;
invoke-direct {v2, p0, p2, v1, v0}, Lco/vine/android/ConversationFragment$4;-><init>(Lco/vine/android/ConversationFragment;ZLandroid/widget/ListView;I)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z
:cond_21
return-void
.end method
.method private sendMessage(Ljava/lang/String;)V
.registers 13
const/4 v6, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-wide v3, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mContentResolver:Landroid/content/ContentResolver;
iget-wide v9, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
invoke-static {v1, v9, v10}, Lco/vine/android/provider/VineProviderHelper;->getConversationRecipients(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
move-result-object v5
move-object v1, p1
move v7, v2
invoke-static/range {v0 .. v7}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/ArrayList;Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v8
const-string v0, "intent={}, extras={}"
invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
invoke-static {v0, v8, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
new-instance v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;
invoke-direct {v0, p0, v6}, Lco/vine/android/ConversationFragment$UploadProgressHandler;-><init>(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationFragment$1;)V
iput-object v0, p0, Lco/vine/android/ConversationFragment;->mIncomingHandler:Landroid/os/Handler;
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mIncomingHandler:Landroid/os/Handler;
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->subscribe(Landroid/os/Handler;)V
return-void
.end method
.method private sendMessageToUploadService(Landroid/os/Message;)V
.registers 4
:try_start_0
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mUploadServiceMessenger:Landroid/os/Messenger;
if-eqz v1, :cond_9
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mUploadServiceMessenger:Landroid/os/Messenger;
invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
goto :goto_9
.end method
.method private sendTextMessage()V
.registers 13
const/4 v2, 0x0
iget-object v8, p0, Lco/vine/android/ConversationFragment;->mEdit:Lco/vine/android/widget/TypefacesEditText;
invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
const/16 v1, 0x1a4
if-le v0, v1, :cond_1a
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e013c
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showTopToast(Landroid/content/Context;I)V
:goto_19
return-void
:cond_1a
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mEdit:Lco/vine/android/widget/TypefacesEditText;
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->validate(Landroid/widget/EditText;)Z
move-result v0
if-eqz v0, :cond_52
invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v1, 0x0
iget-wide v3, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
iget-object v5, p0, Lco/vine/android/ConversationFragment;->mContentResolver:Landroid/content/ContentResolver;
iget-wide v10, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
invoke-static {v5, v10, v11}, Lco/vine/android/provider/VineProviderHelper;->getConversationRecipients(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
move-result-object v5
move v7, v2
invoke-static/range {v0 .. v7}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/ArrayList;Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v9
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/ConversationFragment;->mIsSending:Z
invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->clear()V
iput-boolean v2, p0, Lco/vine/android/ConversationFragment;->mIsSending:Z
goto :goto_19
:cond_52
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mEdit:Lco/vine/android/widget/TypefacesEditText;
invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
invoke-direct {p0}, Lco/vine/android/ConversationFragment;->hideTypingContainer()V
goto :goto_19
.end method
.method private subscribe(Landroid/os/Handler;)V
.registers 6
new-instance v0, Landroid/os/Messenger;
invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
const/4 v2, 0x0
const/4 v3, 0x1
invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {p0, v1}, Lco/vine/android/ConversationFragment;->sendMessageToUploadService(Landroid/os/Message;)V
return-void
.end method
.method private toggleInput()V
.registers 8
const/16 v6, 0x8
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mEdit:Lco/vine/android/widget/TypefacesEditText;
invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mTextInputContainer:Landroid/widget/RelativeLayout;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mComposeContainer:Landroid/view/View;
const v3, 0x7f0a0097
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f090083
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v4
invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-static {v2, v3}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mRecordButton:Landroid/widget/ImageView;
invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mTextInputToggle:Landroid/view/View;
invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V
:cond_3d
return-void
.end method
.method private toggleNewMessageBar(Z)V
.registers 4
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mNewMessageBarContainer:Landroid/view/View;
if-eqz p1, :cond_9
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_9
const/16 v0, 0x8
goto :goto_5
.end method
.method private validate(Landroid/widget/EditText;)Z
.registers 3
if-eqz p1, :cond_a
invoke-virtual {p1}, Landroid/widget/EditText;->length()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 5
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCallback:Lco/vine/android/ConversationActivity;
const/4 v1, 0x1
iget-boolean v2, p0, Lco/vine/android/ConversationFragment;->mIsSending:Z
invoke-virtual {v0, v1, v2}, Lco/vine/android/ConversationActivity;->onTypingStatusChanged(ZZ)V
:goto_e
return-void
:cond_f
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCallback:Lco/vine/android/ConversationActivity;
const/4 v1, 0x0
iget-boolean v2, p0, Lco/vine/android/ConversationFragment;->mIsSending:Z
invoke-virtual {v0, v1, v2}, Lco/vine/android/ConversationActivity;->onTypingStatusChanged(ZZ)V
goto :goto_e
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public getMyColor()I
.registers 2
iget v0, p0, Lco/vine/android/ConversationFragment;->mMyColor:I
return v0
.end method
.method public hideProgress(I)V
.registers 4
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreProgress:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public isInTextInputMode()Z
.registers 3
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mRecordButton:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method  launchFullRecord()V
.registers 9
const/4 v1, 0x0
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v2, "ConversationFullRecord"
iget-wide v3, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
iget-object v6, p0, Lco/vine/android/ConversationFragment;->mRecipientUsername:Ljava/lang/String;
iget-boolean v7, p0, Lco/vine/android/ConversationFragment;->mAmFollowing:Z
move v5, v1
invoke-static/range {v0 .. v7}, Lco/vine/android/AbstractRecordingActivity;->getIntentForConversation(Landroid/content/Context;ILjava/lang/String;JZLjava/lang/String;Z)Landroid/content/Intent;
move-result-object v0
iput-object v0, p0, Lco/vine/android/ConversationFragment;->mFullRecordIntent:Landroid/content/Intent;
new-instance v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lco/vine/android/ConversationFragment$UploadProgressHandler;-><init>(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationFragment$1;)V
iput-object v0, p0, Lco/vine/android/ConversationFragment;->mIncomingHandler:Landroid/os/Handler;
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mIncomingHandler:Landroid/os/Handler;
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->subscribe(Landroid/os/Handler;)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mLaunchFullRecordRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 19
invoke-super/range {p0 .. p1}, Lco/vine/android/BaseCursorListFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
check-cast v2, Lco/vine/android/ConversationActivity;
invoke-static {v2}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v13
invoke-static {v2}, Lco/vine/android/util/Util;->isCapableOfRecording(Landroid/content/Context;)Z
move-result v1
move-object/from16 v0, p0
iput-boolean v1, v0, Lco/vine/android/ConversationFragment;->mRecordingEnabled:Z
move-object/from16 v0, p0
iget-boolean v1, v0, Lco/vine/android/ConversationFragment;->mRecordingEnabled:Z
if-eqz v1, :cond_22
:try_start_1b
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
invoke-virtual {v1, v2}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
:goto_22
:cond_22
:try_end_22
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_215
const-string v1, "pref_user_row_id"
const-wide/16 v3, 0x0
invoke-interface {v13, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
move-object/from16 v0, p0
iput-wide v3, v0, Lco/vine/android/ConversationFragment;->mMyUserRowId:J
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-nez v1, :cond_52
new-instance v1, Lco/vine/android/ConversationAdapter;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/ConversationFragment;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
move-object/from16 v0, p0
iget-wide v5, v0, Lco/vine/android/ConversationFragment;->mMyUserRowId:J
const/4 v7, 0x0
invoke-direct/range {v1 .. v7}, Lco/vine/android/ConversationAdapter;-><init>(Lco/vine/android/ConversationActivity;Lco/vine/android/client/AppController;Landroid/widget/ListView;JI)V
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mConversationAdapter:Lco/vine/android/ConversationAdapter;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mConversationAdapter:Lco/vine/android/ConversationAdapter;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
:cond_52
move-object/from16 v0, p0
iget-object v11, v0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
move-object/from16 v0, p0
invoke-virtual {v11, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
const/4 v1, 0x0
invoke-virtual {v11, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
move-object v1, v11
check-cast v1, Lco/vine/android/widget/ConversationList;
const/4 v3, 0x1
invoke-virtual {v1, v3}, Lco/vine/android/widget/ConversationList;->deactivateRefresh(Z)V
new-instance v1, Lco/vine/android/ConversationFragment$ConversationSessionListener;
const/4 v3, 0x0
move-object/from16 v0, p0
invoke-direct {v1, v0, v3}, Lco/vine/android/ConversationFragment$ConversationSessionListener;-><init>(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationFragment$1;)V
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v3, 0x7f03002e
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v12
check-cast v12, Landroid/view/ViewGroup;
const v1, 0x7f0a00b0
invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
const/16 v3, 0x8
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a00b2
invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mLoadMoreProgress:Landroid/view/View;
invoke-virtual {v11, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
move-object/from16 v0, p0
invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
const/4 v3, 0x0
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v11, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v3, 0x7f030031
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
const/4 v5, 0x0
invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v16
check-cast v16, Landroid/view/ViewGroup;
const v1, 0x7f0a00c5
move-object/from16 v0, v16
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mUploadProgressContainer:Landroid/view/ViewGroup;
const v1, 0x7f0a00c6
move-object/from16 v0, v16
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/ProgressView;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
const v1, 0x7f0a0065
move-object/from16 v0, v16
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mUploadThumbnail:Landroid/widget/ImageView;
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v3, 0x7f03002b
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
const/4 v5, 0x0
invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v10
check-cast v10, Landroid/view/ViewGroup;
const v1, 0x7f0a00ad
invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mChatPresenceContainer:Landroid/view/ViewGroup;
const v1, 0x7f0a00ae
invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mChatPresenceEllipsis:Landroid/widget/ImageView;
move-object/from16 v0, p0
iput-object v10, v0, Lco/vine/android/ConversationFragment;->mChatPresenceFooter:Landroid/view/ViewGroup;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/ConversationFragment;->mChatPresenceFooter:Landroid/view/ViewGroup;
invoke-virtual {v1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/ConversationFragment;->getView()Landroid/view/View;
move-result-object v15
move-object/from16 v0, p0
iget-boolean v1, v0, Lco/vine/android/ConversationFragment;->mRecordingEnabled:Z
if-eqz v1, :cond_239
const v1, 0x7f0a009d
invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/InlineRecorderManager;
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/ConversationFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
move-object/from16 v0, p0
invoke-virtual {v1, v0, v2, v3}, Lco/vine/android/InlineRecorderManager;->init(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationActivity;Lco/vine/android/recorder/RecordSessionVersion;)V
:goto_158
invoke-virtual {v2}, Lco/vine/android/ConversationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v1
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/ConversationFragment;->mRecipientColor:I
invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const v1, 0x7f0a0097
invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
move-object/from16 v0, p0
iput-object v1, v0, Lco/vine/android/ConversationFragment;->mComposeContainer:Landroid/view/View;
const-string v1, "profile_background"
sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
invoke-interface {v13, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v14
sget v1, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-eq v14, v1, :cond_181
if-gtz v14, :cond_191
:cond_181
const v1, 0xffffff
invoke-virtual/range {p0 .. p0}, Lco/vine/android/ConversationFragment;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f090096
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
and-int v14, v1, v3
:cond_191
const/high16 v1, -0x100
or-int/2addr v1, v14
move-object/from16 v0, p0
iput v1, v0, Lco/vine/android/ConversationFragment;->mMyColor:I
invoke-virtual/range {p0 .. p0}, Lco/vine/android/ConversationFragment;->getView()Landroid/view/View;
move-result-object v1
const v3, 0x7f0a00a1
invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/ProgressView;
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/ConversationFragment;->mMyColor:I
invoke-virtual {v1, v3}, Lco/vine/android/recorder/ProgressView;->setColor(I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/ConversationFragment;->getView()Landroid/view/View;
move-result-object v1
const v3, 0x7f0a00a7
invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/ProgressView;
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/ConversationFragment;->mMyColor:I
invoke-virtual {v1, v3}, Lco/vine/android/recorder/ProgressView;->setColor(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mComposeContainer:Landroid/view/View;
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/ConversationFragment;->getMyColor()I
move-result v4
invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-static {v1, v3}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v2}, Lco/vine/android/ConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0200f5
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v8
check-cast v8, Landroid/graphics/drawable/GradientDrawable;
const/high16 v1, -0x100
move-object/from16 v0, p0
iget v3, v0, Lco/vine/android/ConversationFragment;->mMyColor:I
or-int/2addr v1, v3
invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mNewMessageBarContainer:Landroid/view/View;
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/ConversationFragment;->mRecipientColor:I
invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mSendButton:Landroid/widget/ImageView;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/ConversationFragment;->mLaunchRecorderListener:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/ConversationFragment;->mSendButton:Landroid/widget/ImageView;
new-instance v3, Landroid/graphics/PorterDuffColorFilter;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/ConversationFragment;->getMyColor()I
move-result v4
sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
:catch_215
move-exception v9
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Lco/vine/android/ConversationFragment;->mRecordingEnabled:Z
instance-of v1, v9, Lco/vine/android/recorder/RecordSessionManager$NotEnoughSpaceException;
if-eqz v1, :cond_232
const v1, 0x7f0e00dc
invoke-static {v2, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
:goto_225
const-string v1, "Exception has happened: {}"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v9, v3, v4
invoke-static {v1, v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_22
:cond_232
const v1, 0x7f0e00dd
invoke-static {v2, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_225
:cond_239
const v1, 0x7f0a009d
invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/InlineRecorderManager;
move-object/from16 v0, p0
invoke-virtual {v1, v0}, Lco/vine/android/InlineRecorderManager;->initDisabled(Lco/vine/android/ConversationFragment;)V
goto/16 :goto_158
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 7
const/4 v1, 0x2
if-ne p1, v1, :cond_11
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v1, p2, p3}, Lco/vine/android/PostOptionsDialogActivity;->onActivityResult(Lco/vine/android/client/AppController;Landroid/app/Activity;ILandroid/content/Intent;)Lco/vine/android/PostOptionsDialogActivity$Result;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/ConversationFragment;->processPostOptionsResult(Lco/vine/android/PostOptionsDialogActivity$Result;)V
:goto_10
:cond_10
return-void
:cond_11
const/16 v0, 0x7c7
if-ne p1, v0, :cond_49
if-eqz p3, :cond_49
const-string v0, "ConversationFrag"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "resultCode="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", data="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lco/vine/android/util/BuildUtil;->isIsHwEncodingEnabled()Z
move-result v0
if-nez v0, :cond_10
const-string v0, "upload_path"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->sendMessage(Ljava/lang/String;)V
goto :goto_10
:cond_49
const/16 v0, 0x64
if-ne p2, v0, :cond_10
const/4 v0, 0x0
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->sendMessageToUploadService(Landroid/os/Message;)V
goto :goto_10
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 2
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onAttach(Landroid/app/Activity;)V
check-cast p1, Lco/vine/android/ConversationActivity;
iput-object p1, p0, Lco/vine/android/ConversationFragment;->mCallback:Lco/vine/android/ConversationActivity;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ConversationFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_2c
:goto_8
const-string v1, " - Lco/vine/android/ConversationFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
invoke-direct {p0}, Lco/vine/android/ConversationFragment;->sendTextMessage()V
goto :goto_8
:sswitch_d
invoke-direct {p0}, Lco/vine/android/ConversationFragment;->toggleInput()V
goto :goto_8
:sswitch_11
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreProgress:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->fetchContent(I)V
goto :goto_8
:sswitch_22
invoke-direct {p0, v2, v2}, Lco/vine/android/ConversationFragment;->scrollToBottom(ZZ)V
invoke-direct {p0, v2}, Lco/vine/android/ConversationFragment;->toggleNewMessageBar(Z)V
iput v2, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
goto :goto_8
nop
:sswitch_data_2c
.sparse-switch
0x7f0a0098 -> :sswitch_d
0x7f0a009b -> :sswitch_9
0x7f0a00ab -> :sswitch_22
0x7f0a00b0 -> :sswitch_11
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lco/vine/android/ConversationFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v11, 0x0
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_16
const-string v8, "fetched"
invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_16
const-string v8, "fetched"
invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v8
iput-boolean v8, p0, Lco/vine/android/ConversationFragment;->mFetched:Z
:cond_16
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
check-cast v8, Lco/vine/android/BaseActionBarActivity;
invoke-virtual {v8}, Lco/vine/android/BaseActionBarActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v5
if-eqz v5, :cond_25
invoke-virtual {v5, v11}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V
:cond_25
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v8, "conversation_row_id"
const-wide/16 v9, -0x1
invoke-virtual {v0, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v8
iput-wide v8, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
const-string v8, "am_following_recipient"
invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v8
iput-boolean v8, p0, Lco/vine/android/ConversationFragment;->mAmFollowing:Z
const/4 v8, 0x1
invoke-virtual {p0, v8}, Lco/vine/android/ConversationFragment;->setHasOptionsMenu(Z)V
const-string v8, "arg_encoder_version"
invoke-virtual {v0, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v8
check-cast v8, Lco/vine/android/recorder/RecordSessionVersion;
iput-object v8, p0, Lco/vine/android/ConversationFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
iget-object v8, p0, Lco/vine/android/ConversationFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
if-nez v8, :cond_57
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
invoke-static {v8}, Lco/vine/android/recorder/RecordSessionManager;->getCurrentVersion(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v8
iput-object v8, p0, Lco/vine/android/ConversationFragment;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
:cond_57
new-instance v8, Lco/vine/android/ConversationFragment$UploadProgressHandler;
const/4 v9, 0x0
invoke-direct {v8, p0, v9}, Lco/vine/android/ConversationFragment$UploadProgressHandler;-><init>(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationFragment$1;)V
iput-object v8, p0, Lco/vine/android/ConversationFragment;->mIncomingHandler:Landroid/os/Handler;
iput-boolean v11, p0, Lco/vine/android/ConversationFragment;->mBound:Z
new-instance v8, Lco/vine/android/ConversationFragment$2;
invoke-direct {v8, p0}, Lco/vine/android/ConversationFragment$2;-><init>(Lco/vine/android/ConversationFragment;)V
iput-object v8, p0, Lco/vine/android/ConversationFragment;->mConnection:Landroid/content/ServiceConnection;
iget-object v8, p0, Lco/vine/android/ConversationFragment;->mColorMap:Landroid/support/v4/util/LongSparseArray;
if-nez v8, :cond_73
new-instance v8, Landroid/support/v4/util/LongSparseArray;
invoke-direct {v8}, Landroid/support/v4/util/LongSparseArray;-><init>()V
iput-object v8, p0, Lco/vine/android/ConversationFragment;->mColorMap:Landroid/support/v4/util/LongSparseArray;
:cond_73
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v8
iput-object v8, p0, Lco/vine/android/ConversationFragment;->mContentResolver:Landroid/content/ContentResolver;
iget-object v8, p0, Lco/vine/android/ConversationFragment;->mContentResolver:Landroid/content/ContentResolver;
iget-wide v9, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
invoke-static {v8, v9, v10}, Lco/vine/android/provider/VineProviderHelper;->queryConversationRecipientsUsersView(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_ce
:goto_8b
invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
move-result v8
if-eqz v8, :cond_cb
const/4 v8, 0x6
invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
const/4 v8, 0x7
invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I
move-result v1
sget v8, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-eq v1, v8, :cond_a1
if-gtz v1, :cond_b1
:cond_a1
const v8, 0xffffff
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getResources()Landroid/content/res/Resources;
move-result-object v9
const v10, 0x7f090096
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I
move-result v9
and-int v1, v8, v9
:cond_b1
const/high16 v8, -0x100
or-int/2addr v1, v8
iget v8, p0, Lco/vine/android/ConversationFragment;->mRecipientColor:I
if-nez v8, :cond_ba
iput v1, p0, Lco/vine/android/ConversationFragment;->mRecipientColor:I
:cond_ba
iget-object v8, p0, Lco/vine/android/ConversationFragment;->mColorMap:Landroid/support/v4/util/LongSparseArray;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v8, v3, v4, v9}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
const/4 v8, 0x3
invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
iput-object v8, p0, Lco/vine/android/ConversationFragment;->mRecipientUsername:Ljava/lang/String;
goto :goto_8b
:cond_cb
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_ce
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
check-cast v8, Lco/vine/android/ConversationActivity;
iget-object v9, p0, Lco/vine/android/ConversationFragment;->mRecipientUsername:Ljava/lang/String;
invoke-virtual {v8, v9}, Lco/vine/android/ConversationActivity;->setRecipientUsername(Ljava/lang/String;)V
const-string v8, "onCreate queries took {}ms."
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
sub-long/2addr v9, v6
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iput v11, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
const-string v1, " - Lco/vine/android/ConversationFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 11
const/4 v4, 0x0
iget-wide v0, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
sget-object v0, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI_CONVERSATION:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "conversation_row_id"
invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/CursorLoader;
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$ConversationMessageUsersQuery;->PROJECTION:[Ljava/lang/String;
const-string v6, "message_id ASC"
move-object v5, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const v2, 0x7f03002a
invoke-virtual {p0, p1, v2, p2}, Lco/vine/android/ConversationFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
const v2, 0x7f0a0083
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/widget/TypefacesEditText;
invoke-virtual {v0, p0}, Lco/vine/android/widget/TypefacesEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-virtual {v0, p0}, Lco/vine/android/widget/TypefacesEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
invoke-virtual {v0, p0}, Lco/vine/android/widget/TypefacesEditText;->setKeyboardListener(Lco/vine/android/widget/TypefacesEditText$KeyboardListener;)V
iput-object v0, p0, Lco/vine/android/ConversationFragment;->mEdit:Lco/vine/android/widget/TypefacesEditText;
const v2, 0x7f0a0099
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
iput-object v2, p0, Lco/vine/android/ConversationFragment;->mTextInputContainer:Landroid/widget/RelativeLayout;
const v2, 0x7f0a0098
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lco/vine/android/ConversationFragment;->mTextInputToggle:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mTextInputToggle:Landroid/view/View;
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a00ab
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lco/vine/android/ConversationFragment;->mNewMessageBarContainer:Landroid/view/View;
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mNewMessageBarContainer:Landroid/view/View;
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mNewMessageBarContainer:Landroid/view/View;
const v3, 0x7f0a00ac
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lco/vine/android/ConversationFragment;->mNewMessageBarText:Landroid/widget/TextView;
const v2, 0x7f0a00aa
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lco/vine/android/ConversationFragment;->mRecordButton:Landroid/widget/ImageView;
const v2, 0x7f0a009b
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lco/vine/android/ConversationFragment;->mSendButton:Landroid/widget/ImageView;
return-object v1
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/ConversationFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onDestroy()V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
invoke-virtual {v0}, Lco/vine/android/InlineRecorderManager;->release()V
:cond_c
const-string v1, " - Lco/vine/android/ConversationFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 5
invoke-virtual {p1}, Landroid/widget/TextView;->getId()I
move-result v0
packed-switch v0, :pswitch_data_12
const/4 v0, 0x0
:goto_8
return v0
:pswitch_9
const/4 v0, 0x4
if-ne p2, v0, :cond_f
invoke-direct {p0}, Lco/vine/android/ConversationFragment;->sendTextMessage()V
:cond_f
const/4 v0, 0x1
goto :goto_8
nop
:pswitch_data_12
.packed-switch 0x7f0a0083
:pswitch_9
.end packed-switch
.end method
.method public onKeyboardDismissed()V
.registers 4
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCallback:Lco/vine/android/ConversationActivity;
const/4 v1, 0x0
iget-boolean v2, p0, Lco/vine/android/ConversationFragment;->mIsSending:Z
invoke-virtual {v0, v1, v2}, Lco/vine/android/ConversationActivity;->onTypingStatusChanged(ZZ)V
invoke-direct {p0}, Lco/vine/android/ConversationFragment;->hideTypingContainer()V
return-void
.end method
.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.registers 8
const/4 v1, 0x3
const/4 v2, 0x1
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I
move-result v0
packed-switch v0, :pswitch_data_96
:cond_a
:goto_a
return-void
:pswitch_b
invoke-direct {p0}, Lco/vine/android/ConversationFragment;->saveTopItemInfo()V
invoke-super {p0, p1, p2}, Lco/vine/android/BaseCursorListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
invoke-virtual {p0, v1}, Lco/vine/android/ConversationFragment;->hideProgress(I)V
iget-boolean v0, p0, Lco/vine/android/ConversationFragment;->mFetched:Z
if-nez v0, :cond_1e
invoke-direct {p0, v1}, Lco/vine/android/ConversationFragment;->fetchContent(I)V
iput-boolean v2, p0, Lco/vine/android/ConversationFragment;->mFetchWasInitial:Z
goto :goto_a
:cond_1e
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_4c
invoke-virtual {p0, v2, v4}, Lco/vine/android/ConversationFragment;->showSadface(ZZ)V
:cond_29
:goto_29
iput-boolean v4, p0, Lco/vine/android/ConversationFragment;->mFetchWasInitial:Z
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/ConversationAdapter;
invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->atLastPage()Z
move-result v0
if-eqz v0, :cond_90
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_3c
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/ConversationAdapter;
invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->playCurrentPosition()V
goto :goto_a
:cond_4c
invoke-virtual {p0, v4}, Lco/vine/android/ConversationFragment;->showSadface(Z)V
iget-boolean v0, p0, Lco/vine/android/ConversationFragment;->mFetchWasLoadMore:Z
if-eqz v0, :cond_76
iput-boolean v4, p0, Lco/vine/android/ConversationFragment;->mFetchWasLoadMore:Z
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v1}, Lco/vine/android/ConversationFragment;->hideProgress(I)V
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/ConversationAdapter;
iget-wide v2, p0, Lco/vine/android/ConversationFragment;->mLastTopItemId:J
invoke-virtual {v0, v2, v3}, Lco/vine/android/ConversationAdapter;->getPositionForId(J)I
move-result v0
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v2
add-int/2addr v0, v2
iget v2, p0, Lco/vine/android/ConversationFragment;->mLastTopItemPixelOffset:I
invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
goto :goto_29
:cond_76
iget-boolean v0, p0, Lco/vine/android/ConversationFragment;->mFetchWasInitial:Z
if-eqz v0, :cond_7e
invoke-direct {p0, v4, v4}, Lco/vine/android/ConversationFragment;->scrollToBottom(ZZ)V
goto :goto_29
:cond_7e
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-lt v0, v1, :cond_29
invoke-direct {p0, v4, v2}, Lco/vine/android/ConversationFragment;->scrollToBottom(ZZ)V
goto :goto_29
:cond_90
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_3c
:pswitch_data_96
.packed-switch 0x0
:pswitch_b
.end packed-switch
.end method
.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p1, p2}, Lco/vine/android/ConversationFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
return-void
.end method
.method public onNewMessage()V
.registers 9
const/4 v7, 0x1
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCount()I
move-result v1
if-ge v0, v1, :cond_3c
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mTextInputContainer:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I
move-result v0
if-eqz v0, :cond_3c
iget v0, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mNewMessageBarText:Landroid/widget/TextView;
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/high16 v2, 0x7f0d
iget v3, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
new-array v4, v7, [Ljava/lang/Object;
const/4 v5, 0x0
iget v6, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-direct {p0, v7}, Lco/vine/android/ConversationFragment;->toggleNewMessageBar(Z)V
:cond_3c
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lco/vine/android/ConversationFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onPause()V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mConversationAdapter:Lco/vine/android/ConversationAdapter;
invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->onPause()V
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-boolean v0, p0, Lco/vine/android/ConversationFragment;->mBound:Z
if-eqz v0, :cond_31
const-string v0, "ConversationFrag"
const-string v1, "Will unbind from VineUploadService now"
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
const/4 v1, 0x2
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->sendMessageToUploadService(Landroid/os/Message;)V
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/ConversationFragment;->mBound:Z
:cond_31
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
if-eqz v0, :cond_3a
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
invoke-virtual {v0}, Lco/vine/android/InlineRecorderManager;->onPaused()V
:cond_3a
const-string v1, " - Lco/vine/android/ConversationFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRecorderHidden()V
.registers 3
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mTextInputToggle:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/ConversationAdapter;
invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->playCurrentPosition()V
return-void
.end method
.method public onRecorderShown()V
.registers 3
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mTextInputToggle:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/ConversationAdapter;
invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->stopCurrentPlayer()V
return-void
.end method
.method public onResume()V
.registers 11
const-string v1, " + Lco/vine/android/ConversationFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v9, 0x8
const/4 v8, 0x0
invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onResume()V
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0200f5
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
check-cast v1, Landroid/graphics/drawable/GradientDrawable;
const/high16 v4, -0x100
iget v5, p0, Lco/vine/android/ConversationFragment;->mMyColor:I
or-int/2addr v4, v5
invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lco/vine/android/ConversationActivity;
iget-boolean v4, v0, Lco/vine/android/ConversationActivity;->keyBoardUpOnStart:Z
if-eqz v4, :cond_31
iput-boolean v8, v0, Lco/vine/android/ConversationActivity;->keyBoardUpOnStart:Z
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mHandler:Landroid/os/Handler;
new-instance v5, Lco/vine/android/ConversationFragment$3;
invoke-direct {v5, p0}, Lco/vine/android/ConversationFragment$3;-><init>(Lco/vine/android/ConversationFragment;)V
invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_31
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mConversationAdapter:Lco/vine/android/ConversationAdapter;
invoke-virtual {v4}, Lco/vine/android/ConversationAdapter;->onResume()V
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
sget-object v5, Lco/vine/android/util/MuteUtil;->MUTE_INTENT_FILTER:Landroid/content/IntentFilter;
const-string v6, "co.vine.android.BROADCAST"
const/4 v7, 0x0
invoke-virtual {v0, v4, v5, v6, v7}, Lco/vine/android/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v4}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v4
if-nez v4, :cond_4b
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->initLoader()V
:cond_4b
iget-boolean v4, p0, Lco/vine/android/ConversationFragment;->mBound:Z
if-nez v4, :cond_63
const-string v4, "ConversationFrag"
const-string v5, "Will bind to VineUploadService now"
invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Landroid/content/Intent;
const-class v4, Lco/vine/android/service/VineUploadService;
invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mConnection:Landroid/content/ServiceConnection;
const/4 v5, 0x1
invoke-virtual {v0, v3, v4, v5}, Lco/vine/android/ConversationActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:cond_63
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mUploadProgressContainer:Landroid/view/ViewGroup;
invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mChatPresenceContainer:Landroid/view/ViewGroup;
invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
if-eqz v4, :cond_76
:try_start_71
iget-object v4, p0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
invoke-virtual {v4}, Lco/vine/android/InlineRecorderManager;->onResume()V
:try_end_76
.catch Ljava/io/IOException; {:try_start_71 .. :try_end_76} :catch_77
:goto_76
:cond_76
const-string v1, " - Lco/vine/android/ConversationFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_77
move-exception v2
iput-boolean v8, p0, Lco/vine/android/ConversationFragment;->mRecordingEnabled:Z
const-string v4, "Failed to create folder."
invoke-static {v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f0e00dd
invoke-static {v4, v5}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_76
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/ConversationFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "fetched"
iget-boolean v1, p0, Lco/vine/android/ConversationFragment;->mFetched:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lco/vine/android/ConversationFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onScrollLastItem(Landroid/database/Cursor;)V
.registers 3
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/ConversationFragment;->mLocalUnreadCount:I
invoke-direct {p0, v0}, Lco/vine/android/ConversationFragment;->toggleNewMessageBar(Z)V
return-void
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ConversationFragment; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Lco/vine/android/BaseCursorListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-eqz v0, :cond_10
if-nez p2, :cond_10
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/ConversationAdapter;
invoke-virtual {v0}, Lco/vine/android/ConversationAdapter;->playCurrentPosition()V
:cond_10
const-string v1, " - Lco/vine/android/ConversationFragment; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mEdit:Lco/vine/android/widget/TypefacesEditText;
invoke-virtual {v0}, Lco/vine/android/widget/TypefacesEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mSendButton:Landroid/widget/ImageView;
const v1, 0x7f020204
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mSendButton:Landroid/widget/ImageView;
iget-object v1, p0, Lco/vine/android/ConversationFragment;->mLaunchRecorderListener:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mSendButton:Landroid/widget/ImageView;
const v1, 0x7f020137
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mSendButton:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_1b
.end method
.method protected prepareUpload()V
.registers 11
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mRecorderManager:Lco/vine/android/InlineRecorderManager;
invoke-virtual {v0}, Lco/vine/android/InlineRecorderManager;->getRecorder()Lco/vine/android/recorder/InlineVineRecorder;
move-result-object v8
if-eqz v8, :cond_2a
iget-object v0, v8, Lco/vine/android/recorder/InlineVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v0, :cond_2a
:try_start_c
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, v8, Lco/vine/android/recorder/InlineVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
iget-object v2, v8, Lco/vine/android/recorder/InlineVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPath()Ljava/lang/String;
move-result-object v2
iget-object v3, v8, Lco/vine/android/recorder/InlineVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
iget-object v3, v3, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
iget-wide v5, p0, Lco/vine/android/ConversationFragment;->mConversationRowId:J
invoke-static/range {v0 .. v6}, Lco/vine/android/util/UploadManager;->addToUploadQueue(Landroid/content/Context;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;
move-result-object v9
invoke-direct {p0, v9}, Lco/vine/android/ConversationFragment;->sendMessage(Ljava/lang/String;)V
:goto_2a
:cond_2a
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2b
return-void
:catch_2b
move-exception v7
invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_2a
.end method
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public showProgress(I)V
.registers 4
packed-switch p1, :pswitch_data_12
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreHeaderContent:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/ConversationFragment;->mLoadMoreProgress:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_3
:pswitch_data_12
.packed-switch 0x1
:pswitch_4
.end packed-switch
.end method
.method public showTypingIndicator(ZJ)V
.registers 14
const/4 v9, 0x0
iget-object v2, p0, Lco/vine/android/ConversationFragment;->mChatPresenceContainer:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V
if-eqz p1, :cond_4e
iget-object v3, p0, Lco/vine/android/ConversationFragment;->mChatPresenceEllipsis:Landroid/widget/ImageView;
iget-object v6, p0, Lco/vine/android/ConversationFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v6, Lco/vine/android/ConversationAdapter;
invoke-virtual {v6}, Lco/vine/android/ConversationAdapter;->getIdAtLastPosition()J
move-result-wide v4
const/4 v1, 0x0
iget-object v6, p0, Lco/vine/android/ConversationFragment;->mColorMap:Landroid/support/v4/util/LongSparseArray;
if-eqz v6, :cond_1f
iget-object v6, p0, Lco/vine/android/ConversationFragment;->mColorMap:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v6, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
:cond_1f
if-nez v1, :cond_27
iget v6, p0, Lco/vine/android/ConversationFragment;->mRecipientColor:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
:cond_27
invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V
invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v6
invoke-virtual {p0}, Lco/vine/android/ConversationFragment;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0b001e
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v7
iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
const/high16 v6, 0x5a00
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v7
const v8, 0xffffff
and-int/2addr v7, v8
or-int/2addr v6, v7
invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V
const/4 v6, 0x1
invoke-direct {p0, v6, v9}, Lco/vine/android/ConversationFragment;->scrollToBottom(ZZ)V
:goto_4d
return-void
:cond_4e
new-instance v0, Lco/vine/android/ConversationFragment$HeightAnimation;
new-instance v6, Lco/vine/android/ConversationFragment$5;
invoke-direct {v6, p0, v2}, Lco/vine/android/ConversationFragment$5;-><init>(Lco/vine/android/ConversationFragment;Landroid/view/ViewGroup;)V
invoke-direct {v0, p0, v2, v6}, Lco/vine/android/ConversationFragment$HeightAnimation;-><init>(Lco/vine/android/ConversationFragment;Landroid/view/View;Ljava/lang/Runnable;)V
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_4d
.end method
.method public startPostOptionsActivity(Landroid/content/Intent;)V
.registers 3
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lco/vine/android/ConversationFragment;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method