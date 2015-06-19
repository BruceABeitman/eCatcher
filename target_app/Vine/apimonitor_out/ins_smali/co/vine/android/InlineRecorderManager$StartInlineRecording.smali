.class  Lco/vine/android/InlineRecorderManager$StartInlineRecording;
.super Ljava/lang/Object;
.source "InlineRecorderManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/InlineRecorderManager;
.method private constructor <init>(Lco/vine/android/InlineRecorderManager;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;->this$0:Lco/vine/android/InlineRecorderManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/InlineRecorderManager$StartInlineRecording;-><init>(Lco/vine/android/InlineRecorderManager;)V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;->this$0:Lco/vine/android/InlineRecorderManager;
const/4 v1, 0x1
#calls: Lco/vine/android/InlineRecorderManager;->toggleRecorder(Z)V
invoke-static {v0, v1}, Lco/vine/android/InlineRecorderManager;->access$200(Lco/vine/android/InlineRecorderManager;Z)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$300(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/ProgressView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProgressView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$300(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/ProgressView;
move-result-object v0
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProgressView;->setAlpha(F)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$StartInlineRecording;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$300(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/ProgressView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProgressView;->setProgressRatio(F)V
return-void
.end method