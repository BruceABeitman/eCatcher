.class  Lco/vine/android/HomeTabActivity$HomeTabSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "HomeTabActivity.java"
.field final synthetic this$0:Lco/vine/android/HomeTabActivity;
.method constructor <init>(Lco/vine/android/HomeTabActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onAbortAllRequestsComplete()V
.registers 2
invoke-super {p0}, Lco/vine/android/client/AppSessionListener;->onAbortAllRequestsComplete()V
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0}, Lco/vine/android/client/AppController;->fetchActivityCounts()Ljava/lang/String;
return-void
.end method
.method public onGetMessageCountComplete(Ljava/lang/String;ILjava/lang/String;I)V
.registers 11
const/4 v5, 0x0
const/16 v3, 0xc8
if-ne p2, v3, :cond_32
iget-object v3, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
invoke-static {v3}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
const-string v3, "pref_mrumc"
invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
const-string v3, "pref_dismissed"
invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_33
if-eq v1, p4, :cond_32
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
const-string v4, "pref_dismissed"
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v3
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v3, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
#setter for: Lco/vine/android/HomeTabActivity;->mMessageCount:I
invoke-static {v3, p4}, Lco/vine/android/HomeTabActivity;->access$102(Lco/vine/android/HomeTabActivity;I)I
iget-object v3, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
#calls: Lco/vine/android/HomeTabActivity;->invalidateMessagesBadge()V
invoke-static {v3}, Lco/vine/android/HomeTabActivity;->access$200(Lco/vine/android/HomeTabActivity;)V
:goto_32
:cond_32
return-void
:cond_33
iget-object v3, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
#setter for: Lco/vine/android/HomeTabActivity;->mMessageCount:I
invoke-static {v3, p4}, Lco/vine/android/HomeTabActivity;->access$102(Lco/vine/android/HomeTabActivity;I)I
iget-object v3, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
#calls: Lco/vine/android/HomeTabActivity;->invalidateMessagesBadge()V
invoke-static {v3}, Lco/vine/android/HomeTabActivity;->access$200(Lco/vine/android/HomeTabActivity;)V
goto :goto_32
.end method
.method public onGetPendingNotificationCountComplete(Ljava/lang/String;ILjava/lang/String;I)V
.registers 6
const/16 v0, 0xc8
if-ne p2, v0, :cond_e
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
#setter for: Lco/vine/android/HomeTabActivity;->mActivityCount:I
invoke-static {v0, p4}, Lco/vine/android/HomeTabActivity;->access$002(Lco/vine/android/HomeTabActivity;I)I
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->invalidateActivityBadge()V
:cond_e
return-void
.end method
.method public onReceiveRTCMessage(Ljava/util/ArrayList;)V
.registers 17
invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:cond_4
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_74
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lco/vine/android/api/VineRTCConversation;
iget-object v0, v8, Lco/vine/android/api/VineRTCConversation;->participants:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_16
:cond_16
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v13
check-cast v13, Lco/vine/android/api/VineRTCParticipant;
iget-wide v11, v13, Lco/vine/android/api/VineRTCParticipant;->lastMessageId:J
const-wide/16 v0, 0x0
cmp-long v0, v11, v0
if-lez v0, :cond_16
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
#getter for: Lco/vine/android/HomeTabActivity;->mLastMessageMap:Landroid/support/v4/util/LongSparseArray;
invoke-static {v0}, Lco/vine/android/HomeTabActivity;->access$500(Lco/vine/android/HomeTabActivity;)Landroid/support/v4/util/LongSparseArray;
move-result-object v0
iget-wide v1, v13, Lco/vine/android/api/VineRTCParticipant;->userId:J
invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/Long;
if-eqz v14, :cond_64
invoke-virtual {v14}, Ljava/lang/Long;->longValue()J
move-result-wide v0
cmp-long v0, v11, v0
if-lez v0, :cond_64
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
const/4 v1, 0x1
const/4 v2, 0x0
iget-wide v3, v8, Lco/vine/android/api/VineRTCConversation;->conversationId:J
const-wide/16 v5, 0x0
const/4 v7, 0x1
invoke-virtual/range {v0 .. v7}, Lco/vine/android/client/AppController;->fetchConversation(IZJJZ)Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v0
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0}, Lco/vine/android/client/AppController;->fetchActivityCounts()Ljava/lang/String;
goto :goto_16
:cond_64
iget-object v0, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
#getter for: Lco/vine/android/HomeTabActivity;->mLastMessageMap:Landroid/support/v4/util/LongSparseArray;
invoke-static {v0}, Lco/vine/android/HomeTabActivity;->access$500(Lco/vine/android/HomeTabActivity;)Landroid/support/v4/util/LongSparseArray;
move-result-object v0
iget-wide v1, v13, Lco/vine/android/api/VineRTCParticipant;->userId:J
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
goto :goto_16
:cond_74
return-void
.end method
.method public onVerifyEmailComplete(Ljava/lang/String;ILjava/lang/String;)V
.registers 8
const/16 v1, 0xc8
if-ne p2, v1, :cond_1e
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
const-class v2, Lco/vine/android/SettingsActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v1, Lco/vine/android/HomeTabActivity;->ACTION_VERIFICATION_COMPLETE:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Lco/vine/android/HomeTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
:goto_18
iget-object v1, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
invoke-virtual {v1}, Lco/vine/android/HomeTabActivity;->dismissDialog()V
return-void
:cond_1e
iget-object v1, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
invoke-virtual {v1}, Lco/vine/android/HomeTabActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
if-eqz p3, :cond_2a
:goto_26
invoke-static {v1, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto :goto_18
:cond_2a
iget-object v2, p0, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;->this$0:Lco/vine/android/HomeTabActivity;
const v3, 0x7f0e0105
invoke-virtual {v2, v3}, Lco/vine/android/HomeTabActivity;->getString(I)Ljava/lang/String;
move-result-object p3
goto :goto_26
.end method