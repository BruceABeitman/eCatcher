.class public Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;
.super Landroid/os/AsyncTask;
.source "BasicVineRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/BasicVineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResumeCameraAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSwitchCamera:Z

.field final synthetic this$0:Lco/vine/android/recorder/BasicVineRecorder;


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Z)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->mSwitchCamera:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v4}, Lco/vine/android/recorder/BasicVineRecorder;->canSwitchCamera()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v4, v4, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->isRecording()Z

    move-result v4

    if-nez v4, :cond_51

    iget-boolean v4, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->mSwitchCamera:Z

    if-nez v4, :cond_51

    :cond_18
    :try_start_18
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-boolean v4, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->mSwitchCamera:Z

    if-eqz v4, :cond_29

    iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v5, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-boolean v5, v5, Lco/vine/android/recorder/BasicVineRecorder;->mFrontFacing:Z

    if-nez v5, :cond_53

    :goto_27
    iput-boolean v2, v4, Lco/vine/android/recorder/BasicVineRecorder;->mFrontFacing:Z

    :cond_29
    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v2, v2, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-object v3, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-boolean v3, v3, Lco/vine/android/recorder/BasicVineRecorder;->mFrontFacing:Z

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(ZZ)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v2, v2, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget v3, v1, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    iput v3, v2, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentFrameRate:I

    :cond_48
    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    const-string v3, "Switch camera"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lco/vine/android/recorder/BasicVineRecorder;->start(Ljava/lang/String;ZZ)V

    :cond_51
    :goto_51
    const/4 v2, 0x0

    return-object v2

    :cond_53
    move v2, v3

    goto :goto_27

    :cond_55
    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/BasicVineRecorder;->showCameraFailedToast()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5a} :catch_5b

    goto :goto_51

    :catch_5b
    move-exception v0

    const-string v2, "Error on cancel camera switching."

    invoke-static {v2, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lco/vine/android/recorder/BasicVineRecorder;->mIsSwitchingCamera:Z

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/vine/android/recorder/BasicVineRecorder;->mIsSwitchingCamera:Z

    return-void
.end method
