.class  Lco/vine/android/RecordingFragment$1;
.super Ljava/lang/Object;
.source "RecordingFragment.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment$1;->this$0:Lco/vine/android/RecordingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lco/vine/android/RecordingFragment$1;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$100(Lco/vine/android/RecordingFragment;)Landroid/widget/TextView;
move-result-object v0
const v1, 0x3eb33333
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$1;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$200(Lco/vine/android/RecordingFragment;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$1;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mNoDraftsOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$200(Lco/vine/android/RecordingFragment;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lco/vine/android/RecordingFragment$1;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mDraftOverlayIcon:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$000(Lco/vine/android/RecordingFragment;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method