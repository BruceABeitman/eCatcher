.class public abstract Lco/vine/android/recorder/BaseFinishProcessTask;
.super Landroid/os/AsyncTask;
.source "BaseFinishProcessTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public isRunning:Z

.field protected mCurrentMessage:I

.field protected mWaitStartTime:J

.field public final onComplete:Ljava/lang/Runnable;

.field public final releasePreview:Z

.field public final saveSession:Z

.field protected final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
    .registers 5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->tag:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->onComplete:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->releasePreview:Z

    iput-boolean p4, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->saveSession:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/recorder/BaseFinishProcessTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 7

    const-string v0, "Waited for {} ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->mWaitStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->isRunning:Z

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    const/4 v2, 0x1

    iput v2, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->mCurrentMessage:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->mWaitStartTime:J

    iput-boolean v2, p0, Lco/vine/android/recorder/BaseFinishProcessTask;->isRunning:Z

    return-void
.end method

.method public publish(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/BaseFinishProcessTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
