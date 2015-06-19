.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
.super Landroid/app/Activity;
.source "Camera360FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;
.implements Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;,
        Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BASEURI:Landroid/net/Uri; = null

.field public static final EXTRA_KEY_CAN_LOGGIN_FLAG:Ljava/lang/String; = "can_login_flag"

.field public static final EXTRA_KEY_NEW_MESSAGE:Ljava/lang/String; = "new_message_key"

.field private static final FEEDBACK_PROJECTION:[Ljava/lang/String; = null

.field private static final MESSAGE_CHECK_FEEDBACK:I = 0x1

.field private static final MESSAGE_DISMISS_UPLOAD_FEEDBACK:I = 0x3

.field private static final MESSAGE_SHOW_UPLOAD_FEEDBACK:I = 0x2

.field private static final MESSAGE_UPDATE_UI:I = 0x0

.field private static final MESSAGE_UPLOAD_FEEDBACK_FAIL:I = 0x4

.field private static final SORT:Ljava/lang/String; = "time ASC"

.field private static final TAG:Ljava/lang/String; = "test"

.field private static TIME_INTERBAL:J = 0x0L

.field public static final UPDATE_UI_ACTION:Ljava/lang/String; = "com.pinguo.camear360.feedback.updateui.broadcast"


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mBroadcast:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDestory:Z

.field private mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

.field private mFeedbackList:Landroid/widget/ListView;

.field private mFeedbackMessage:Landroid/widget/EditText;

.field private mHander:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mLoginBtn:Landroid/widget/Button;

.field private mRepeatCount:I

.field private mSubmitFeedbackButton:Landroid/widget/Button;

.field private mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->FEEDBACK_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackDatabaseField;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->BASEURI:Landroid/net/Uri;

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->TIME_INTERBAL:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mDestory:Z

    new-instance v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$1;-><init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mRepeatCount:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->updateFeedbackUI()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method private initViews()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x7f0a05b1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackList:Landroid/widget/ListView;

    const v0, 0x7f0a05ae

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBackButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05b3

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mSubmitFeedbackButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mSubmitFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05b4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackMessage:Landroid/widget/EditText;

    const v0, 0x7f0a05af

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mLoginBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mLoginBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private insertFeedbackInfoToDatabase(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "message"

    invoke-virtual {p1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-virtual {p1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->BASEURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private parseDataFromServer(Lorg/json/JSONArray;)V
    .registers 19

    if-eqz p1, :cond_b

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_b

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v9, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    new-instance v4, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    invoke-direct {v4}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;-><init>()V

    :cond_1b
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_63

    sget-object v10, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->BASEURI:Landroid/net/Uri;

    const-string/jumbo v11, "time=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getTime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v11, v12}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->updateFeedbackInfoFromDatabase(Landroid/net/Uri;Lcom/pinguo/camera360/feedback/Camera360FeedbackData;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v10, "test"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\u66f4\u65b0\u6570\u636e\u5e93\u8bb0\u5f55:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_60

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->insertFeedbackInfoToDatabase(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_63
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v10, "msg"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "test"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\u89e3\u6790\u8fd4\u56de\u7684\u6570\u636e:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setMessage(Ljava/lang/String;)V
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_8f} :catch_90

    goto :goto_1b

    :catch_90
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_b

    :cond_96
    :try_start_96
    const-string/jumbo v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setName(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_a8
    const-string/jumbo v10, "time"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setTime(J)V
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_b8} :catch_90

    goto/16 :goto_1b
.end method

.method private queryFeedbackInfoFromDatabase(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_53

    :goto_12
    return-object v8

    :cond_13
    :try_start_13
    new-instance v7, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    invoke-direct {v7}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;-><init>()V

    const-string/jumbo v0, "message"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setMessage(Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setName(Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setTime(J)V

    const-string/jumbo v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setStatus(I)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_5d

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :catchall_5d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private sendMessage(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_17

    const v2, 0x7f080324

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    :goto_16
    return v1

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;

    invoke-direct {v2, p0, v0, p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->start()V

    goto :goto_16
.end method

.method private updateFeedbackInfoFromDatabase(Landroid/net/Uri;Lcom/pinguo/camera360/feedback/Camera360FeedbackData;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "message"

    invoke-virtual {p2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    invoke-virtual {p2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-virtual {p2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "status"

    invoke-virtual {p2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateFeedbackUI()V
    .registers 8

    const/4 v3, 0x0

    sget-object v1, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->BASEURI:Landroid/net/Uri;

    sget-object v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->FEEDBACK_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "time ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->queryFeedbackInfoFromDatabase(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    if-nez v0, :cond_2c

    new-instance v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    invoke-direct {v0, p0, v6}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_20
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    invoke-virtual {v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    invoke-virtual {v0, v6}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->setFeedbackDatas(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->notifyDataSetChanged()V

    goto :goto_20
.end method


# virtual methods
.method public allUploadCompelete()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public fail()V
    .registers 3

    const-string/jumbo v0, "test"

    const-string/jumbo v1, "\u67e5\u8be2\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fail(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V
    .registers 7

    const-string/jumbo v1, "test"

    const-string/jumbo v2, "\u53cd\u9988\u4e0a\u62a5\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mRepeatCount:I

    if-gtz v1, :cond_3a

    iget-object v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    new-instance v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;

    invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$ReUploadFeedbackMessage;-><init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;Ljava/util/ArrayList;)V

    sget-wide v3, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->TIME_INTERBAL:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-wide v1, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->TIME_INTERBAL:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    sput-wide v1, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->TIME_INTERBAL:J

    iget v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mRepeatCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mRepeatCount:I

    :cond_3a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_6c

    :cond_8
    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->finish()V

    goto :goto_8

    :pswitch_d
    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackMessage:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    const-string/jumbo v2, "me"

    const-wide/16 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->sendMessage(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackMessage:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackMessage:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v8, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_8

    :pswitch_4c
    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v11

    invoke-virtual {v11}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_61

    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    invoke-direct {v9, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_61
    invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V

    const/16 v2, 0x1b9e

    const/16 v3, -0x3e7

    invoke-static {p0, v2, v3}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V

    goto :goto_8

    :pswitch_data_6c
    .packed-switch 0x7f0a05ae
        :pswitch_9
        :pswitch_4c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f030100

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->setContentView(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayShow(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->initViews()V

    invoke-direct {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->updateFeedbackUI()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "new_message_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    if-eqz v1, :cond_26

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->sendMessage(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)Z

    :cond_26
    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "can_login_flag"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mLoginBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3a
    const-string/jumbo v2, "app://pinguo.android.team.feedback"

    invoke-virtual {p0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "app://pinguo.android.team.feedback"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushSimple(I)V

    :cond_51
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mDestory:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBroadcast:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBroadcast:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBroadcast:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

    :cond_d
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setUnreadFeedbackCount(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->clearUserInfo()V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    :cond_49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 7

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mFeedbackAdapter:Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;

    iget-object v4, v2, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/pinguo/camera360/feedback/Camera360FeedbackAdapter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    new-instance v3, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;

    invoke-direct {v3, p0, p0, v5}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->start()V

    iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBroadcast:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

    if-nez v3, :cond_36

    new-instance v3, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

    invoke-direct {v3, p0, v5}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;-><init>(Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;)V

    iput-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBroadcast:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

    iget-object v3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mBroadcast:Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity$UpdateUIBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.pinguo.camear360.feedback.updateui.broadcast"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public start()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v6, "test"

    const-string/jumbo v7, "\u67e5\u8be2\u6210\u529f"

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1f

    :goto_18
    iget-object v6, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1e
    return-void

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_12

    goto :goto_18

    :cond_37
    const-string/jumbo v6, "dialogs"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->parseDataFromServer(Lorg/json/JSONArray;)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_47} :catch_48

    goto :goto_12

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method public uploadSuccess(Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v6, "test"

    const-string/jumbo v7, "\u53cd\u9988\u4e0a\u62a5\u6210\u529f"

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mDestory:Z

    if-eqz v6, :cond_e

    :goto_d
    return-void

    :cond_e
    :try_start_e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_29

    :goto_1d
    iget-object v6, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->mHander:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_23} :catch_24

    goto :goto_d

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    :cond_29
    :try_start_29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_17

    goto :goto_1d

    :cond_41
    const-string/jumbo v6, "dialogs"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;->parseDataFromServer(Lorg/json/JSONArray;)V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_51} :catch_24

    goto :goto_17
.end method
