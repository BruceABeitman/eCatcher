.class  Lco/vine/android/util/ConversationMenuHelper$4;
.super Ljava/lang/Object;
.source "ConversationMenuHelper.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lco/vine/android/util/ConversationMenuHelper;
.method constructor <init>(Lco/vine/android/util/ConversationMenuHelper;)V
.registers 2
iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper$4;->this$0:Lco/vine/android/util/ConversationMenuHelper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$4;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mOnboardingOverlay:Landroid/widget/TextView;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$500(Lco/vine/android/util/ConversationMenuHelper;)Landroid/widget/TextView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
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