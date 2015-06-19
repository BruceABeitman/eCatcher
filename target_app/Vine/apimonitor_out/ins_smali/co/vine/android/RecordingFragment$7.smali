.class  Lco/vine/android/RecordingFragment$7;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "RecordingFragment.java"
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment$7;->this$0:Lco/vine/android/RecordingFragment;
invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lco/vine/android/RecordingFragment$7;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mGrid:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$1000(Lco/vine/android/RecordingFragment;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$7;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mGridButton:Landroid/widget/ToggleButton;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$600(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$7;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;
move-result-object v0
if-eqz v0, :cond_26
iget-object v0, p0, Lco/vine/android/RecordingFragment$7;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$800(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;
move-result-object v0
invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineRecorder;->setGridOn(Z)V
:cond_26
return-void
.end method