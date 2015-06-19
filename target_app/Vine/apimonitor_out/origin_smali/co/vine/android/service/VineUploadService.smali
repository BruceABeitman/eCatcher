.class public Lco/vine/android/service/VineUploadService;
.super Landroid/app/Service;
.source "VineUploadService.java"

# interfaces
.implements Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/service/VineUploadService$SessionChangedReceiver;,
        Lco/vine/android/service/VineUploadService$ServiceAsyncTask;,
        Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;,
        Lco/vine/android/service/VineUploadService$IPCProgressListener;,
        Lco/vine/android/service/VineUploadService$NotificationProgressListener;,
        Lco/vine/android/service/VineUploadService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_NOTIFICATIONS:Ljava/lang/String; = "clear_notifications"

.field public static final ACTION_DISCARD:Ljava/lang/String; = "discard"

.field public static final ACTION_DISCARD_ALL:Ljava/lang/String; = "discard_all"

.field public static final ACTION_DRAFT_UPGRADE_COUNT:Ljava/lang/String; = "action_get_draft_count"

.field public static final ACTION_NOTIFY_FAILED:Ljava/lang/String; = "cNotify"

.field public static final ACTION_POST:Ljava/lang/String; = "bPost"

.field public static final ACTION_PREMERGE_AND_POST:Ljava/lang/String; = "bMergeAndPost"

.field public static final ACTION_SHOW_NOTIFICATIONS:Ljava/lang/String; = "show_notifications"

.field public static final ACTION_UPGRADE_DRAFTS:Ljava/lang/String; = "aUpgradeDrafts"

.field public static final ACTION_UPLOAD:Ljava/lang/String; = "aUpload"

.field public static final ACTION_UPLOAD_RESULT:Ljava/lang/String; = "co.vine.android.UPLOAD_RESULT"

.field public static final AG_CHANNEL_ID:Ljava/lang/String; = "channelId"

.field public static final AG_CONVERSATION_ROW_ID:Ljava/lang/String; = "conversation_row_id"

.field public static final AG_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final AG_ENTITIES:Ljava/lang/String; = "entities"

.field public static final AG_HASH:Ljava/lang/String; = "hash"

.field public static final AG_IS_PRIVATE:Ljava/lang/String; = "is_private"

.field public static final AG_MAX_LOOPS:Ljava/lang/String; = "maxLoops"

.field public static final AG_MESSAGE:Ljava/lang/String; = "message"

.field public static final AG_MESSAGE_ROW_ID:Ljava/lang/String; = "message_row_id"

.field public static final AG_PATH:Ljava/lang/String; = "path"

.field public static final AG_POST_ID:Ljava/lang/String; = "postId"

.field public static final AG_POST_TO_FACEBOOK:Ljava/lang/String; = "postToFacebook"

.field public static final AG_POST_TO_TWITTER:Ljava/lang/String; = "postToTwitter"

.field public static final AG_RECIPIENTS:Ljava/lang/String; = "recipients"

.field public static final AG_REFERENCE:Ljava/lang/String; = "reference"

.field public static final AG_SHOW_NOTIFICATIONS:Ljava/lang/String; = "show_notifications"

.field public static final AG_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final AG_THUMB_URL:Ljava/lang/String; = "thumbUrl"

.field public static final AG_TIMESTAMP:Ljava/lang/String; = "created"

.field public static final AG_UPLOAD:Ljava/lang/String; = "upload"

.field public static final AG_UPLOAD_RESULT:Ljava/lang/String; = "upload_status"

.field public static final AG_VIDEO_URL:Ljava/lang/String; = "videoUrl"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "is_active"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "success"

.field public static final EXTRA_TRANSCODE_PROGRESS:Ljava/lang/String; = "transcode_progress"

.field public static final EXTRA_UPLOAD_PROGRESS:Ljava/lang/String; = "upload_progress"

.field private static final MAX_BITMAP_SIZE:I = 0xa

.field public static final MESSAGE_COUNT_UPDATE:I = 0x8

.field public static final MESSAGE_POST_FINISHED:I = 0x7

.field public static final MESSAGE_RESULT_RECEIVER_WAS_SET:I = 0x3

.field public static final MESSAGE_SET_RESULT_RECEIVER:I = 0x1

.field public static final MESSAGE_TRANSCODE_PROGRESS_CHANGED:I = 0x5

.field public static final MESSAGE_TRANSCODE_STARTED:I = 0x4

.field public static final MESSAGE_UNSET_DRAFT_RECEIVER:I = 0x9

.field public static final MESSAGE_UNSET_RESULT_RECEIVER:I = 0x2

.field public static final MESSAGE_UPLOAD_PROGRESS_CHANGED:I = 0x6

.field private static final NOTIFICATION_FAILED_ID:I = 0x0

.field private static final NOTIFICATION_PROGRESS_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "upload_notification"

.field public static final RESULT_NEED_POST_INFO:I = 0x3

.field public static final RESULT_STATUS_FAILED:I = 0x1

.field public static final RESULT_STATUS_SUCCEEDED:I = 0x2

.field public static final RESULT_STATUS_UPLOADING:I = 0x0

.field private static final SMALL_ICON:I = 0x7f0201ff

.field private static final TAG:Ljava/lang/String; = "VineUploadService"

.field private static mDraftResultReceiver:Landroid/os/Messenger;

.field private static sShowProgress:Z

.field private static sUploadResultReceiver:Landroid/os/Messenger;


# instance fields
.field private mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

.field private mDefaultNotificationIcon:Landroid/graphics/Bitmap;

.field private mIsBinded:Z

.field private final mLock:[I

.field private mMessenger:Landroid/os/Messenger;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationPanelSize:I

.field private mPendingTasks:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lco/vine/android/service/VineUploadService$ServiceAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVMTasks:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lco/vine/android/service/VineUploadService$ServiceAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionChangedReceiver:Lco/vine/android/service/VineUploadService$SessionChangedReceiver;

.field private mStartIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpgradeDraftsTask:Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;

.field private mUploadManager:Lco/vine/android/util/UploadManager;

.field private mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/service/VineUploadService;->mNotificationPanelSize:I

    new-instance v0, Lco/vine/android/service/VineServiceConnection;

    invoke-direct {v0, p0, p0}, Lco/vine/android/service/VineServiceConnection;-><init>(Landroid/content/Context;Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;)V

    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;

    return-void
.end method

.method static synthetic access$1002(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;)Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/VineUploadService;->mUpgradeDraftsTask:Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;

    return-object p1
.end method

.method static synthetic access$102(Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 1

    sput-object p0, Lco/vine/android/service/VineUploadService;->mDraftResultReceiver:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$1100(Lco/vine/android/service/VineUploadService;)Lco/vine/android/service/VineServiceConnection;
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;

    return-object v0
.end method

.method static synthetic access$1200(Lco/vine/android/service/VineUploadService;)Lco/vine/android/util/UploadManager;
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    return-object v0
.end method

.method static synthetic access$1300(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->markPreMergedMessageAsUploadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->discardUpload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lco/vine/android/service/VineUploadService;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    return-void
.end method

.method static synthetic access$200(Lco/vine/android/service/VineUploadService;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->sendDraftCountToReceiver()V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Messenger;
    .registers 1

    sget-object v0, Lco/vine/android/service/VineUploadService;->sUploadResultReceiver:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 1

    sput-object p0, Lco/vine/android/service/VineUploadService;->sUploadResultReceiver:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$400(Lco/vine/android/service/VineUploadService;)Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    return-object v0
.end method

.method static synthetic access$402(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lco/vine/android/service/VineUploadService;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->stopIfNoTasksLeft()V

    return-void
.end method

.method static synthetic access$600(Lco/vine/android/service/VineUploadService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->clearNotification(I)V

    return-void
.end method

.method static synthetic access$700(Lco/vine/android/service/VineUploadService;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->cancelFailedNofitication()V

    return-void
.end method

.method static synthetic access$800(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->setScaledNotificationIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lco/vine/android/service/VineUploadService;Landroid/support/v4/app/NotificationCompat$Builder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lco/vine/android/service/VineUploadService;->showNotification(Landroid/support/v4/app/NotificationCompat$Builder;I)V

    return-void
.end method

.method private declared-synchronized cancelFailedNofitication()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Lco/vine/android/util/UploadManager;->uploadListIsEmpty(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/service/VineUploadService;->clearNotification(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized clearNotification(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "upload_notification"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private discardTask(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x1

    const-string v4, "Discard task for path={}"

    invoke-static {v4, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v0, :cond_1d

    iget-object v4, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v0, v5}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->setIsDiscarded(Z)V

    invoke-virtual {v0, v5}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->cancel(Z)Z

    const-string v4, "In-progress task has been cancelled, path={}"

    invoke-static {v4, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v2, :cond_28

    iget-object v4, v2, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_42
    iget-object v4, p0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v2, :cond_48

    iget-object v4, v2, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_62
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_77

    const-string v4, "Queued task(s) will be cancelled."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_77
    invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService;->discardUpload(Ljava/lang/String;)V

    return-void
.end method

.method private discardUpload(Ljava/lang/String;)V
    .registers 6

    const-string v0, "Discard video: {}"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Discard encoded video: {}"

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lco/vine/android/util/UploadManager;->getVersionFromPath(Ljava/lang/String;)Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v3

    iget-object v3, v3, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Discard thumbnail: {}"

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lco/vine/android/util/UploadManager;->deleteUploadRecord(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->cancelFailedNofitication()V

    return-void
.end method

.method private executeNext()V
    .registers 8

    const-string v3, "Pending tasks: {}"

    iget-object v4, p0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "Pending vm tasks: {}"

    iget-object v4, p0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    if-eqz v3, :cond_18

    const-string v3, "mCurrentTask is not null, will not execute next"

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    iget-object v4, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    monitor-enter v4

    :try_start_1b
    iget-object v3, p0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    :goto_25
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_57

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    invoke-direct {p0, v0}, Lco/vine/android/service/VineUploadService;->isRunning(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Z

    move-result v3

    if-nez v3, :cond_4a

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v3, "Started executing task: action={}, path={}"

    iget-object v5, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    iget-object v6, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->path:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    iput-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :goto_4f
    monitor-exit v4

    goto :goto_17

    :catchall_51
    move-exception v3

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_1b .. :try_end_53} :catchall_51

    throw v3

    :cond_54
    :try_start_54
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    goto :goto_25

    :cond_57
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lco/vine/android/service/VineUploadService$1;

    invoke-direct {v5, p0}, Lco/vine/android/service/VineUploadService$1;-><init>(Lco/vine/android/service/VineUploadService;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_51

    goto :goto_4f
.end method

.method public static getClearNotificationsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clear_notifications"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getDiscardAllIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "discard_all"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getDiscardIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "discard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getDraftUpgradeCount()I
    .registers 3

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mUpgradeDraftsTask:Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;

    if-eqz v0, :cond_7

    iget v1, v0, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->mCurrentCount:I

    :goto_6
    return v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static getNotifyFailedIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 14

    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v11, "status=? AND is_private=?"

    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const-string v0, "0"

    aput-object v0, v4, v12

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v8

    sget-object v0, Lco/vine/android/provider/VineUploads$Uploads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lco/vine/android/provider/VineUploadsDatabaseSQL$UploadsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "status=? AND is_private=?"

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_41

    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_3e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_41
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lco/vine/android/service/VineUploadService;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "cNotify"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "path"

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v7
.end method

.method public static getPostIntent(Landroid/content/Context;Lco/vine/android/api/VineUpload;Z)Landroid/content/Intent;
    .registers 21

    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;

    invoke-static {v2}, Lco/vine/android/api/VineUpload$PostInfo;->fromJsonString(Ljava/lang/String;)Lco/vine/android/api/VineUpload$PostInfo;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v3, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-boolean v5, v0, Lco/vine/android/api/VineUpload$PostInfo;->postToTwitter:Z

    move-object/from16 v0, v16

    iget-boolean v6, v0, Lco/vine/android/api/VineUpload$PostInfo;->postToFacebook:Z

    move-object/from16 v0, v16

    iget-wide v7, v0, Lco/vine/android/api/VineUpload$PostInfo;->channelId:J

    move-object/from16 v0, v16

    iget-object v10, v0, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v11, v0, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v12, v0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/api/VineUpload;->conversationRowId:J

    move-object/from16 v0, v16

    iget v15, v0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I

    move-object/from16 v2, p0

    move/from16 v9, p2

    invoke-static/range {v2 .. v15}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZJZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v17

    const-string v2, "upload"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_4b
    return-object v17

    :cond_4c
    const/16 v17, 0x0

    goto :goto_4b
.end method

.method public static getPostIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZJZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JI)Landroid/content/Intent;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZJZ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lco/vine/android/service/VineUploadService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "bPost"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "is_retry"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "path"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "description"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "postToTwitter"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "postToFacebook"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "channelId"

    invoke-virtual {v2, v3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "entities"

    invoke-virtual {v2, v3, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "recipients"

    invoke-virtual {v2, v3, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "message"

    move-object/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "conversation_row_id"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "maxLoops"

    move/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v2
.end method

.method public static getShowProgressIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "show_notifications"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getUpgradeDraftsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "aUpgradeDrafts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getUploadIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)Landroid/content/Intent;
    .registers 11

    const/4 v1, 0x0

    sput-boolean v1, Lco/vine/android/service/VineUploadService;->sShowProgress:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/VineUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "aUpload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hash"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reference"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_private"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "show_notifications"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public static getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZJJ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lco/vine/android/service/VineUploadService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_6d

    const-string v4, "bPost"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    new-instance v3, Lco/vine/android/api/VineUpload;

    invoke-direct {v3}, Lco/vine/android/api/VineUpload;-><init>()V

    iput-wide p3, v3, Lco/vine/android/api/VineUpload;->mergedMessageId:J

    const/4 v4, 0x1

    iput-boolean v4, v3, Lco/vine/android/api/VineUpload;->isPrivate:Z

    const/4 v4, 0x1

    iput v4, v3, Lco/vine/android/api/VineUpload;->status:I

    iput-wide p5, v3, Lco/vine/android/api/VineUpload;->conversationRowId:J

    const-string v4, "upload"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_28
    :goto_28
    const-string v4, "is_private"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_retry"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "path"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "recipients"

    invoke-virtual {v2, v4, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "message"

    invoke-virtual {v2, v4, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "postId"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "videoUrl"

    move-object/from16 v0, p11

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "thumbUrl"

    move-object/from16 v0, p12

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "conversation_row_id"

    invoke-virtual {v2, v4, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "maxLoops"

    move/from16 v0, p13

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v2

    :cond_6d
    const-string v4, "bMergeAndPost"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_28
.end method

.method public static getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJLjava/util/ArrayList;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-wide/16 v3, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v13, p7

    invoke-static/range {v0 .. v13}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getVMSharePostIntent(Landroid/content/Context;ZJLjava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v0 .. v13}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private isRunning(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Z
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private markPreMergedMessageAsUploadFailed(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lco/vine/android/client/VineAccountHelper;->getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;

    move-result-object v1

    invoke-static {v0, v1}, Lco/vine/android/client/AppController;->injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;

    const-string v1, "upload_path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lco/vine/android/service/VineServiceConnection;->queueAndExecute(ILandroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method private preMergeMessage(Lco/vine/android/api/VineUpload;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lco/vine/android/client/VineAccountHelper;->getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;

    move-result-object v1

    invoke-static {v0, v1}, Lco/vine/android/client/AppController;->injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;

    const-string v1, "upload"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2, v0}, Lco/vine/android/service/VineServiceConnection;->queueAndExecute(ILandroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method private processCommand(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lco/vine/android/service/UploadProgressListener;)V
    .registers 26

    const-string v4, "Process command for action={}, path={}"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v4, v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lco/vine/android/service/UploadProgressListener;)V

    const-string v4, "aUpload"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    const-string v4, "hash"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "is_private"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v4, "reference"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "conversation_row_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v12}, Lco/vine/android/util/UploadManager;->addOrUpdateUpload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    if-eqz v8, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v0

    :goto_6a
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, "Upload task added for path={}"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_79
    :goto_79
    invoke-direct/range {p0 .. p0}, Lco/vine/android/service/VineUploadService;->executeNext()V

    :goto_7c
    return-void

    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v0

    goto :goto_6a

    :cond_84
    const-string v4, "Upload task is already in queue for path={}"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_79

    :cond_8c
    const-string v4, "bMergeAndPost"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_df

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lco/vine/android/service/VineUploadService;->getPostInfoFromIntent(Landroid/content/Intent;)Lco/vine/android/api/VineUpload$PostInfo;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b9

    invoke-static/range {p0 .. p1}, Lco/vine/android/util/UploadManager;->getUpload(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/api/VineUpload;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lco/vine/android/util/UploadManager;->setPostInfo(Landroid/content/Context;Lco/vine/android/api/VineUpload;Lco/vine/android/api/VineUpload$PostInfo;)V

    :goto_b1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lco/vine/android/service/VineUploadService;->preMergeMessage(Lco/vine/android/api/VineUpload;)V

    goto :goto_79

    :cond_b9
    new-instance v20, Lco/vine/android/api/VineUpload;

    invoke-direct/range {v20 .. v20}, Lco/vine/android/api/VineUpload;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/api/VineUpload$PostInfo;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lco/vine/android/api/VineUpload;->isPrivate:Z

    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lco/vine/android/api/VineUpload;->status:I

    const-string v4, "conversation_row_id"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lco/vine/android/api/VineUpload;->conversationRowId:J

    goto :goto_b1

    :cond_df
    const-string v4, "bPost"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e5

    invoke-static/range {p0 .. p1}, Lco/vine/android/util/UploadManager;->getUpload(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/api/VineUpload;

    move-result-object v20

    if-nez v20, :cond_f9

    const-string v4, "upload"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lco/vine/android/api/VineUpload;

    :cond_f9
    if-nez v20, :cond_104

    const-string v4, "Error posting. No upload via path nor via argument: {}."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7c

    :cond_104
    move-object/from16 v0, v20

    iget-object v4, v0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11f

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lco/vine/android/service/VineUploadService;->getPostInfoFromIntent(Landroid/content/Intent;)Lco/vine/android/api/VineUpload$PostInfo;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lco/vine/android/util/UploadManager;->setPostInfo(Landroid/content/Context;Lco/vine/android/api/VineUpload;Lco/vine/android/api/VineUpload$PostInfo;)V

    :cond_11f
    move-object/from16 v0, v20

    iget v0, v0, Lco/vine/android/api/VineUpload;->status:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_214

    const-string v4, "Invalid state={} for path={}"

    move-object/from16 v0, v20

    iget v5, v0, Lco/vine/android/api/VineUpload;->status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_79

    :pswitch_139
    new-instance v11, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    const-string v14, "aUpload"

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v11 .. v16}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lco/vine/android/service/UploadProgressListener;)V

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lco/vine/android/api/VineUpload;->isPrivate:Z

    if-eqz v4, :cond_182

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v0

    :goto_154
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    invoke-virtual {v11, v4}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16f

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16f

    const-string v4, "Upload task added for path={}"

    iget-object v5, v11, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16f
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, "Post task added for path={}"

    iget-object v5, v3, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_79

    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v0

    goto :goto_154

    :pswitch_189
    move-object/from16 v0, v20

    iget-object v4, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b1

    move-object/from16 v0, v20

    iget-object v4, v0, Lco/vine/android/api/VineUpload;->videoUrl:Ljava/lang/String;

    if-nez v4, :cond_1b1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lco/vine/android/util/UploadManager;->setStatus(Landroid/content/Context;Lco/vine/android/api/VineUpload;I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Lco/vine/android/api/VineUpload;Z)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lco/vine/android/service/VineUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_7c

    :cond_1b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    invoke-virtual {v3, v4}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lco/vine/android/api/VineUpload;->isPrivate:Z

    if-eqz v4, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v0

    :goto_1c7
    move-object/from16 v0, v20

    iput-object v0, v3, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->mUpload:Lco/vine/android/api/VineUpload;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, "Post task added for path={}"

    iget-object v5, v3, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_79

    :cond_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    move-object/from16 v19, v0

    goto :goto_1c7

    :cond_1e5
    const-string v4, "cNotify"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_204

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    const/4 v4, 0x1

    sput-boolean v4, Lco/vine/android/service/VineUploadService;->sShowProgress:Z

    const-string v4, "Notify failed upload for path={}."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p1}, Lco/vine/android/service/VineUploadService;->showFailedNotification(Ljava/lang/String;)V

    goto/16 :goto_79

    :cond_204
    const-string v4, "discard"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-direct/range {p0 .. p1}, Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V

    goto/16 :goto_7c

    nop

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_139
        :pswitch_189
        :pswitch_189
    .end packed-switch
.end method

.method private sendDraftCountToReceiver()V
    .registers 6

    const/4 v4, 0x0

    sget-object v1, Lco/vine/android/service/VineUploadService;->mDraftResultReceiver:Landroid/os/Messenger;

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->getDraftUpgradeCount()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_11} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_16

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    sput-object v4, Lco/vine/android/service/VineUploadService;->mDraftResultReceiver:Landroid/os/Messenger;

    goto :goto_11

    :catch_16
    move-exception v0

    const-string v2, "Failed to reply."

    invoke-static {v2, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method private setScaledNotificationIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_47

    iget v2, p0, Lco/vine/android/service/VineUploadService;->mNotificationPanelSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    invoke-virtual {p0}, Lco/vine/android/service/VineUploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lco/vine/android/service/VineUploadService;->mNotificationPanelSize:I

    :cond_22
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_48

    iget v2, p0, Lco/vine/android/service/VineUploadService;->mNotificationPanelSize:I

    iget v3, p0, Lco/vine/android/service/VineUploadService;->mNotificationPanelSize:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_42

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_42
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_47
    return-object v0

    :cond_48
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mDefaultNotificationIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_59

    invoke-virtual {p0}, Lco/vine/android/service/VineUploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020198

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/service/VineUploadService;->mDefaultNotificationIcon:Landroid/graphics/Bitmap;

    :cond_59
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mBitmaps:Ljava/util/HashMap;

    iget-object v3, p0, Lco/vine/android/service/VineUploadService;->mDefaultNotificationIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mDefaultNotificationIcon:Landroid/graphics/Bitmap;

    goto :goto_47
.end method

.method private showFailedNotification(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    invoke-static {p0, p1}, Lco/vine/android/util/UploadManager;->getUpload(Landroid/content/Context;Ljava/lang/String;)Lco/vine/android/api/VineUpload;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_7
    return-void

    :cond_8
    const-string v4, "Show failed notification for {}, upload expired? {}."

    invoke-virtual {v3}, Lco/vine/android/api/VineUpload;->isExpired()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0201ff

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, v3, Lco/vine/android/api/VineUpload;->thumbnailPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lco/vine/android/service/VineUploadService;->setScaledNotificationIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v4, "co.vine.android.UPLOAD_LIST"

    invoke-static {p0, v4}, Lco/vine/android/StartActivity;->getStartIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v4, 0x7f0e017b

    invoke-virtual {p0, v4}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v4, 0x7f0e0244

    invoke-virtual {p0, v4}, Lco/vine/android/service/VineUploadService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0, v1, v6}, Lco/vine/android/service/VineUploadService;->showNotification(Landroid/support/v4/app/NotificationCompat$Builder;I)V

    goto :goto_7
.end method

.method private declared-synchronized showNotification(Landroid/support/v4/app/NotificationCompat$Builder;I)V
    .registers 7

    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lco/vine/android/service/VineUploadService;->sShowProgress:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v1, :cond_10

    :try_start_5
    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "upload_notification"

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_23
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_10} :catch_12

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    :try_start_14
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "upload_notification"

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    goto :goto_10

    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private stopIfNoTasksLeft()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;

    invoke-direct {p0, v0}, Lco/vine/android/service/VineUploadService;->isRunning(Lco/vine/android/service/VineUploadService$ServiceAsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->stopService()V

    :cond_1b
    return-void
.end method

.method private stopService()V
    .registers 5

    iget-object v3, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lco/vine/android/service/VineUploadService;->stopSelf(I)V

    goto :goto_9

    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    :cond_20
    :try_start_20
    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    return-void
.end method


# virtual methods
.method public getPostInfoFromIntent(Landroid/content/Intent;)Lco/vine/android/api/VineUpload$PostInfo;
    .registers 23

    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "postToTwitter"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v3, "postToFacebook"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v3, "channelId"

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v3, "entities"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v3, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "postId"

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v3, "videoUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "thumbUrl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "maxLoops"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v3, "created"

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v3, "recipients"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    new-instance v3, Lco/vine/android/api/VineUpload$PostInfo;

    invoke-direct/range {v3 .. v18}, Lco/vine/android/api/VineUpload$PostInfo;-><init>(Ljava/lang/String;ZZJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;I)V

    return-object v3
.end method

.method public handleServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    sparse-switch p1, :sswitch_data_ba

    :cond_3
    :goto_3
    return-void

    :sswitch_4
    const-string v10, "upload"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineUpload;

    const/16 v10, 0xc8

    move/from16 v0, p2

    if-ne v0, v10, :cond_6c

    const-string v10, "Post successful."

    invoke-static {v10}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->cancelFailedNofitication()V

    iget-boolean v10, v8, Lco/vine/android/api/VineUpload;->isPrivate:Z

    if-nez v10, :cond_52

    invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v10, "profile_post_count"

    const-string v11, "profile_post_count"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_39
    :goto_39
    const-string v10, "should_delete_upload"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v10, v8, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    if-nez v6, :cond_3

    iget-object v10, v8, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-direct {p0, v10}, Lco/vine/android/service/VineUploadService;->discardUpload(Ljava/lang/String;)V

    goto :goto_3

    :cond_52
    const-string v10, "post_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "thumbnail_url"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_39

    if-eqz v7, :cond_39

    iget-object v10, v8, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-static {p0, v10, v9, v7}, Lco/vine/android/util/UploadManager;->prepopulateCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_6c
    invoke-static {p0}, Lco/vine/android/service/VineUploadService;->getNotifyFailedIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lco/vine/android/service/VineUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    const/4 v10, 0x2

    iget-object v11, v8, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;

    invoke-static {p0, v8, v10, v11}, Lco/vine/android/util/UploadManager;->setStatus(Landroid/content/Context;Lco/vine/android/api/VineUpload;ILjava/lang/String;)V

    goto :goto_3

    :sswitch_7c
    const-string v10, "upload"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineUpload;

    const-string v10, "premerged_message_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v8, Lco/vine/android/api/VineUpload;->mergedMessageId:J

    invoke-virtual {v8}, Lco/vine/android/api/VineUpload;->getPostInfo()Lco/vine/android/api/VineUpload$PostInfo;

    move-result-object v2

    const-string v10, "Pre merge message complete. Path {} Row {} {}"

    iget-object v11, v8, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2}, Lco/vine/android/api/VineUpload$PostInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, v8, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    if-eqz v10, :cond_af

    invoke-static {p0, v8, v2}, Lco/vine/android/util/UploadManager;->setPostInfo(Landroid/content/Context;Lco/vine/android/api/VineUpload;Lco/vine/android/api/VineUpload$PostInfo;)V

    iget-object v10, v8, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;

    invoke-static {p0, v10, v3, v4}, Lco/vine/android/util/UploadManager;->setUploadMessageRowId(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_af
    const/4 v10, 0x0

    invoke-static {p0, v8, v10}, Lco/vine/android/service/VineUploadService;->getPostIntent(Landroid/content/Context;Lco/vine/android/api/VineUpload;Z)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lco/vine/android/service/VineUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    nop

    :sswitch_data_ba
    .sparse-switch
        0x5d -> :sswitch_7c
        0x62 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mPendingTasks:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mPendingVMTasks:Ljava/util/LinkedHashSet;

    new-instance v1, Lco/vine/android/util/UploadManager;

    invoke-direct {v1, p0}, Lco/vine/android/util/UploadManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mUploadManager:Lco/vine/android/util/UploadManager;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lco/vine/android/service/VineUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Lco/vine/android/client/VineAccountHelper;->resetActiveSession()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "co.vine.android.session.logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "co.vine.android.session.login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lco/vine/android/service/VineUploadService$SessionChangedReceiver;

    invoke-direct {v1, p0}, Lco/vine/android/service/VineUploadService$SessionChangedReceiver;-><init>(Lco/vine/android/service/VineUploadService;)V

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mSessionChangedReceiver:Lco/vine/android/service/VineUploadService$SessionChangedReceiver;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mBitmaps:Ljava/util/HashMap;

    iget-object v1, p0, Lco/vine/android/service/VineUploadService;->mSessionChangedReceiver:Lco/vine/android/service/VineUploadService$SessionChangedReceiver;

    const-string v2, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v1, v0, v2, v3}, Lco/vine/android/service/VineUploadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lco/vine/android/service/VineUploadService$IncomingHandler;

    invoke-direct {v2, p0, v3}, Lco/vine/android/service/VineUploadService$IncomingHandler;-><init>(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$1;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lco/vine/android/service/VineUploadService;->mMessenger:Landroid/os/Messenger;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/service/VineService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lco/vine/android/service/VineUploadService;->mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lco/vine/android/service/VineUploadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/service/VineUploadService;->mIsBinded:Z

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-boolean v0, p0, Lco/vine/android/service/VineUploadService;->mIsBinded:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mVineServiceConnection:Lco/vine/android/service/VineServiceConnection;

    invoke-virtual {p0, v0}, Lco/vine/android/service/VineUploadService;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_c
    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mSessionChangedReceiver:Lco/vine/android/service/VineUploadService$SessionChangedReceiver;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lco/vine/android/service/VineUploadService;->mSessionChangedReceiver:Lco/vine/android/service/VineUploadService$SessionChangedReceiver;

    invoke-virtual {p0, v0}, Lco/vine/android/service/VineUploadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_15
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 15

    const/4 v7, 0x1

    const-string v8, "onStartCommand, intent={}"

    invoke-static {v8, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lco/vine/android/service/VineUploadService;->mLock:[I

    monitor-enter v8

    :try_start_9
    iget-object v9, p0, Lco/vine/android/service/VineUploadService;->mStartIds:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_17

    const/4 v7, 0x2

    monitor-exit v8

    :goto_16
    return v7

    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "path"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_2e

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "VineUploadService must be started with an explicit intent; set an action."

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_2b
    move-exception v7

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw v7

    :cond_2e
    :try_start_2e
    const-string v9, "aUpgradeDrafts"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    iget-object v9, p0, Lco/vine/android/service/VineUploadService;->mUpgradeDraftsTask:Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;

    if-nez v9, :cond_4b

    new-instance v9, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;

    invoke-direct {v9, p0}, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;-><init>(Lco/vine/android/service/VineUploadService;)V

    iput-object v9, p0, Lco/vine/android/service/VineUploadService;->mUpgradeDraftsTask:Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;

    iget-object v9, p0, Lco/vine/android/service/VineUploadService;->mUpgradeDraftsTask:Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lco/vine/android/service/VineUploadService$UpgradeDraftsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_49
    monitor-exit v8

    goto :goto_16

    :cond_4b
    const-string v9, "Draft upgrade is already in progress"

    invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    goto :goto_49

    :cond_51
    const-string v9, "discard_all"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    invoke-static {p0}, Lco/vine/android/util/UploadManager;->getAllPaths(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lco/vine/android/service/VineUploadService;->discardTask(Ljava/lang/String;)V

    goto :goto_65

    :cond_75
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->cancelFailedNofitication()V

    goto :goto_49

    :cond_79
    const-string v9, "show_notifications"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    const/4 v9, 0x1

    sput-boolean v9, Lco/vine/android/service/VineUploadService;->sShowProgress:Z

    goto :goto_49

    :cond_85
    const-string v9, "clear_notifications"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    const/4 v9, 0x0

    sput-boolean v9, Lco/vine/android/service/VineUploadService;->sShowProgress:Z

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lco/vine/android/service/VineUploadService;->clearNotification(I)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lco/vine/android/service/VineUploadService;->clearNotification(I)V

    goto :goto_49

    :cond_99
    const/4 v2, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ae

    const-string v9, "show_notifications"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b2

    new-instance v2, Lco/vine/android/service/VineUploadService$NotificationProgressListener;

    invoke-direct {v2, p0, v3}, Lco/vine/android/service/VineUploadService$NotificationProgressListener;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V

    :cond_ae
    :goto_ae
    invoke-direct {p0, v3, v0, p1, v2}, Lco/vine/android/service/VineUploadService;->processCommand(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lco/vine/android/service/UploadProgressListener;)V

    goto :goto_49

    :cond_b2
    new-instance v2, Lco/vine/android/service/VineUploadService$IPCProgressListener;

    invoke-direct {v2, p0, v3}, Lco/vine/android/service/VineUploadService$IPCProgressListener;-><init>(Lco/vine/android/service/VineUploadService;Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_2e .. :try_end_b7} :catchall_2b

    goto :goto_ae
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    const/4 v2, 0x0

    const-string v0, "aUpgradeDrafts"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sput-object v2, Lco/vine/android/service/VineUploadService;->mDraftResultReceiver:Landroid/os/Messenger;

    :goto_f
    invoke-direct {p0}, Lco/vine/android/service/VineUploadService;->stopIfNoTasksLeft()V

    const/4 v0, 0x0

    return v0

    :cond_14
    sput-object v2, Lco/vine/android/service/VineUploadService;->sUploadResultReceiver:Landroid/os/Messenger;

    goto :goto_f
.end method
