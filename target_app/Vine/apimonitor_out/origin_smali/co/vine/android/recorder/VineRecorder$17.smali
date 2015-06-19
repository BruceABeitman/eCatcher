.class Lco/vine/android/recorder/VineRecorder$17;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-wide v0, v0, Lco/vine/android/recorder/VineRecorder;->mCurrentDuration:J

    long-to-double v0, v0

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v2, v2, Lco/vine/android/recorder/VineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v2

    iget v2, v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    int-to-double v2, v2

    const-wide v4, 0x3fee666666666666L

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3d

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->doOneFrame()V

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$17;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mTimeLapseDelay:D
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    return-void
.end method
