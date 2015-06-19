.class Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditModePreviewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mLastPlayingSegment:Lco/vine/android/recorder/RecordSegment;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1100(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordSegment;

    move-result-object v1

    iput-object v1, v0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$EditModePreviewClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->pausePreview(Z)V

    :cond_29
    return-void
.end method
