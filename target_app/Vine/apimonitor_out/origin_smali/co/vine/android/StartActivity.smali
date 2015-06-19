.class public Lco/vine/android/StartActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/StartActivity$StartSessionListener;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_NOTIFICATION_PRESSED:Ljava/lang/String; = "co.vine.android.ACTIVITY_NOTIFICATION_PRESSED"

.field public static final ACTION_MESSAGE_NOTIFICATION_PRESSED:Ljava/lang/String; = "co.vine.android.MESSAGE_NOTIFICATION_PRESSED"

.field public static final ACTION_RECORD:Ljava/lang/String; = "co.vine.android.RECORD"

.field public static final ACTION_VIEW_UPLOAD_LIST:Ljava/lang/String; = "co.vine.android.UPLOAD_LIST"

.field private static final DIALOG_ACTIVATE_ACCOUNT:I = 0x1

.field public static final EXTRA_IS_NEW_USER:Ljava/lang/String; = "is_new_user"

.field public static final EXTRA_LOGIN_REQUEST:Ljava/lang/String; = "login_request_start_activity"

.field private static final PREF_LOG_STARTUP_FAIL:Ljava/lang/String; = "pref_log_startup_fail"

.field private static final REQUEST_CODE_TWITTER_SDK:I = 0x1

.field private static final STATE_AUTH_INTENT:Ljava/lang/String; = "auth_intent"

.field private static final STATE_STOP_POSITION:Ljava/lang/String; = "state_p"


# instance fields
.field private mAuthIntent:Landroid/content/Intent;

.field private mHandler:Landroid/os/Handler;

.field private mLoginRequest:Z

.field private mStopPosition:I

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private mVideoView:Lco/vine/android/player/VideoViewInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lco/vine/android/StartActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/StartActivity;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/StartActivity;->openStartVideo()V

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/StartActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lco/vine/android/StartActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/StartActivity;)Lco/vine/android/player/VideoViewInterface;
    .registers 2

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/StartActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    return v0
.end method

.method private static broadcastFinish(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "co.vine.android.FINISH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static getStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0, v0}, Lco/vine/android/StartActivity;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private loginCheckTwitter(Landroid/content/Intent;Z)V
    .registers 11

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "tk"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/app/ProgressDialog;

    const v0, 0x7f0f0037

    invoke-direct {v7, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v0, 0x7f0e021d

    invoke-virtual {p0, v0}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    iput-object v7, p0, Lco/vine/android/StartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    const-string v4, "user_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    goto :goto_2
.end method

.method private openStartVideo()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0, v1}, Lco/vine/android/player/VideoViewInterface;->setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0, v1}, Lco/vine/android/player/VideoViewInterface;->setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    const v1, 0x7f060001

    invoke-static {p0, v1}, Lco/vine/android/util/SystemUtil;->getPathFromResourceRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lco/vine/android/player/VideoViewInterface;->setVideoPathDirect(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    iget v1, p0, Lco/vine/android/StartActivity;->mStopPosition:I

    invoke-interface {v0, v1}, Lco/vine/android/player/VideoViewInterface;->seekTo(I)V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->start()V

    return-void
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .registers 21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/StartActivity;->setRequestedOrientation(I)V

    invoke-static/range {p0 .. p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v12

    invoke-virtual {v12}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/Session;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_16a

    if-eqz p1, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v10, "com.facebook.application"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    :goto_2d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    if-eqz v3, :cond_53

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lco/vine/android/StartActivity;->setResult(I)V

    :cond_39
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->finish()V

    const/4 v3, 0x1

    :goto_3d
    return v3

    :cond_3e
    if-eqz p1, :cond_51

    const-string v3, "login_request_start_activity"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x1

    :goto_4c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    goto :goto_2d

    :cond_51
    const/4 v3, 0x0

    goto :goto_4c

    :cond_53
    invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;

    move-result-object v10

    if-eqz p1, :cond_f0

    const-string v3, "co.vine.android.RECORD"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    const/4 v3, 0x1

    :goto_68
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v12, v3}, Lco/vine/android/AppImpl;->updateClientProfile(Landroid/content/Context;Lco/vine/android/client/AppController;Z)V

    if-eqz p1, :cond_39

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v3, "co.vine.android.RECORD"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;

    move-result-object v14

    const/4 v15, 0x0

    const-string v3, "co.vine.android.MESSAGE_NOTIFICATION_PRESSED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lco/vine/android/client/AppController;->clearPushNotifications(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v13

    const-string v3, "username"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "user_id"

    const-wide/16 v17, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v3, "am_following"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v13, :cond_f3

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_b5
    const-wide/16 v17, 0x0

    cmp-long v3, v4, v17

    if-lez v3, :cond_c5

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lco/vine/android/ConversationActivity;->getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_c5
    if-nez v15, :cond_e7

    if-nez v16, :cond_145

    new-instance v15, Landroid/content/Intent;

    const-class v3, Lco/vine/android/HomeTabActivity;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1400

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v15, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v11, :cond_e7

    const/4 v3, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_176

    :cond_e4
    :goto_e4
    packed-switch v3, :pswitch_data_184

    :cond_e7
    :goto_e7
    if-eqz v15, :cond_39

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_39

    :cond_f0
    const/4 v3, 0x0

    goto/16 :goto_68

    :cond_f3
    const-wide/16 v4, -0x1

    goto :goto_b5

    :sswitch_f6
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    const/4 v3, 0x0

    goto :goto_e4

    :sswitch_100
    const-string v10, "co.vine.android.ACTIVITY_NOTIFICATION_PRESSED"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    const/4 v3, 0x1

    goto :goto_e4

    :sswitch_10a
    const-string v10, "co.vine.android.MESSAGE_NOTIFICATION_PRESSED"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    const/4 v3, 0x2

    goto :goto_e4

    :pswitch_114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "is_new_user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    const-string v3, "is_new_user"

    const/4 v10, 0x1

    invoke-virtual {v15, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_e7

    :pswitch_12c
    invoke-virtual {v15, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lco/vine/android/client/AppController;->clearPushNotifications(I)V

    const/high16 v3, 0x400

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_e7

    :pswitch_13d
    invoke-virtual {v15, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_e7

    :cond_145
    const/high16 v3, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "StartActivity: "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-interface {v14, v0, v3, v10}, Lco/vine/android/AppInterface;->getRecordingIntent(Landroid/app/Activity;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    goto/16 :goto_e7

    :cond_16a
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lco/vine/android/client/AppController;->fetchClientFlags(Z)V

    const/4 v3, 0x0

    goto/16 :goto_3d

    nop

    :sswitch_data_176
    .sparse-switch
        -0x45ed2f16 -> :sswitch_f6
        -0x112543e3 -> :sswitch_100
        -0x7cefa19 -> :sswitch_10a
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_114
        :pswitch_12c
        :pswitch_13d
    .end packed-switch
.end method

.method public static toStart(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;Z)V

    return-void
.end method

.method public static toStart(Landroid/content/Context;Z)V
    .registers 4

    invoke-static {p0}, Lco/vine/android/StartActivity;->getStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_b

    const-string v1, "is_new_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z

    move-result v1

    if-eqz v1, :cond_1b

    instance-of v1, p0, Lco/vine/android/StartActivity;

    if-nez v1, :cond_1b

    invoke-static {p0}, Lco/vine/android/StartActivity;->broadcastFinish(Landroid/content/Context;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lco/vine/android/StartActivity;->loginCheckTwitter(Landroid/content/Intent;Z)V

    iput-object p3, p0, Lco/vine/android/StartActivity;->mAuthIntent:Landroid/content/Intent;

    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_66

    :cond_8
    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    iget-boolean v2, p0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    if-eqz v2, :cond_15

    invoke-static {p0}, Lco/vine/android/LoginActivity;->getIntentWithFinish(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_15
    invoke-static {p0}, Lco/vine/android/LoginActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :pswitch_1d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-boolean v2, p0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    if-eqz v2, :cond_2b

    const-string v2, "finish"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2b
    invoke-static {p0, v1}, Lco/vine/android/SignUpPagerActivity;->getIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :pswitch_33
    :try_start_33
    iget-object v2, p0, Lco/vine/android/StartActivity;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    if-eqz v2, :cond_55

    invoke-static {p0}, Lco/vine/android/LoginTwitterActivity;->getIntentWithFinish(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_47} :catch_48

    goto :goto_8

    :catch_48
    move-exception v0

    iget-boolean v2, p0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    if-eqz v2, :cond_5d

    invoke-static {p0}, Lco/vine/android/LoginTwitterActivity;->getIntentWithFinish(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_55
    :try_start_55
    invoke-static {p0}, Lco/vine/android/LoginTwitterActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_5c} :catch_48

    goto :goto_8

    :cond_5d
    invoke-static {p0}, Lco/vine/android/LoginTwitterActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    nop

    :pswitch_data_66
    .packed-switch 0x7f0a0222
        :pswitch_9
        :pswitch_8
        :pswitch_1d
        :pswitch_33
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 24

    const v17, 0x7f030098

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x40

    and-int v17, v17, v18

    if-eqz v17, :cond_32

    const-string v17, "android.intent.action.MAIN"

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->finish()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_45

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_45
    if-eqz p1, :cond_76

    :try_start_47
    const-string v17, "auth_intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_76

    const-string v17, "auth_intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mAuthIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mAuthIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lco/vine/android/StartActivity;->loginCheckTwitter(Landroid/content/Intent;Z)V
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_76} :catch_225

    :cond_76
    :try_start_76
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity;->processIntent(Landroid/content/Intent;)Z
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_81} :catch_26d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_81} :catch_225

    move-result v13

    if-nez v13, :cond_31

    :try_start_84
    invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v17

    if-nez v17, :cond_95

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lco/vine/android/client/AppController;->fetchClientFlags(Z)V

    :cond_95
    new-instance v5, Landroid/text/style/StyleSpan;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [Landroid/text/style/StyleSpan;

    const/16 v17, 0x0

    aput-object v5, v11, v17

    const v17, 0x7f0a0224

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    const v17, 0x7f0e022c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v17, 0x7f0a0225

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    const v17, 0x7f0e022d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v17, 0x7f0a0222

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v17, 0x7f0e022a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Spannable;

    invoke-interface {v15, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    invoke-interface {v15, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090083

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-direct/range {v17 .. v18}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v14, v0, v1, v7, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/client/AppController;->getTwitter()Lcom/twitter/android/sdk/Twitter;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const v17, 0x7f0a0221

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lco/vine/android/player/VideoViewInterface;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lco/vine/android/player/VideoViewInterface;->setKeepScreenOn(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lco/vine/android/player/VideoViewInterface;->setLooping(Z)V

    invoke-static/range {p0 .. p0}, Lco/vine/android/util/SystemUtil;->isNormalVideoPlayable(Landroid/content/Context;)Lco/vine/android/util/SystemUtil$PrefBooleanState;

    move-result-object v17

    sget-object v18, Lco/vine/android/util/SystemUtil$PrefBooleanState;->UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    move-object/from16 v17, v0

    const v18, 0x7f060002

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lco/vine/android/util/SystemUtil;->getPathFromResourceRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lco/vine/android/player/VideoViewInterface;->setVideoPathDirect(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    move-object/from16 v17, v0

    new-instance v18, Lco/vine/android/StartActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity$1;-><init>(Lco/vine/android/StartActivity;)V

    invoke-interface/range {v17 .. v18}, Lco/vine/android/player/VideoViewInterface;->setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    move-object/from16 v17, v0

    new-instance v18, Lco/vine/android/StartActivity$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity$2;-><init>(Lco/vine/android/StartActivity;)V

    invoke-interface/range {v17 .. v18}, Lco/vine/android/player/VideoViewInterface;->setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V

    :goto_1d9
    if-eqz p1, :cond_1f7

    const-string v17, "state_p"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f7

    const-string v17, "state_p"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/StartActivity;->mStopPosition:I

    :cond_1f7
    new-instance v17, Lco/vine/android/StartActivity$StartSessionListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity$StartSessionListener;-><init>(Lco/vine/android/StartActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-static/range {p0 .. p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_log_startup_fail"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_223
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_84 .. :try_end_223} :catch_225

    goto/16 :goto_31

    :catch_225
    move-exception v6

    invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v17, "pref_log_startup_fail: {}."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "pref_log_startup_fail"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v17, 0x7f0e022e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_log_startup_fail"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->finish()V

    goto/16 :goto_31

    :catch_26d
    move-exception v6

    :try_start_26e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to process intent: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v6, v0, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v17, 0x7f0e022e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->finish()V

    goto/16 :goto_31

    :cond_2c3
    invoke-direct/range {p0 .. p0}, Lco/vine/android/StartActivity;->openStartVideo()V
    :try_end_2c6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26e .. :try_end_2c6} :catch_225

    goto/16 :goto_1d9
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onDestroy()V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->suspend()V

    :cond_c
    return-void
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .registers 6

    packed-switch p2, :pswitch_data_14

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    packed-switch p3, :pswitch_data_1a

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lco/vine/android/StartActivity;->mAuthIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lco/vine/android/StartActivity;->mAuthIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lco/vine/android/StartActivity;->loginCheckTwitter(Landroid/content/Intent;Z)V

    goto :goto_3

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/StartActivity;->processIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onPause()V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lco/vine/android/StartActivity;->mStopPosition:I

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->pause()V

    :cond_14
    invoke-virtual {p0}, Lco/vine/android/StartActivity;->dismissDialog()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onResume()V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    iget v1, p0, Lco/vine/android/StartActivity;->mStopPosition:I

    invoke-interface {v0, v1}, Lco/vine/android/player/VideoViewInterface;->seekTo(I)V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->resume()V

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lco/vine/android/StartActivity;->mLoginRequest:Z

    if-eqz v0, :cond_2e

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/StartActivity;->setResult(I)V

    invoke-virtual {p0}, Lco/vine/android/StartActivity;->finish()V

    :cond_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Lco/vine/android/player/VideoViewInterface;

    invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->start()V

    goto :goto_1b
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/StartActivity;->mAuthIntent:Landroid/content/Intent;

    if-eqz v0, :cond_e

    const-string v0, "auth_intent"

    iget-object v1, p0, Lco/vine/android/StartActivity;->mAuthIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_e
    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackLockOutSessionCount()V

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onStop()V

    return-void
.end method
