.class public Lco/vine/android/InboxFragment$ConversationMenuSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "InboxFragment.java"
.field final synthetic this$0:Lco/vine/android/InboxFragment;
.method public constructor <init>(Lco/vine/android/InboxFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onGetConversationRowIdComplete(JJLjava/lang/String;Z)V
.registers 16
iget-object v0, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
iget-wide v0, v0, Lco/vine/android/InboxFragment;->mWaitingToStartId:J
cmp-long v0, p1, v0
if-nez v0, :cond_29
iget-object v0, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
const-wide/16 v1, -0x1
iput-wide v1, v0, Lco/vine/android/InboxFragment;->mWaitingToStartId:J
iget-object v0, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0, p3, p4}, Lco/vine/android/client/AppController;->clearUnreadMessageCount(J)V
iget-object v8, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v7, 0x0
move-wide v1, p3
move-object v3, p5
move-wide v4, p1
move v6, p6
invoke-static/range {v0 .. v7}, Lco/vine/android/ConversationActivity;->getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v8, v0}, Lco/vine/android/InboxFragment;->startActivity(Landroid/content/Intent;)V
:cond_29
return-void
.end method
.method public onGetMessageInboxComplete(Ljava/lang/String;ILjava/lang/String;I)V
.registers 9
const/4 v3, 0x3
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v1, p1}, Lco/vine/android/InboxFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_53
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
const/4 v2, 0x0
#setter for: Lco/vine/android/InboxFragment;->mLoadingMore:Z
invoke-static {v1, v2}, Lco/vine/android/InboxFragment;->access$1402(Lco/vine/android/InboxFragment;Z)Z
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {v1, v2}, Lco/vine/android/InboxFragment;->hideProgress(I)V
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v1, p4}, Lco/vine/android/InboxFragment;->onGetMessageInboxComplete(I)V
packed-switch p2, :pswitch_data_54
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v1, v3}, Lco/vine/android/InboxFragment;->hideProgress(I)V
iget v1, v0, Lco/vine/android/PendingRequest;->fetchType:I
if-eq v1, v3, :cond_33
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v1}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0e00cb
invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
:cond_33
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " - "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
:cond_53
:pswitch_53
return-void
:pswitch_data_54
.packed-switch 0xc8
:pswitch_53
.end packed-switch
.end method
.method public onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;IIJ)V
.registers 14
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v1, p2}, Lco/vine/android/InboxFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {v1, v2}, Lco/vine/android/InboxFragment;->hideProgress(I)V
packed-switch p3, :pswitch_data_30
iget-object v1, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
const/4 v2, 0x3
invoke-virtual {v1, v2}, Lco/vine/android/InboxFragment;->hideProgress(I)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error:  "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
:pswitch_2e
:cond_2e
return-void
nop
:pswitch_data_30
.packed-switch 0xc8
:pswitch_2e
.end packed-switch
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v0, p1}, Lco/vine/android/InboxFragment;->onPhotoImageLoaded(Ljava/util/HashMap;)V
return-void
.end method