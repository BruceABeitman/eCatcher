.class public Lco/vine/android/recorder/RegularVineRecorder$ResumeCameraAsyncTask;
.super Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;
.source "RegularVineRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/RegularVineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResumeCameraAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/RegularVineRecorder;


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/RegularVineRecorder;Z)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/RegularVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;

    invoke-direct {p0, p1, p2}, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/recorder/RegularVineRecorder$ResumeCameraAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    invoke-super {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_10
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->onPreExecute()V

    iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$ResumeCameraAsyncTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mOpenCameraDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_10
    return-void
.end method
