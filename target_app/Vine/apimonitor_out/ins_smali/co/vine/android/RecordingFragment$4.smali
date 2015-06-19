.class  Lco/vine/android/RecordingFragment$4;
.super Ljava/lang/Object;
.source "RecordingFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment$4;->this$0:Lco/vine/android/RecordingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 5
iget-object v0, p0, Lco/vine/android/RecordingFragment$4;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mFadeOut:Landroid/view/animation/Animation;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$500(Lco/vine/android/RecordingFragment;)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Lco/vine/android/RecordingFragment$4;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mFadeOutListener:Landroid/view/animation/Animation$AnimationListener;
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$400(Lco/vine/android/RecordingFragment;)Landroid/view/animation/Animation$AnimationListener;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$4;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$200(Lco/vine/android/RecordingFragment;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lco/vine/android/RecordingFragment$4;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mFadeOut:Landroid/view/animation/Animation;
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$500(Lco/vine/android/RecordingFragment;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$4;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$100(Lco/vine/android/RecordingFragment;)Landroid/widget/TextView;
move-result-object v0
const v1, 0x3eb33333
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V
const/4 v0, 0x1
return v0
.end method