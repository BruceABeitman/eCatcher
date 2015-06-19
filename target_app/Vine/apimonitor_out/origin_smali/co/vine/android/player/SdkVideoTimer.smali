.class public Lco/vine/android/player/SdkVideoTimer;
.super Ljava/lang/Object;
.source "SdkVideoTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;,
        Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;
    }
.end annotation


# static fields
.field public static final INTERVAL:I = 0x32

.field public static final TAIL_CUT:I = 0xfa


# instance fields
.field private final mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    const-string v1, "VideoTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoTimer;->mTimer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/player/SdkVideoTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lco/vine/android/player/SdkVideoTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public start(Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;)V
    .registers 8

    iget-object v0, p0, Lco/vine/android/player/SdkVideoTimer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;

    invoke-direct {v1, p1}, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;-><init>(Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;)V

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
