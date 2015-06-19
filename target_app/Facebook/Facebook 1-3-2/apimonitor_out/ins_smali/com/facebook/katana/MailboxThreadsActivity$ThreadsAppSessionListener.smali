.class  Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "MailboxThreadsActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/MailboxThreadsActivity;
.method private constructor <init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/MailboxThreadsActivity;Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;-><init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
return-void
.end method
.method public onMailboxDeleteThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[J)V
.registers 12
const/4 v3, 0x0
const/4 v2, 0x1
const/4 v4, 0x0
array-length v1, p6
if-ne v1, v2, :cond_23
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->removeDialog(I)V
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#setter for: Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadReqId:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->access$17(Lcom/facebook/katana/MailboxThreadsActivity;Ljava/lang/String;)V
:goto_10
const/16 v1, 0xc8
if-ne p3, v1, :cond_2f
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-static {v1}, Lcom/facebook/katana/MailboxThreadsActivity;->access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/MailboxThreadsAdapter;->uncheckAll()V
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#calls: Lcom/facebook/katana/MailboxThreadsActivity;->showButtonBar(Z)V
invoke-static {v1, v4}, Lcom/facebook/katana/MailboxThreadsActivity;->access$16(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
:goto_22
return-void
:cond_23
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
const/4 v2, 0x2
invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->removeDialog(I)V
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#setter for: Lcom/facebook/katana/MailboxThreadsActivity;->mDeleteThreadsReqId:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->access$18(Lcom/facebook/katana/MailboxThreadsActivity;Ljava/lang/String;)V
goto :goto_10
:cond_2f
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
const v3, 0x7f08008b
invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_22
.end method
.method public onMailboxMarkThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[JZ)V
.registers 13
const/4 v4, 0x0
const/16 v1, 0xc8
if-ne p3, v1, :cond_14
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-static {v1}, Lcom/facebook/katana/MailboxThreadsActivity;->access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/MailboxThreadsAdapter;->uncheckAll()V
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#calls: Lcom/facebook/katana/MailboxThreadsActivity;->showButtonBar(Z)V
invoke-static {v1, v4}, Lcom/facebook/katana/MailboxThreadsActivity;->access$16(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
:goto_13
return-void
:cond_14
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
if-eqz p7, :cond_2f
const v3, 0x7f080095
:goto_1d
invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_13
:cond_2f
const v3, 0x7f080096
goto :goto_1d
.end method
.method public onMailboxSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;I)V
.registers 12
const/4 v4, 0x0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
invoke-static {v1}, Lcom/facebook/katana/MailboxThreadsActivity;->access$13(Lcom/facebook/katana/MailboxThreadsActivity;)I
move-result v1
if-ne p6, v1, :cond_18
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#calls: Lcom/facebook/katana/MailboxThreadsActivity;->showProgress(Z)V
invoke-static {v1, v4}, Lcom/facebook/katana/MailboxThreadsActivity;->access$14(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
const/16 v1, 0xc8
if-ne v1, p3, :cond_19
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
const/4 v2, 0x1
#setter for: Lcom/facebook/katana/MailboxThreadsActivity;->mReceivedGetThreadsResponse:Z
invoke-static {v1, v2}, Lcom/facebook/katana/MailboxThreadsActivity;->access$15(Lcom/facebook/katana/MailboxThreadsActivity;Z)V
:goto_18
:cond_18
return-void
:cond_19
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
const v3, 0x7f08008f
invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxThreadsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_18
.end method
.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
.registers 9
const/16 v0, 0xc8
if-ne p3, v0, :cond_d
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-static {v0}, Lcom/facebook/katana/MailboxThreadsActivity;->access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;
move-result-object v0
invoke-virtual {v0, p6}, Lcom/facebook/katana/MailboxThreadsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
:cond_d
return-void
.end method
.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity$ThreadsAppSessionListener;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;
#getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
invoke-static {v0}, Lcom/facebook/katana/MailboxThreadsActivity;->access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/facebook/katana/MailboxThreadsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
return-void
.end method