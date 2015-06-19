.class public Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field private static final SLEEP_MILLIS:I = 0x28
.field public lastFirstItem:I
.field public runThread:Z
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method public constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->lastFirstItem:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->runThread:Z
return-void
.end method
.method public run()V
.registers 12
:goto_0
iget-boolean v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->runThread:Z
if-eqz v6, :cond_5b
:try_start_4
iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
invoke-static {v6}, Lco/vine/android/recorder/VineRecorder;->access$4400(Lco/vine/android/recorder/VineRecorder;)I
move-result v6
const/4 v7, -0x1
if-ne v6, v7, :cond_54
iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-static {v6}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/SegmentEditorAdapter;
move-result-object v6
if-eqz v6, :cond_54
iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-static {v6}, Lco/vine/android/recorder/VineRecorder;->access$1900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/player/SdkVideoView;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/player/SdkVideoView;->isPlaying()Z
move-result v6
if-eqz v6, :cond_54
iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-static {v6}, Lco/vine/android/recorder/VineRecorder;->access$1900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/player/SdkVideoView;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I
move-result v6
add-int/lit8 v3, v6, 0x14
if-lez v3, :cond_54
iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-static {v6}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/SegmentEditorAdapter;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/recorder/SegmentEditorAdapter;->getData()Ljava/util/ArrayList;
move-result-object v4
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_54
add-int/lit8 v2, v5, -0x1
:goto_41
if-ltz v2, :cond_54
int-to-long v7, v3
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/recorder/RecordSegment;
iget-wide v9, v6, Lco/vine/android/recorder/RecordSegment;->startTimestamp:J
cmp-long v6, v7, v9
if-ltz v6, :cond_6d
iget v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->lastFirstItem:I
if-ne v6, v2, :cond_5c
:cond_54
:goto_54
const-wide/16 v6, 0x28
invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
goto :goto_0
:catch_5a
move-exception v1
:cond_5b
return-void
:cond_5c
iput v2, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->lastFirstItem:I
iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, v6, Lco/vine/android/recorder/VineRecorder;->mActivity:Landroid/app/Activity;
if-eqz v0, :cond_54
new-instance v6, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector$1;
invoke-direct {v6, p0}, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector$1;-><init>(Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;)V
invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:try_end_6c
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_6c} :catch_5a
goto :goto_54
:cond_6d
add-int/lit8 v2, v2, -0x1
goto :goto_41
.end method