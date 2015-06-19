.class  Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;
.super Ljava/lang/Object;
.source "ConversationMenuHelper.java"
.implements Ljava/lang/Runnable;
.field private mView:Landroid/view/View;
.field final synthetic this$0:Lco/vine/android/util/ConversationMenuHelper;
.method private constructor <init>(Lco/vine/android/util/ConversationMenuHelper;)V
.registers 2
iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->this$0:Lco/vine/android/util/ConversationMenuHelper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/util/ConversationMenuHelper;Lco/vine/android/util/ConversationMenuHelper$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;-><init>(Lco/vine/android/util/ConversationMenuHelper;)V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;
invoke-static {v1}, Lco/vine/android/util/ConversationMenuHelper;->access$300(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/BaseControllerActionBarActivity;
move-result-object v1
const v2, 0x7f04000f
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mMessageSentFadeListener:Landroid/view/animation/Animation$AnimationListener;
invoke-static {v1}, Lco/vine/android/util/ConversationMenuHelper;->access$400(Lco/vine/android/util/ConversationMenuHelper;)Landroid/view/animation/Animation$AnimationListener;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->mView:Landroid/view/View;
if-eqz v1, :cond_27
iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->mView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-nez v1, :cond_27
iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->mView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_27
return-void
.end method
.method public setView(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->mView:Landroid/view/View;
return-void
.end method