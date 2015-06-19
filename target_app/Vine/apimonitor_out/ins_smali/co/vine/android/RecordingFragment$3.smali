.class  Lco/vine/android/RecordingFragment$3;
.super Ljava/lang/Object;
.source "RecordingFragment.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment$3;->this$0:Lco/vine/android/RecordingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lco/vine/android/RecordingFragment$3;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$200(Lco/vine/android/RecordingFragment;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method