.class public Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
.super Landroid/os/AsyncTask;
.source "VineUploadService.java"

# interfaces
.implements Lco/vine/android/recorder/EncoderManager$EncoderBoss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;",
        "Lco/vine/android/recorder/EncoderManager$EncoderBoss;"
    }
.end annotation


# instance fields
.field public final action:Ljava/lang/String;

.field public final conversationRowId:J

.field private mExecutionStatus:I

.field private mIsDiscarded:Z

.field private mIsPrivate:Z

.field private mIsRetry:Z

.field private mListener:Lco/vine/android/service/UploadProgressListener;

.field public mUpload:Lco/vine/android/api/VineUpload;

.field public final path:Ljava/lang/String;

.field final synthetic this$0:Lco/vine/android/service/VineUploadService;

.field public final thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lco/vine/android/service/UploadProgressListener;)V
    .registers 10

    const/4 v3, 0x0

    iput-object p1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iput-object p3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    const-string v0, "conversation_row_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p4, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->conversationRowId:J

    iput-object p5, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    invoke-static {p2}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    const-string v0, "is_retry"

    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsRetry:Z

    const-string v0, "is_private"

    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsPrivate:Z

    return-void
.end method

.method private onComplete()V
    .registers 5

    const-class v2, Lco/vine/android/service/VineUploadService;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    const/4 v3, 0x1

    #calls: Lco/vine/android/service/VineUploadService;->clearNotification(I)V
    invoke-static {v1, v3}, Lco/vine/android/service/VineUploadService;->access$600(Lco/vine/android/service/VineUploadService;I)V

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    const/4 v3, 0x0

    #setter for: Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
    invoke-static {v1, v3}, Lco/vine/android/service/VineUploadService;->access$402(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "co.vine.android.UPLOAD_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_status"

    iget v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mExecutionStatus:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "path"

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "thumbnail"

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    const-string v3, "co.vine.android.BROADCAST"

    invoke-virtual {v1, v0, v3}, Lco/vine/android/service/VineUploadService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->executeNext()V
    invoke-static {v1}, Lco/vine/android/service/VineUploadService;->access$1500(Lco/vine/android/service/VineUploadService;)V

    monitor-exit v2

    return-void

    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 28

    const-class v25, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    monitor-enter v25

    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    if-nez v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lco/vine/android/util/UploadManager;->getUpload(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/api/VineUpload;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    iget v1, v1, Lco/vine/android/api/VineUpload;->status:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    :cond_28
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_1c7

    move-result-object v1

    :try_start_2d
    monitor-exit v25
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_74

    :goto_2e
    return-object v1

    :cond_2f
    :try_start_2f
    const-string v1, "bPost"

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v1, "upload"

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;
    invoke-static {v1}, Lco/vine/android/service/VineUploadService;->access$1100(Lco/vine/android/service/VineUploadService;)Lco/vine/android/service/VineServiceConnection;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v1, v2, v9}, Lco/vine/android/service/VineServiceConnection;->queueAndExecute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsRetry:Z

    if-nez v1, :cond_6d

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    if-eqz v1, :cond_6d

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lco/vine/android/service/UploadProgressListener;->showPostNotification(Ljava/lang/String;)V

    :cond_6d
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_71
    .catchall {:try_start_2f .. :try_end_71} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_71} :catch_1c7

    move-result-object v1

    :try_start_72
    monitor-exit v25

    goto :goto_2e

    :catchall_74
    move-exception v1

    monitor-exit v25
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_74

    throw v1

    :cond_77
    :try_start_77
    const-string v1, "aUpload"

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d8

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-static {v1}, Lco/vine/android/recorder/HashAsyncTask;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    iget-object v14, v1, Lco/vine/android/api/VineUpload;->hash:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d8

    if-eqz v14, :cond_bd

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bd

    const-string v1, "Invalid hash: actual {}, expected {}."

    invoke-static {v1, v15, v14}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_b9
    .catchall {:try_start_77 .. :try_end_b9} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_b9} :catch_1c7

    move-result-object v1

    :try_start_ba
    monitor-exit v25
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_74

    goto/16 :goto_2e

    :cond_bd
    :try_start_bd
    new-instance v1, Lco/vine/android/VineLoggingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected hash was invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    :cond_d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-static {v1}, Lco/vine/android/util/UploadManager;->getVersionFromPath(Ljava/lang/String;)Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v8

    iget-boolean v1, v8, Lco/vine/android/recorder/RecordSessionVersion;->localTranscodeRequired:Z

    if-eqz v1, :cond_1a4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_152

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v11}, Lco/vine/android/recorder/EncoderManager;->transcode(Lco/vine/android/recorder/EncoderManager$EncoderBoss;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v16

    const-string v1, "Re-encoding took {} ms, compressed from {} to {}."

    sub-long v2, v12, v21

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v1, "Encoded file path: {}."

    invoke-static {v1, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    invoke-static {v11}, Lco/vine/android/recorder/HashAsyncTask;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lco/vine/android/util/UploadManager;->setHash(Landroid/content/Context;Lco/vine/android/api/VineUpload;Ljava/lang/String;)V

    :cond_152
    move-object v4, v11

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    if-eqz v1, :cond_178

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    iput-wide v2, v1, Lco/vine/android/service/UploadProgressListener;->size:J

    :cond_178
    :goto_178
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    #getter for: Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;
    invoke-static {v1}, Lco/vine/android/service/VineUploadService;->access$1200(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsPrivate:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lco/vine/android/util/UploadManager;->upload(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;Lco/vine/android/service/UploadProgressListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLco/vine/android/recorder/RecordSessionVersion;)[Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1d5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1a0
    .catchall {:try_start_bd .. :try_end_1a0} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_1a0} :catch_1c7

    move-result-object v1

    :try_start_1a1
    monitor-exit v25
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_74

    goto/16 :goto_2e

    :cond_1a4
    :try_start_1a4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    if-eqz v1, :cond_178

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    iput-wide v2, v1, Lco/vine/android/service/UploadProgressListener;->size:J
    :try_end_1c6
    .catchall {:try_start_1a4 .. :try_end_1c6} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1c6} :catch_1c7

    goto :goto_178

    :catch_1c7
    move-exception v10

    :try_start_1c8
    const-string v1, "Failed to upload."

    invoke-static {v1, v10}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1cd
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v25
    :try_end_1d3
    .catchall {:try_start_1c8 .. :try_end_1d3} :catchall_74

    goto/16 :goto_2e

    :cond_1d5
    if-eqz v24, :cond_226

    :try_start_1d7
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    invoke-static {v1, v2}, Lco/vine/android/util/UploadManager;->setUploadTime(Landroid/content/Context;Lco/vine/android/api/VineUpload;)V

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    move-object/from16 v0, v24

    invoke-static {v1, v2, v0}, Lco/vine/android/util/UploadManager;->setUris(Landroid/content/Context;Lco/vine/android/api/VineUpload;[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lco/vine/android/util/UploadManager;->setStatus(Landroid/content/Context;Lco/vine/android/api/VineUpload;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    iget-object v1, v1, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21e

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsRetry:Z

    invoke-static {v2, v3, v5}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Lco/vine/android/api/VineUpload;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/service/VineUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_21e
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_222
    .catchall {:try_start_1d7 .. :try_end_222} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_222} :catch_1c7

    move-result-object v1

    :try_start_223
    monitor-exit v25
    :try_end_224
    .catchall {:try_start_223 .. :try_end_224} :catchall_74

    goto/16 :goto_2e

    :cond_226
    :try_start_226
    const-string v1, "Current status: {}"

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    iget v2, v2, Lco/vine/android/api/VineUpload;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_239
    .catchall {:try_start_226 .. :try_end_239} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_239} :catch_1c7

    move-result-object v1

    :try_start_23a
    monitor-exit v25
    :try_end_23b
    .catchall {:try_start_23a .. :try_end_23b} :catchall_74

    goto/16 :goto_2e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    instance-of v3, p1, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    check-cast v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_1c
    move v1, v2

    goto :goto_4

    :cond_1e
    iget-object v3, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    if-nez v3, :cond_1c

    :cond_22
    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_30
    move v1, v2

    goto :goto_4

    :cond_32
    iget-object v3, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_30
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    return v0

    :cond_1a
    move v0, v1

    goto :goto_b
.end method

.method protected onCancelled()V
    .registers 4

    const-string v0, "Task cancelled. {}, {}."

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsDiscarded:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->discardUpload(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lco/vine/android/service/VineUploadService;->access$1400(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    :cond_14
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onComplete()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsDiscarded:Z

    if-nez v1, :cond_27

    if-eqz v0, :cond_28

    iput v4, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mExecutionStatus:I

    const-string v1, "aUpload"

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    iget-object v1, v1, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x3

    iput v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mExecutionStatus:I

    :cond_24
    :goto_24
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onComplete()V

    :cond_27
    return-void

    :cond_28
    const/4 v1, 0x1

    iput v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mExecutionStatus:I

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-virtual {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/service/VineUploadService;->getNotifyFailedIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/service/VineUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lco/vine/android/util/UploadManager;->setStatus(Landroid/content/Context;Lco/vine/android/api/VineUpload;ILjava/lang/String;)V

    const-string v1, "aUpload"

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    iget-boolean v1, v1, Lco/vine/android/api/VineUpload;->isPrivate:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->this$0:Lco/vine/android/service/VineUploadService;

    iget-object v2, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    iget-object v2, v2, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    #calls: Lco/vine/android/service/VineUploadService;->markPreMergedMessageAsUploadFailed(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lco/vine/android/service/VineUploadService;->access$1300(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    goto :goto_24
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setIsDiscarded(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mIsDiscarded:Z

    return-void
.end method

.method public updateLastProcess(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    iput p1, v0, Lco/vine/android/service/UploadProgressListener;->lastProgress:I

    :cond_8
    return-void
.end method

.method public updateProgress(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mListener:Lco/vine/android/service/UploadProgressListener;

    invoke-virtual {v0, p1}, Lco/vine/android/service/UploadProgressListener;->updateTranscodeProgress(I)V

    :cond_9
    return-void
.end method
