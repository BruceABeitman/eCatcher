.class Lco/vine/android/recorder/VineRecorder$5;
.super Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
.source "VineRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/VineRecorder;->getFinishProcessRunnable()Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
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

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$5;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;-><init>(Lco/vine/android/recorder/BasicVineRecorder;)V

    return-void
.end method


# virtual methods
.method public doNotDeleteSession(Z)Z
    .registers 3

    if-nez p1, :cond_a

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$5;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mInitiallyStartedWithEditMode:Z
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1000(Lco/vine/android/recorder/VineRecorder;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isCompleteSession(Z)Z
    .registers 3

    if-nez p1, :cond_a

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$5;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mInitiallyStartedWithEditMode:Z
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1000(Lco/vine/android/recorder/VineRecorder;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onPreCompleteSession(Z)V
    .registers 6

    if-eqz p1, :cond_10

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$5;->this$0:Lco/vine/android/recorder/VineRecorder;

    new-instance v1, Lco/vine/android/recorder/RecordSegment;

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$5;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-wide v2, v2, Lco/vine/android/recorder/VineRecorder;->mCurrentDuration:J

    invoke-direct {v1, v2, v3}, Lco/vine/android/recorder/RecordSegment;-><init>(J)V

    #setter for: Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$1102(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/RecordSegment;)Lco/vine/android/recorder/RecordSegment;

    :cond_10
    return-void
.end method
