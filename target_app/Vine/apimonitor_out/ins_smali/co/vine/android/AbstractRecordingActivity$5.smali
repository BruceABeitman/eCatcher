.class  Lco/vine/android/AbstractRecordingActivity$5;
.super Lco/vine/android/animation/SimpleAnimatorListener;
.source "AbstractRecordingActivity.java"
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$5;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimatorListener;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/animation/Animator;)V
.registers 4
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$5;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$5;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
return-void
.end method