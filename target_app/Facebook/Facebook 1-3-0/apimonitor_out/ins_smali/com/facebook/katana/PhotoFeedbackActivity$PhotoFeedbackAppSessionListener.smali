.class  Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PhotoFeedbackActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
.method private constructor <init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/PhotoFeedbackActivity;Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;-><init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V
return-void
.end method
.method public onDownloadPhotoThumbnailComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
invoke-static {v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$10(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
const v4, 0x7f0b0024
invoke-virtual {v3, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
const/16 v3, 0xc8
if-ne p3, v3, :cond_41
iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
iget-object v4, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
invoke-static {v4, p7}, Lcom/facebook/katana/service/api/FacebookPhoto;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v4
#setter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
invoke-static {v3, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$13(Lcom/facebook/katana/PhotoFeedbackActivity;Lcom/facebook/katana/service/api/FacebookPhoto;)V
iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
invoke-static {v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$10(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getImageBytes()[B
move-result-object v1
if-eqz v1, :cond_10
const/4 v3, 0x0
array-length v4, v1
invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_10
:cond_41
const v3, 0x7f0200bc
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_10
.end method
.method public onPhotoAddCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookPhotoComment;)V
.registers 14
const/4 v5, 0x1
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
invoke-static {v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$10(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_12
:goto_11
return-void
:cond_12
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
invoke-virtual {v2, v5}, Lcom/facebook/katana/PhotoFeedbackActivity;->removeDialog(I)V
const/16 v2, 0xc8
if-ne p3, v2, :cond_34
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
const v3, 0x7f0b0029
invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
invoke-static {v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$12(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
move-result-object v2
invoke-virtual {v2, p7}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->addComment(Lcom/facebook/katana/service/api/FacebookPhotoComment;)V
goto :goto_11
:cond_34
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
const v4, 0x7f0800bc
invoke-virtual {v3, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
goto :goto_11
.end method
.method public onPhotoGetCommentsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;Z)V
.registers 13
const/4 v3, 0x0
iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
invoke-static {v1}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$10(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_12
:goto_11
:cond_11
return-void
:cond_12
iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#calls: Lcom/facebook/katana/PhotoFeedbackActivity;->showProgress(Z)V
invoke-static {v1, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$11(Lcom/facebook/katana/PhotoFeedbackActivity;Z)V
const/16 v1, 0xc8
if-ne p3, v1, :cond_33
iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
invoke-static {v1}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$12(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
move-result-object v1
invoke-virtual {v1, p7}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->setComments(Ljava/util/List;)V
if-eqz p8, :cond_11
iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
const v2, 0x7f0b0084
invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_11
:cond_33
iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
const v3, 0x7f0800c0
invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
const/4 v2, 0x1
invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_11
.end method
.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
.registers 9
const/16 v0, 0xc8
if-ne p3, v0, :cond_d
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$12(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p6}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
:cond_d
return-void
.end method
.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->this$0:Lcom/facebook/katana/PhotoFeedbackActivity;
#getter for: Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
invoke-static {v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->access$12(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
return-void
.end method