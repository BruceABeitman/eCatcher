.class public Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;
.super Ljava/lang/Object;
.source "RecordingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/RecordingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRecordingFinishRunnable"
.end annotation


# instance fields
.field private mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/RecordingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/RecordingFragment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v3, p0, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/RecordingFragment;

    if-eqz v1, :cond_30

    #getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;

    move-result-object v3

    iget-object v0, v3, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->isValid()Z

    move-result v3

    if-eqz v3, :cond_30

    #getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;

    move-result-object v3

    iget-object v2, v3, Lco/vine/android/recorder/VineRecorder;->grabThumbnailsRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    #getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lco/vine/android/recorder/VineRecorder;->grabThumbnailsRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    const-string v3, "OnRecordingFinishRunnable"

    #getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
    invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;

    move-result-object v4

    iget-boolean v4, v4, Lco/vine/android/recorder/VineRecorder;->detectedInvalidSession:Z

    #calls: Lco/vine/android/RecordingFragment;->notifyActivity(Ljava/lang/String;ZLco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V
    invoke-static {v1, v3, v4, v2}, Lco/vine/android/RecordingFragment;->access$1800(Lco/vine/android/RecordingFragment;Ljava/lang/String;ZLco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;)V

    :cond_30
    return-void
.end method
