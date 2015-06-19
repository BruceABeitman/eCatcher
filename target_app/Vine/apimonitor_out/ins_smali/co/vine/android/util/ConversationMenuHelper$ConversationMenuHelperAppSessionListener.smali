.class public Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ConversationMenuHelper.java"
.field final synthetic this$0:Lco/vine/android/util/ConversationMenuHelper;
.method public constructor <init>(Lco/vine/android/util/ConversationMenuHelper;)V
.registers 2
iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onGetConversationRowIdComplete(JJLjava/lang/String;Z)V
.registers 16
const/4 v7, 0x0
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartUserId:J
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$600(Lco/vine/android/util/ConversationMenuHelper;)J
move-result-wide v0
cmp-long v0, p1, v0
if-eqz v0, :cond_15
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartSearchUserId:J
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$700(Lco/vine/android/util/ConversationMenuHelper;)J
move-result-wide v0
cmp-long v0, p1, v0
if-nez v0, :cond_4b
:cond_15
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartSearchUserId:J
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$700(Lco/vine/android/util/ConversationMenuHelper;)J
move-result-wide v0
cmp-long v0, p1, v0
if-nez v0, :cond_24
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
invoke-virtual {v0, v7}, Lco/vine/android/util/ConversationMenuHelper;->toggleContactSearch(Z)V
:cond_24
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
const-wide/16 v1, -0x1
#setter for: Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartUserId:J
invoke-static {v0, v1, v2}, Lco/vine/android/util/ConversationMenuHelper;->access$602(Lco/vine/android/util/ConversationMenuHelper;J)J
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$800(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/client/AppController;
move-result-object v0
invoke-virtual {v0, p3, p4}, Lco/vine/android/client/AppController;->clearUnreadMessageCount(J)V
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$300(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/BaseControllerActionBarActivity;
move-result-object v8
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$300(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/BaseControllerActionBarActivity;
move-result-object v0
move-wide v1, p3
move-object v3, p5
move-wide v4, p1
move v6, p6
invoke-static/range {v0 .. v7}, Lco/vine/android/ConversationActivity;->getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v8, v0}, Lco/vine/android/BaseControllerActionBarActivity;->startActivity(Landroid/content/Intent;)V
:cond_4b
return-void
.end method
.method public onGetFriendsTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 8
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/util/ConversationMenuHelper;->showSearchProgressBar(Z)V
if-eqz p5, :cond_15
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mIsSearching:Z
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$900(Lco/vine/android/util/ConversationMenuHelper;)Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#calls: Lco/vine/android/util/ConversationMenuHelper;->displaySearchResults(Ljava/util/ArrayList;)V
invoke-static {v0, p5}, Lco/vine/android/util/ConversationMenuHelper;->access$1100(Lco/vine/android/util/ConversationMenuHelper;Ljava/util/ArrayList;)V
:cond_15
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mIsSearching:Z
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$900(Lco/vine/android/util/ConversationMenuHelper;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$1000(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/FriendSearchAdapter;
move-result-object v0
if-eqz v0, :cond_19
iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;->this$0:Lco/vine/android/util/ConversationMenuHelper;
#getter for: Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;
invoke-static {v0}, Lco/vine/android/util/ConversationMenuHelper;->access$1000(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/FriendSearchAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lco/vine/android/FriendSearchAdapter;->setUserImages(Ljava/util/HashMap;)V
:cond_19
return-void
.end method