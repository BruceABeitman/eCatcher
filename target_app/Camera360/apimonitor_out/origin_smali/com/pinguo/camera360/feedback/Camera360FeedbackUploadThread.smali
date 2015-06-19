.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;
.super Ljava/lang/Thread;
.source "Camera360FeedbackUploadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;
    }
.end annotation


# static fields
.field private static final FEEDBACK_MESSAGE:Ljava/lang/String; = "feedback"

.field private static final IMEI:Ljava/lang/String; = "eid"

.field private static final TAG:Ljava/lang/String; = "test"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

.field private mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackData;",
            ">;",
            "Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mLists:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mLists:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_17a

    if-nez v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    invoke-interface {v15}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;->allUploadCompelete()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    :try_start_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    invoke-interface {v15}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;->start()V

    :cond_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_17a

    move-result v12

    const/4 v5, 0x0

    :goto_2a
    if-lt v5, v12, :cond_3a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    invoke-interface {v15}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;->allUploadCompelete()V

    goto :goto_13

    :cond_3a
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;

    new-instance v10, Lcom/pinguo/camera360/push/utils/PushPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mContext:Landroid/content/Context;

    invoke-direct {v10, v15}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mContext:Landroid/content/Context;

    invoke-static {v15, v10}, Lcom/pinguo/camera360/push/utils/PushUtils;->getIMEI(Landroid/content/Context;Lcom/pinguo/camera360/push/utils/PushPreference;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->getCommonParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v7

    const-string/jumbo v15, "eid"

    invoke-static {v6}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "feedback"

    invoke-static {v4}, Lcom/pinguo/lib/network/HttpUtils;->encodeUrlInputParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getExtra()Ljava/util/Map;

    move-result-object v15

    if-eqz v15, :cond_86

    invoke-virtual {v8}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->getExtra()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_86
    const-string/jumbo v15, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "eid="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "feedback="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/feedback/Camera360FeedbackNetworkUtils;->getQueryFeedbackUrl()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "\u4e0a\u62a5\u53cd\u9988\u4fe1\u606f\u7684url="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_3a .. :try_end_d2} :catchall_17a

    const/4 v11, 0x0

    const/4 v13, 0x1

    :try_start_d4
    invoke-static {v14}, Lcom/github/kevinsawicki/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v11

    if-eqz v13, :cond_e0

    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->trustAllCerts()Lcom/github/kevinsawicki/HttpRequest;

    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->trustAllHosts()Lcom/github/kevinsawicki/HttpRequest;

    :cond_e0
    const/16 v15, 0x3a98

    invoke-virtual {v11, v15}, Lcom/github/kevinsawicki/HttpRequest;->connectTimeout(I)Lcom/github/kevinsawicki/HttpRequest;

    const/16 v15, 0x3a98

    invoke-virtual {v11, v15}, Lcom/github/kevinsawicki/HttpRequest;->readTimeout(I)Lcom/github/kevinsawicki/HttpRequest;

    invoke-virtual {v11, v7}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/util/Map;)Lcom/github/kevinsawicki/HttpRequest;

    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v2

    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->message()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "code="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "body="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "test"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "msg="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0xc8

    if-ne v2, v15, :cond_155

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    invoke-interface {v15, v1}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;->uploadSuccess(Ljava/lang/String;)V
    :try_end_14c
    .catchall {:try_start_d4 .. :try_end_14c} :catchall_18d
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_14c} :catch_163

    :cond_14c
    :goto_14c
    if-eqz v11, :cond_151

    :try_start_14e
    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->disconnect()Lcom/github/kevinsawicki/HttpRequest;
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_17a

    :cond_151
    :goto_151
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2a

    :cond_155
    :try_start_155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    if-eqz v15, :cond_14c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    invoke-interface {v15, v8}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;->fail(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V
    :try_end_162
    .catchall {:try_start_155 .. :try_end_162} :catchall_18d
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_162} :catch_163

    goto :goto_14c

    :catch_163
    move-exception v3

    :try_start_164
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    if-eqz v15, :cond_174

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    invoke-interface {v15, v8}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;->fail(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V
    :try_end_174
    .catchall {:try_start_164 .. :try_end_174} :catchall_18d

    :cond_174
    if-eqz v11, :cond_151

    :try_start_176
    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->disconnect()Lcom/github/kevinsawicki/HttpRequest;
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_17a

    goto :goto_151

    :catchall_17a
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_18c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;->mListener:Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;->allUploadCompelete()V

    :cond_18c
    throw v15

    :catchall_18d
    move-exception v15

    if-eqz v11, :cond_193

    :try_start_190
    invoke-virtual {v11}, Lcom/github/kevinsawicki/HttpRequest;->disconnect()Lcom/github/kevinsawicki/HttpRequest;

    :cond_193
    throw v15
    :try_end_194
    .catchall {:try_start_190 .. :try_end_194} :catchall_17a
.end method
