.class Lco/vine/android/AbstractRecordingActivity$11;
.super Ljava/lang/Thread;
.source "AbstractRecordingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AbstractRecordingActivity;->toPreview(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;

.field final synthetic val$finalFile:Lco/vine/android/recorder/RecordingFile;

.field final synthetic val$grabThumbnailRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

.field final synthetic val$thumbNailPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iput-object p2, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$grabThumbnailRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    iput-object p3, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$finalFile:Lco/vine/android/recorder/RecordingFile;

    iput-object p4, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$thumbNailPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$grabThumbnailRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$grabThumbnailRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    invoke-virtual {v0}, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->run()V

    :cond_9
    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    invoke-virtual {v0}, Lco/vine/android/AbstractRecordingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3b

    :try_start_19
    iget-object v8, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    invoke-virtual {v0}, Lco/vine/android/AbstractRecordingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$finalFile:Lco/vine/android/recorder/RecordingFile;

    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$thumbNailPath:Ljava/lang/String;

    iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$11;->val$finalFile:Lco/vine/android/recorder/RecordingFile;

    iget-object v3, v3, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget-boolean v4, v4, Lco/vine/android/AbstractRecordingActivity;->mIsMessaging:Z

    iget-object v5, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget-wide v5, v5, Lco/vine/android/AbstractRecordingActivity;->mConversationRowId:J

    invoke-static/range {v0 .. v6}, Lco/vine/android/util/UploadManager;->addToUploadQueue(Landroid/content/Context;Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lco/vine/android/AbstractRecordingActivity;->mUploadFile:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3b} :catch_42

    :cond_3b
    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$11;->this$0:Lco/vine/android/AbstractRecordingActivity;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/AbstractRecordingActivity;->mAddToUploadThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->access$2602(Lco/vine/android/AbstractRecordingActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catch_42
    move-exception v7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
