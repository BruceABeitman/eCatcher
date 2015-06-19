.class  Lcom/facebook/katana/FeedbackActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FeedbackActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/FeedbackActivity;
.method constructor <init>(Lcom/facebook/katana/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 9
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p7, p6}, Lcom/facebook/katana/FeedbackAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
return-void
.end method
.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/FeedbackAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
return-void
.end method
.method public onStreamAddCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookPost$Comment;)V
.registers 13
const/4 v3, 0x0
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v1}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_39
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/facebook/katana/FeedbackActivity;->removeDialog(I)V
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#setter for: Lcom/facebook/katana/FeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/facebook/katana/FeedbackActivity;->access$13(Lcom/facebook/katana/FeedbackActivity;Ljava/lang/String;)V
#calls: Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
invoke-static {p3, p5}, Lcom/facebook/katana/FeedbackActivity;->access$12(ILjava/lang/Exception;)Z
move-result v1
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v2, 0x7f0b0029
invoke-virtual {v1, v2}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v1}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/FeedbackAdapter;->addCommentComplete()V
:cond_39
:goto_39
return-void
:cond_3a
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v3, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v4, 0x7f08012b
invoke-virtual {v3, v4}, Lcom/facebook/katana/FeedbackActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_39
.end method
.method public onStreamAddLikeComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
.registers 11
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/katana/FeedbackAdapter;->addLikeComplete(I)V
#calls: Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
invoke-static {p3, p5}, Lcom/facebook/katana/FeedbackActivity;->access$12(ILjava/lang/Exception;)Z
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v3, 0x7f08012c
invoke-virtual {v2, v3}, Lcom/facebook/katana/FeedbackActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_38
return-void
.end method
.method public onStreamGetCommentsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
.registers 11
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v1, 0x7f0b00b2
invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/katana/FeedbackAdapter;->requestCommentsComplete(I)V
#calls: Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
invoke-static {p3, p5}, Lcom/facebook/katana/FeedbackActivity;->access$12(ILjava/lang/Exception;)Z
move-result v0
if-nez v0, :cond_46
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v3, 0x7f080133
invoke-virtual {v2, v3}, Lcom/facebook/katana/FeedbackActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_46
return-void
.end method
.method public onStreamRemoveCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
.registers 11
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->removeDialog(I)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const/4 v1, 0x0
#setter for: Lcom/facebook/katana/FeedbackActivity;->mRemoveCommentReqId:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->access$14(Lcom/facebook/katana/FeedbackActivity;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/FeedbackAdapter;->removeCommentComplete()V
#calls: Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
invoke-static {p3, p5}, Lcom/facebook/katana/FeedbackActivity;->access$12(ILjava/lang/Exception;)Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v3, 0x7f08014a
invoke-virtual {v2, v3}, Lcom/facebook/katana/FeedbackActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_44
return-void
.end method
.method public onStreamRemoveLikeComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
.registers 11
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/katana/FeedbackAdapter;->removeLikeComplete(I)V
#calls: Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
invoke-static {p3, p5}, Lcom/facebook/katana/FeedbackActivity;->access$12(ILjava/lang/Exception;)Z
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
const v3, 0x7f08014b
invoke-virtual {v2, v3}, Lcom/facebook/katana/FeedbackActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_38
return-void
.end method
.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
.registers 9
#calls: Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
invoke-static {p3, p5}, Lcom/facebook/katana/FeedbackActivity;->access$12(ILjava/lang/Exception;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p6}, Lcom/facebook/katana/FeedbackAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
:cond_f
return-void
.end method
.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/facebook/katana/FeedbackAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
return-void
.end method
.method public onUsersGetInfoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/service/api/FacebookUser;Z)V
.registers 12
#calls: Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
invoke-static {p3, p5}, Lcom/facebook/katana/FeedbackActivity;->access$12(ILjava/lang/Exception;)Z
move-result v0
if-eqz v0, :cond_15
if-eqz p8, :cond_15
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$1;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
move-result-object v0
invoke-virtual {p8}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p6, p7, v1}, Lcom/facebook/katana/FeedbackAdapter;->updateLikeUserName(JLjava/lang/String;)V
:cond_15
return-void
.end method