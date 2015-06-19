.class Lco/vine/android/recorder/VineRecorder$3;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$3;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$3;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v0, v0, Lco/vine/android/recorder/VineRecorder;->mIsSwitchingCamera:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$3;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v0, v0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$3;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$3;->this$0:Lco/vine/android/recorder/VineRecorder;

    new-instance v1, Lco/vine/android/recorder/VineRecorder$3$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lco/vine/android/recorder/VineRecorder$3$1;-><init>(Lco/vine/android/recorder/VineRecorder$3;Z)V

    iput-object v1, v0, Lco/vine/android/recorder/VineRecorder;->mSwitchCameraTask:Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$3;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSwitchCameraTask:Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_28
    :goto_28
    return-void

    :cond_29
    new-instance v0, Lco/vine/android/VineLoggingException;

    const-string v1, "You can not switch camera after recording has started."

    invoke-direct {v0, v1}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    const-string v1, "Person trying to record and switch? not cool."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28
.end method
