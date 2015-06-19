.class public Lco/vine/android/ConversationActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "ConversationActivity.java"

# interfaces
.implements Lco/vine/android/widgets/PromptDialogFragment$OnDialogDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ConversationActivity$ConversationSessionListener;,
        Lco/vine/android/ConversationActivity$RealTimeChatReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE:I = 0x0

.field private static final DIALOG_DELETE_MESSAGE:I = 0x2

.field private static final DIALOG_IGNORE:I = 0x1

.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = null

.field public static final EXTRA_AM_FOLLOWING_RECIPIENT:Ljava/lang/String; = "am_following_recipient"

.field public static final EXTRA_CONVERSATION_ROW_ID:Ljava/lang/String; = "conversation_row_id"

.field public static final EXTRA_KEYBOARD_UP:Ljava/lang/String; = "keyboard_up"

.field public static final EXTRA_RECIPIENT_USERNAME:Ljava/lang/String; = "recipient_username"

.field private static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "conversationFragment"

.field private static final INITIAL_RETRY_DELAY:J = 0x3e8L

.field private static final INVALID_ID:J = -0x1L

.field private static final MAX_RETRY_DELAY:I = 0x3e80

.field public static final REQUEST_CONFIRMATION:I = 0x65

.field private static final TAG:Ljava/lang/String; = "ConvActivity;RTC"


# instance fields
.field public keyBoardUpOnStart:Z

.field private mAmFollowingRecipient:Z

.field private mChatReceiver:Lco/vine/android/ConversationActivity$RealTimeChatReceiver;

.field private mClient:Lco/vine/android/VineWebSocketClient;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mConversationId:J

.field private mConversationRowId:J

.field private mDirectUserId:J

.field private mHelper:Lco/vine/android/recorder/RecordingActivityHelper;

.field private final mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;

.field private mLastIsConnected:Z

.field private mLastMessageId:J

.field private mLastTyping:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMessageIdToDelete:J

.field private mPref:Landroid/content/SharedPreferences;

.field private mRecipientUserName:Ljava/lang/String;

.field private mReconnectDelay:J

.field private final mReconnectRunnable:Ljava/lang/Runnable;

.field private mRetrySuccessRunnable:Ljava/lang/Runnable;

.field private mVersion:Lco/vine/android/recorder/RecordSessionVersion;

.field private mWebSocketListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lco/vine/android/ConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/ConversationActivity;->EVENT_SOURCE_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V

    new-instance v0, Lco/vine/android/recorder/RecordingActivityHelper;

    invoke-direct {v0}, Lco/vine/android/recorder/RecordingActivityHelper;-><init>()V

    iput-object v0, p0, Lco/vine/android/ConversationActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;

    new-instance v0, Lco/vine/android/util/IntentionalObjectCounter;

    const-string v1, "recorder"

    invoke-direct {v0, v1, p0}, Lco/vine/android/util/IntentionalObjectCounter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/ConversationActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;

    new-instance v0, Lco/vine/android/ConversationActivity$1;

    invoke-direct {v0, p0}, Lco/vine/android/ConversationActivity$1;-><init>(Lco/vine/android/ConversationActivity;)V

    iput-object v0, p0, Lco/vine/android/ConversationActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lco/vine/android/ConversationActivity$2;

    invoke-direct {v0, p0}, Lco/vine/android/ConversationActivity$2;-><init>(Lco/vine/android/ConversationActivity;)V

    iput-object v0, p0, Lco/vine/android/ConversationActivity;->mWebSocketListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;

    new-instance v0, Lco/vine/android/ConversationActivity$3;

    invoke-direct {v0, p0}, Lco/vine/android/ConversationActivity$3;-><init>(Lco/vine/android/ConversationActivity;)V

    iput-object v0, p0, Lco/vine/android/ConversationActivity;->mReconnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lco/vine/android/ConversationActivity;)Z
    .registers 2

    invoke-direct {p0}, Lco/vine/android/ConversationActivity;->clientIsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lco/vine/android/ConversationActivity;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lco/vine/android/ConversationActivity;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ConversationActivity;->mLastMessageId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lco/vine/android/ConversationActivity;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/ConversationActivity;->mLastMessageId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lco/vine/android/ConversationActivity;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    return-wide v0
.end method

.method static synthetic access$200(Lco/vine/android/ConversationActivity;)Lco/vine/android/VineWebSocketClient;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/ConversationActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/ConversationActivity;->mLastIsConnected:Z

    return v0
.end method

.method static synthetic access$302(Lco/vine/android/ConversationActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/ConversationActivity;->mLastIsConnected:Z

    return p1
.end method

.method static synthetic access$400(Lco/vine/android/ConversationActivity;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mReconnectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lco/vine/android/ConversationActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/ConversationActivity;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/ConversationActivity;->reconnectWithBackoff()V

    return-void
.end method

.method static synthetic access$700(Lco/vine/android/ConversationActivity;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/ConversationActivity;->prepareClient()V

    return-void
.end method

.method static synthetic access$800(Lco/vine/android/ConversationActivity;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ConversationActivity;->mReconnectDelay:J

    return-wide v0
.end method

.method static synthetic access$802(Lco/vine/android/ConversationActivity;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/ConversationActivity;->mReconnectDelay:J

    return-wide p1
.end method

.method static synthetic access$900(Lco/vine/android/ConversationActivity;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ConversationActivity;->mConversationId:J

    return-wide v0
.end method

.method static synthetic access$902(Lco/vine/android/ConversationActivity;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/ConversationActivity;->mConversationId:J

    return-wide p1
.end method

.method private declared-synchronized clientIsActive()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lco/vine/android/VineWebSocketClient;->isConnected()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private disconnectClient()V
    .registers 4

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/codebutler/android_websockets/WebSocketClient;->disconnect()V

    const/4 v1, 0x0

    iput-object v1, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    :cond_11
    return-void
.end method

.method public static getConversationActivityStates(Landroid/app/Activity;)[J
    .registers 16

    const-wide/16 v13, 0x0

    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    invoke-static {p0}, Lco/vine/android/util/Util;->getRecentActivityData(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v10, 0x2

    new-array v7, v10, [J

    fill-array-data v7, :array_56

    const/4 v10, 0x0

    :try_start_16
    invoke-virtual {v2, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v10, 0x0

    cmp-long v11, v0, v13

    if-lez v11, :cond_3f

    :goto_27
    aput-wide v0, v7, v10
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_29} :catch_41

    :goto_29
    add-int/lit8 v10, v6, 0x1

    :try_start_2b
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v10, 0x1

    cmp-long v11, v3, v13

    if-lez v11, :cond_4a

    :goto_3c
    aput-wide v3, v7, v10
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_3e} :catch_4c

    :goto_3e
    return-object v7

    :cond_3f
    move-wide v0, v8

    goto :goto_27

    :catch_41
    move-exception v5

    const-string v10, "Attempted to restore activity state with an invalid conversation id"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v5, v10, v11}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    :cond_4a
    move-wide v3, v8

    goto :goto_3c

    :catch_4c
    move-exception v5

    const-string v8, "Attempted to restore activity state with an invalid direct user id"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e

    nop

    :array_56
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lco/vine/android/util/Util;->isCapableOfInline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-class v1, Lco/vine/android/ConversationActivity;

    :goto_a
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "am_following_recipient"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "keyboard_up"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_27
    const-class v1, Lco/vine/android/ConversationActivityMain;

    goto :goto_a
.end method

.method private prepareClient()V
    .registers 11

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient;->isConnecting()Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient;->isConnected()Z

    move-result v5

    if-nez v5, :cond_7b

    :cond_10
    const-string v5, "ConvActivity;RTC"

    const-string v6, "Preparing client now"

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v0

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lco/vine/android/util/BuildUtil;->getRtcUrl(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "vine-session-id"

    invoke-direct {v7, v8, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "X-Vine-Client"

    invoke-virtual {v0}, Lco/vine/android/client/VineAPI;->getVineClientHeader()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "ConvActivity;RTC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating client: sessionKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lco/vine/android/VineWebSocketClient;

    iget-object v6, p0, Lco/vine/android/ConversationActivity;->mWebSocketListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;

    invoke-direct {v5, v4, v6, v2}, Lco/vine/android/VineWebSocketClient;-><init>(Ljava/net/URI;Lcom/codebutler/android_websockets/WebSocketClient$Listener;Ljava/util/List;)V

    iput-object v5, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    :cond_7b
    return-void
.end method

.method private reconnectWithBackoff()V
    .registers 5

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lco/vine/android/ConversationActivity;->mReconnectDelay:J

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mReconnectRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lco/vine/android/ConversationActivity;->mReconnectDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "ConvActivity;RTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting reconnect runnable with delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lco/vine/android/ConversationActivity;->mReconnectDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRecordingActivityHelper()Lco/vine/android/recorder/RecordingActivityHelper;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;

    return-object v0
.end method

.method public isConversationSideMenuEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/16 v1, 0x65

    if-ne p1, v1, :cond_22

    const/16 v1, 0x5f7

    if-ne p2, v1, :cond_21

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "profile_phone_verified"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mRetrySuccessRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mRetrySuccessRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "conversationFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lco/vine/android/ConversationFragment;

    if-eqz v1, :cond_38

    const/high16 v1, 0x1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_21

    :cond_38
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseControllerActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_21
.end method

.method public onBackPressed(Landroid/view/View;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->onBackPressed()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const v3, 0x7f030046

    invoke-super {p0, p1, v3, v4, v4}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZZ)V

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;

    invoke-virtual {v3}, Lco/vine/android/util/IntentionalObjectCounter;->add()V

    const-string v3, "conversation_row_id"

    invoke-virtual {v2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    const-string v3, "user_id"

    invoke-virtual {v2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    const-string v3, "recipient_username"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    const-string v3, "am_following_recipient"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lco/vine/android/ConversationActivity;->mAmFollowingRecipient:Z

    const-string v3, "keyboard_up"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lco/vine/android/ConversationActivity;->keyBoardUpOnStart:Z

    invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/ConversationActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "co.vine.android.MESSAGE_NOTIFICATION_PRESSED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lco/vine/android/client/AppController;->clearPushNotifications(I)V

    :cond_56
    iget-wide v3, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_65

    iget-wide v3, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_65

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->restoreActivityState()V

    :cond_65
    new-instance v3, Lco/vine/android/ConversationActivity$ConversationSessionListener;

    invoke-direct {v3, p0, v9}, Lco/vine/android/ConversationActivity$ConversationSessionListener;-><init>(Lco/vine/android/ConversationActivity;Lco/vine/android/ConversationActivity$1;)V

    iput-object v3, p0, Lco/vine/android/ConversationActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    iget-wide v3, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_78

    iget-wide v3, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_78

    :cond_78
    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;

    invoke-virtual {v3, p0}, Lco/vine/android/recorder/RecordingActivityHelper;->bindCameraService(Landroid/app/Activity;)V

    invoke-static {p0}, Lco/vine/android/recorder/RecordSessionManager;->getCurrentVersion(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/ConversationActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    if-nez p1, :cond_b3

    new-instance v1, Lco/vine/android/ConversationFragment;

    invoke-direct {v1}, Lco/vine/android/ConversationFragment;-><init>()V

    invoke-static {v2, v6}, Lco/vine/android/ConversationFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "arg_encoder_version"

    iget-object v4, p0, Lco/vine/android/ConversationActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "conversation_row_id"

    iget-wide v4, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Lco/vine/android/ConversationFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0a0102

    const-string v5, "conversationFragment"

    invoke-virtual {v3, v4, v1, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_b3
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lco/vine/android/ConversationActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v4, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    invoke-virtual {v3, v4, v5}, Lco/vine/android/client/AppController;->getConversationRemoteId(J)Ljava/lang/String;

    new-instance v3, Lco/vine/android/ConversationActivity$RealTimeChatReceiver;

    invoke-direct {v3, p0, v9}, Lco/vine/android/ConversationActivity$RealTimeChatReceiver;-><init>(Lco/vine/android/ConversationActivity;Lco/vine/android/ConversationActivity$1;)V

    iput-object v3, p0, Lco/vine/android/ConversationActivity;->mChatReceiver:Lco/vine/android/ConversationActivity$RealTimeChatReceiver;

    iput-boolean v6, p0, Lco/vine/android/ConversationActivity;->mLastTyping:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 12

    const v9, 0x7f0a0243

    const v8, 0x7f0a0242

    const v7, 0x7f0a0241

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-boolean v1, p0, Lco/vine/android/ConversationActivity;->mAmFollowingRecipient:Z

    if-nez v1, :cond_29

    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_29

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    :cond_29
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    :goto_2c
    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_8a

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e010e

    invoke-virtual {p0, v1}, Lco/vine/android/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e010a

    invoke-virtual {p0, v1}, Lco/vine/android/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_6c
    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_71
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e0101

    invoke-virtual {p0, v1}, Lco/vine/android/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2c

    :cond_8a
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_6c
.end method

.method protected onDestroy()V
    .registers 5

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onDestroy()V

    :try_start_3
    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;

    invoke-virtual {v2}, Lco/vine/android/util/IntentionalObjectCounter;->release()V

    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mIntentionalObjectCounter:Lco/vine/android/util/IntentionalObjectCounter;

    invoke-virtual {v2}, Lco/vine/android/util/IntentionalObjectCounter;->getCount()I

    move-result v0

    if-nez v0, :cond_24

    const-string v2, "Clean up folders because we are the last one."

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-virtual {v2, p0}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordSessionManager;->cleanUnusedFolders()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1e} :catch_32

    :cond_1e
    :goto_1e
    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mHelper:Lco/vine/android/recorder/RecordingActivityHelper;

    invoke-virtual {v2, p0}, Lco/vine/android/recorder/RecordingActivityHelper;->unBindCameraService(Landroid/app/Activity;)V

    return-void

    :cond_24
    const/4 v2, 0x1

    if-le v0, v2, :cond_1e

    :try_start_27
    new-instance v2, Lco/vine/android/VineLoggingException;

    const-string v3, "Double instance violation, but it\'s ok."

    invoke-direct {v2, v3}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_32

    goto :goto_1e

    :catch_32
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .registers 7

    packed-switch p2, :pswitch_data_2e

    :goto_3
    return-void

    :pswitch_4
    packed-switch p3, :pswitch_data_38

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->deleteConversation(J)Ljava/lang/String;

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->finish()V

    goto :goto_3

    :pswitch_13
    packed-switch p3, :pswitch_data_3e

    goto :goto_3

    :pswitch_17
    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->ignoreConversation(J)Ljava/lang/String;

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->finish()V

    goto :goto_3

    :pswitch_22
    packed-switch p3, :pswitch_data_44

    goto :goto_3

    :pswitch_26
    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mMessageIdToDelete:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->deleteMessage(J)V

    goto :goto_3

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_13
        :pswitch_22
    .end packed-switch

    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch

    :pswitch_data_3e
    .packed-switch -0x1
        :pswitch_17
    .end packed-switch

    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_26
    .end packed-switch
.end method

.method public onMenuClose()V
    .registers 3

    invoke-static {p0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_UNMUTE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v0, v1}, Lco/vine/android/ConversationActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public onMenuOpened()V
    .registers 3

    invoke-static {p0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v0, v1}, Lco/vine/android/ConversationActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 11

    const-wide/16 v7, 0x0

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v2, "conversation_row_id"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    const-string v2, "am_following_recipient"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/ConversationActivity;->mAmFollowingRecipient:Z

    iget-wide v2, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_24

    iget-wide v2, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_24

    :cond_24
    const-string v2, "user_id"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    const-string v2, "recipient_username"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    const-string v2, "am_following_recipient"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/ConversationActivity;->mAmFollowingRecipient:Z

    new-instance v1, Lco/vine/android/ConversationFragment;

    invoke-direct {v1}, Lco/vine/android/ConversationFragment;-><init>()V

    invoke-static {p1, v4}, Lco/vine/android/ConversationFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "arg_encoder_version"

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "conversation_row_id"

    iget-wide v3, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "am_following_recipient"

    iget-boolean v3, p0, Lco/vine/android/ConversationActivity;->mAmFollowingRecipient:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lco/vine/android/ConversationFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a0102

    const-string v4, "conversationFragment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    :sswitch_d
    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->showIgnoreDialog()V

    goto :goto_c

    :sswitch_11
    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->showDeleteDialog()V

    goto :goto_c

    :sswitch_15
    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->onBackPressed()V

    goto :goto_c

    :sswitch_19
    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    sget-object v3, Lco/vine/android/ConversationActivity;->EVENT_SOURCE_TITLE:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_c

    :sswitch_21
    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    iget-wide v3, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    invoke-virtual {v1, v2, v3, v4, v0}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    goto :goto_c

    nop

    :sswitch_data_30
    .sparse-switch
        0x102002c -> :sswitch_15
        0x7f0a0241 -> :sswitch_21
        0x7f0a0242 -> :sswitch_19
        0x7f0a0243 -> :sswitch_d
        0x7f0a0244 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onPause()V

    :try_start_4
    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mChatReceiver:Lco/vine/android/ConversationActivity$RealTimeChatReceiver;

    invoke-virtual {p0, v0}, Lco/vine/android/ConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_17

    :goto_9
    :try_start_9
    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lco/vine/android/ConversationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_15

    :goto_e
    invoke-virtual {p0, v1, v1}, Lco/vine/android/ConversationActivity;->onTypingStatusChanged(ZZ)V

    invoke-direct {p0}, Lco/vine/android/ConversationActivity;->disconnectClient()V

    return-void

    :catch_15
    move-exception v0

    goto :goto_e

    :catch_17
    move-exception v0

    goto :goto_9
.end method

.method protected onResume()V
    .registers 8

    const/4 v6, 0x0

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onResume()V

    iget-wide v3, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    sput-wide v3, Lco/vine/android/service/ResourceService;->lastActiveconversationRowId:J

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "co.vine.android.rtc.WEBSOCKET_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "co.vine.android.service.mergeSelfNewMessage"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mChatReceiver:Lco/vine/android/ConversationActivity$RealTimeChatReceiver;

    const-string v4, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v3, v0, v4, v6}, Lco/vine/android/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v3, 0x2

    iget-wide v4, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    invoke-static {p0, v3, v4, v5}, Lco/vine/android/service/GCMNotificationService;->getUpdateNotificationIntent(Landroid/content/Context;IJ)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lco/vine/android/ConversationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lco/vine/android/ConversationActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v3, v2, v4, v6}, Lco/vine/android/ConversationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lco/vine/android/ConversationActivity;->prepareClient()V

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient;->connect()V

    :cond_40
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onStart()V

    const/4 v0, 0x1

    sput-boolean v0, Lco/vine/android/service/ResourceService;->isConversationActive:Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onStop()V

    const/4 v0, 0x0

    sput-boolean v0, Lco/vine/android/service/ResourceService;->isConversationActive:Z

    return-void
.end method

.method public onTypingStatusChanged(ZZ)V
    .registers 7

    iget-wide v0, p0, Lco/vine/android/ConversationActivity;->mConversationId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    invoke-direct {p0}, Lco/vine/android/ConversationActivity;->clientIsActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lco/vine/android/ConversationActivity;->mLastTyping:Z

    if-eq v0, p1, :cond_1c

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mConversationId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/VineWebSocketClient;->updateTypingState(JZ)V

    :cond_1c
    :goto_1c
    iput-boolean p1, p0, Lco/vine/android/ConversationActivity;->mLastTyping:Z

    return-void

    :cond_1f
    if-nez p2, :cond_1c

    iget-object v0, p0, Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;

    iget-wide v1, p0, Lco/vine/android/ConversationActivity;->mConversationId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/VineWebSocketClient;->updateTypingState(JZ)V

    goto :goto_1c
.end method

.method protected restoreActivityState()V
    .registers 6

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->restoreActivityState()V

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {p0}, Lco/vine/android/ConversationActivity;->getConversationActivityStates(Landroid/app/Activity;)[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    iput-wide v3, p0, Lco/vine/android/ConversationActivity;->mConversationRowId:J

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    iput-wide v3, p0, Lco/vine/android/ConversationActivity;->mDirectUserId:J

    :cond_23
    return-void
.end method

.method public setRecipientUsername(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    iput-object p1, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lco/vine/android/ConversationActivity;->mRecipientUserName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lco/vine/android/ConversationActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public showDeleteDialog()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {v1}, Lco/vine/android/widgets/PromptDialogFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/widgets/PromptDialogFragment;->setListener(Lco/vine/android/widgets/PromptDialogFragment$OnDialogDoneListener;)V

    const v1, 0x7f0e00b2

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogFragment;

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogFragment;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogFragment;

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    return-void
.end method

.method public showDeleteMessageDialog(J)V
    .registers 5

    iput-wide p1, p0, Lco/vine/android/ConversationActivity;->mMessageIdToDelete:J

    const/4 v1, 0x2

    invoke-static {v1}, Lco/vine/android/widgets/PromptDialogFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/widgets/PromptDialogFragment;->setListener(Lco/vine/android/widgets/PromptDialogFragment$OnDialogDoneListener;)V

    const v1, 0x7f0e00b4

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogFragment;

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogFragment;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogFragment;

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    return-void
.end method

.method public showIgnoreDialog()V
    .registers 3

    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/widgets/PromptDialogFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/widgets/PromptDialogFragment;->setListener(Lco/vine/android/widgets/PromptDialogFragment$OnDialogDoneListener;)V

    const v1, 0x7f0e010d

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogFragment;

    const v1, 0x7f0e010f

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogFragment;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogFragment;

    invoke-virtual {p0}, Lco/vine/android/ConversationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogFragment;->show(Landroid/app/FragmentManager;)V

    return-void
.end method

.method public startPhoneConfirmation(Ljava/lang/Runnable;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "profile_phone_verified"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_e
    return-void

    :cond_f
    iput-object p1, p0, Lco/vine/android/ConversationActivity;->mRetrySuccessRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lco/vine/android/ConversationActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "settings_profile_phone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lco/vine/android/ConfirmationFlowActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lco/vine/android/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e
.end method
