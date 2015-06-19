.class  Lco/vine/android/RecipientPickerActivity$3;
.super Ljava/lang/Object;
.source "RecipientPickerActivity.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lco/vine/android/RecipientPickerActivity;
.method constructor <init>(Lco/vine/android/RecipientPickerActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecipientPickerActivity$3;->this$0:Lco/vine/android/RecipientPickerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity$3;->this$0:Lco/vine/android/RecipientPickerActivity;
#getter for: Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
invoke-static {v0}, Lco/vine/android/RecipientPickerActivity;->access$100(Lco/vine/android/RecipientPickerActivity;)Landroid/widget/TextView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/RecipientPickerActivity$3;->this$0:Lco/vine/android/RecipientPickerActivity;
#getter for: Lco/vine/android/RecipientPickerActivity;->mOnboardingOverlay:Landroid/widget/TextView;
invoke-static {v0}, Lco/vine/android/RecipientPickerActivity;->access$100(Lco/vine/android/RecipientPickerActivity;)Landroid/widget/TextView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method