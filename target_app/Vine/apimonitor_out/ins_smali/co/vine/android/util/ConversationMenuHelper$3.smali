.class  Lco/vine/android/util/ConversationMenuHelper$3;
.super Ljava/lang/Object;
.source "ConversationMenuHelper.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/util/ConversationMenuHelper;
.field final synthetic val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;
.method constructor <init>(Lco/vine/android/util/ConversationMenuHelper;Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;)V
.registers 3
iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper$3;->this$0:Lco/vine/android/util/ConversationMenuHelper;
iput-object p2, p0, Lco/vine/android/util/ConversationMenuHelper$3;->val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/util/ConversationMenuHelper$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$3;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$200(Lco/vine/android/util/ConversationMenuHelper;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$3;->val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$3;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$200(Lco/vine/android/util/ConversationMenuHelper;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper$3;->val$fadeOut:Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const-string v1, " - Lco/vine/android/util/ConversationMenuHelper$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method