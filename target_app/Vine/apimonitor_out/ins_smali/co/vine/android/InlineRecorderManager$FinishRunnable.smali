.class  Lco/vine/android/InlineRecorderManager$FinishRunnable;
.super Ljava/lang/Object;
.source "InlineRecorderManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/InlineRecorderManager;
.method private constructor <init>(Lco/vine/android/InlineRecorderManager;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/InlineRecorderManager;Lco/vine/android/InlineRecorderManager$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/InlineRecorderManager$FinishRunnable;-><init>(Lco/vine/android/InlineRecorderManager;)V
return-void
.end method
.method public run()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mRecordingButtonContainer:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$400(Lco/vine/android/InlineRecorderManager;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mFragment:Lco/vine/android/ConversationFragment;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$500(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/ConversationFragment;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/ConversationFragment;->prepareUpload()V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$600(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/InlineVineRecorder;
move-result-object v0
const-string v1, "inline finish."
invoke-virtual {v0, v1}, Lco/vine/android/recorder/InlineVineRecorder;->deleteCurrentDraftFolder(Ljava/lang/String;)Z
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mRecorder:Lco/vine/android/recorder/InlineVineRecorder;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$600(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/InlineVineRecorder;
move-result-object v0
const-string v1, "Inline record"
iget-object v2, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#calls: Lco/vine/android/InlineRecorderManager;->getNewMessageRecordingFile()Lco/vine/android/recorder/RecordingFile;
invoke-static {v2}, Lco/vine/android/InlineRecorderManager;->access$700(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/RecordingFile;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/InlineVineRecorder;->swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$800(Lco/vine/android/InlineRecorderManager;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mTextToggle:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$800(Lco/vine/android/InlineRecorderManager;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v0}, Lco/vine/android/InlineRecorderManager;->access$300(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/ProgressView;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/ProgressView;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v0
new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;
iget-object v2, p0, Lco/vine/android/InlineRecorderManager$FinishRunnable;->this$0:Lco/vine/android/InlineRecorderManager;
#getter for: Lco/vine/android/InlineRecorderManager;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v2}, Lco/vine/android/InlineRecorderManager;->access$300(Lco/vine/android/InlineRecorderManager;)Lco/vine/android/recorder/ProgressView;
move-result-object v2
invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
return-void
.end method