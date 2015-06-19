.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;
.super Ljava/lang/Thread;
.source "Camera360FeedbackQueryThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;
    }
.end annotation


# static fields
.field private static final IMEI:Ljava/lang/String; = "eid"

.field private static final TAG:Ljava/lang/String; = "test"

.field private static final TIME_STAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeedbackData:Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

.field private mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    iput-object p3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mFeedbackData:Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    invoke-interface {v11}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;->fail()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-wide/16 v8, -0x1

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mFeedbackData:Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    if-eqz v11, :cond_1e

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mFeedbackData:Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    invoke-virtual {v11}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getTime()J

    move-result-wide v8

    :cond_1e
    new-instance v6, Lcom/pinguo/camera360/push/utils/PushPreference;

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/pinguo/camera360/push/utils/PushUtils;->getIMEI(Landroid/content/Context;Lcom/pinguo/camera360/push/utils/PushPreference;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->getCommonParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    const-string/jumbo v11, "eid"

    invoke-static {v3}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v11, -0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_4f

    const-string/jumbo v11, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    const-string/jumbo v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "timeStamp="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "eid="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "inputParams="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->getQueryFeedbackUrl()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u67e5\u8be2\u53cd\u9988\u4fe1\u606f\u7684url="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v11, 0x1

    :try_start_b1
    invoke-static {v10, v4, v11}, Lcom/github/kevinsawicki/HttpRequest;->get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->trustAllCerts()Lcom/github/kevinsawicki/HttpRequest;

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->trustAllHosts()Lcom/github/kevinsawicki/HttpRequest;

    const/16 v11, 0x3a98

    invoke-virtual {v7, v11}, Lcom/github/kevinsawicki/HttpRequest;->connectTimeout(I)Lcom/github/kevinsawicki/HttpRequest;

    const/16 v11, 0x3a98

    invoke-virtual {v7, v11}, Lcom/github/kevinsawicki/HttpRequest;->readTimeout(I)Lcom/github/kevinsawicki/HttpRequest;

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v1

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->message()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "code="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "body="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "msg="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xc8

    if-ne v1, v11, :cond_127

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    if-eqz v11, :cond_120

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    invoke-interface {v11, v0}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;->success(Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_b1 .. :try_end_120} :catchall_145
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_120} :catch_131

    :cond_120
    :goto_120
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->disconnect()Lcom/github/kevinsawicki/HttpRequest;

    goto/16 :goto_11

    :cond_127
    :try_start_127
    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    if-eqz v11, :cond_120

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    invoke-interface {v11}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;->fail()V
    :try_end_130
    .catchall {:try_start_127 .. :try_end_130} :catchall_145
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_130} :catch_131

    goto :goto_120

    :catch_131
    move-exception v2

    :try_start_132
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    if-eqz v11, :cond_13e

    iget-object v11, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;

    invoke-interface {v11}, Lcom/pinguo/camera360/feedback/Camera360FeedbackQueryThread$Listener;->fail()V
    :try_end_13e
    .catchall {:try_start_132 .. :try_end_13e} :catchall_145

    :cond_13e
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->disconnect()Lcom/github/kevinsawicki/HttpRequest;

    goto/16 :goto_11

    :catchall_145
    move-exception v11

    if-eqz v7, :cond_14b

    invoke-virtual {v7}, Lcom/github/kevinsawicki/HttpRequest;->disconnect()Lcom/github/kevinsawicki/HttpRequest;

    :cond_14b
    throw v11
.end method
