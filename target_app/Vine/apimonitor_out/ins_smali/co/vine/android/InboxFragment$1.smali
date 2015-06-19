.class  Lco/vine/android/InboxFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "InboxFragment.java"
.field final synthetic this$0:Lco/vine/android/InboxFragment;
.method constructor <init>(Lco/vine/android/InboxFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InboxFragment$1;->this$0:Lco/vine/android/InboxFragment;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
iget-object v1, p0, Lco/vine/android/InboxFragment$1;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v1}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "profile_background"
sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
iget-object v1, p0, Lco/vine/android/InboxFragment$1;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v1}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
check-cast v1, Lco/vine/android/BaseActionBarActivity;
invoke-virtual {v1}, Lco/vine/android/BaseActionBarActivity;->getSlidingMenuHelper()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
move-result-object v1
check-cast v1, Lco/vine/android/util/ConversationMenuHelper;
invoke-virtual {v1, v0}, Lco/vine/android/util/ConversationMenuHelper;->setPersonalizedColor(I)V
return-void
.end method