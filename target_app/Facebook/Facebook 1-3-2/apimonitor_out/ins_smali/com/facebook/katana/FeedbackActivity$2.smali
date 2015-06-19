.class  Lcom/facebook/katana/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"
.implements Lcom/facebook/katana/FeedbackAdapter$CommentsListener;
.field final synthetic this$0:Lcom/facebook/katana/FeedbackActivity;
.method constructor <init>(Lcom/facebook/katana/FeedbackActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLike(Z)V
.registers 7
if-eqz p1, :cond_1e
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$15(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
invoke-static {v2}, Lcom/facebook/katana/FeedbackActivity;->access$16(Lcom/facebook/katana/FeedbackActivity;)J
move-result-wide v2
iget-object v4, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v4}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->streamAddLike(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$15(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
iget-object v2, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
invoke-static {v2}, Lcom/facebook/katana/FeedbackActivity;->access$16(Lcom/facebook/katana/FeedbackActivity;)J
move-result-wide v2
iget-object v4, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-static {v4}, Lcom/facebook/katana/FeedbackActivity;->access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->streamRemoveLike(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
goto :goto_1d
.end method
.method public onMediaItemClicked(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
#getter for: Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/FeedbackActivity;->access$15(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity$2;->this$0:Lcom/facebook/katana/FeedbackActivity;
invoke-virtual {v0, v1, p1}, Lcom/facebook/katana/binding/AppSession;->openMediaItem(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
return-void
.end method