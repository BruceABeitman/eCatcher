.class  Lco/vine/android/HomeTabActivity$4;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/HomeTabActivity;
.method constructor <init>(Lco/vine/android/HomeTabActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/HomeTabActivity$4;->this$0:Lco/vine/android/HomeTabActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/HomeTabActivity$4;->this$0:Lco/vine/android/HomeTabActivity;
invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->getConversationSlidingMenuHelper()Lco/vine/android/util/ConversationMenuHelper;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/util/ConversationMenuHelper;->showVmOnboarding()V
iget-object v0, p0, Lco/vine/android/HomeTabActivity$4;->this$0:Lco/vine/android/HomeTabActivity;
invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V
return-void
.end method